-- Cria o banco de dados bd_odoo (se ainda não existir)
CREATE DATABASE IF bd_odoodi

-- Cria o usuário odoo_admin (se ainda não existir) e define a senha
CREATE USER IF odoo_admin WITH PASSWORD 'odoo_admin'

-- Atribui permissões ao usuário para o banco de dados bd_odoo
GRANT ALL PRIVILEGES ON DATABASE bd_odoo TO odoo_admin