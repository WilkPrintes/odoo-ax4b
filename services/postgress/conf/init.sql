-- Verifica se o banco de dados existe antes de tentar criar
CREATE DATABASE IF NOT EXISTS bd_odoo;

-- Verifica se o usuário existe antes de tentar criar
CREATE USER IF NOT EXISTS odoo_admin WITH PASSWORD odoo_admin;

-- Atribui permissões ao usuário para o banco de dados
GRANT ALL PRIVILEGES ON DATABASE bd_odoo TO odoo_admin;
