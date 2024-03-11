-- Verifica se o banco de dados existe antes de tentar criar
CREATE DATABASE IF NOT EXISTS bd_odoo;

-- Verifica se o usuário existe antes de tentar criar
DO $$ 
BEGIN 
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_user WHERE usename = 'odoo_admin') THEN
        CREATE USER odoo_admin WITH PASSWORD 'odoo_admin';
    END IF;
END $$;

-- Atribui permissões ao usuário para o banco de dados
GRANT ALL PRIVILEGES ON DATABASE bd_odoo TO odoo_admin;
