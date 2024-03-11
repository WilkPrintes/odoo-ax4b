#!/bin/bash
set -e

# Função para esperar o servidor PostgreSQL estar pronto
wait_for_db() {
    host="$1"
    port="$2"
    
    until PGPASSWORD="$POSTGRES_PASSWORD" psql -h "$host" -p "$port" -U "$POSTGRES_USER" -c '\q'; do
        >&2 echo "Servidor PostgreSQL não está pronto para aceitar conexões - esperando..."
        sleep 1
    done
    
    >&2 echo "Servidor PostgreSQL está pronto para aceitar conexões"
}

# Espera até que o servidor PostgreSQL esteja pronto para aceitar conexões
wait_for_db db 5432

# Atualiza todos os módulos do Odoo
echo "Atualizando todos os módulos do Odoo..."
odoo -c /etc/odoo/odoo.conf -u all

# Inicia o Odoo
exec "$@"
