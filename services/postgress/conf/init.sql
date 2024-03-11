-- Criação do banco de dados somente se não existir
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'bd_odoo') THEN
        CREATE DATABASE bd_odoo;
    END IF;
END $$;

-- Criação do usuário somente se não existir
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_catalog.pg_user WHERE usename = 'odoo_admin') THEN
        CREATE USER odoo_admin WITH PASSWORD 'odoo_admin';
    END IF;
END $$;

-- Atribuição de permissões
GRANT ALL PRIVILEGES ON DATABASE bd_odoo TO odoo_admin;
