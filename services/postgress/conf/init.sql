-- Verifica se o banco de dados existe antes de tentar criar
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'bd_odoo') THEN
        CREATE DATABASE bd_odoo;
    ELSE
        RAISE NOTICE 'O banco de dados bd_odoo já existe, pulando a criação.';
    END IF;
END $$;

-- Verifica se o usuário existe antes de tentar criar
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_catalog.pg_user WHERE usename = 'odoo_admin') THEN
        CREATE USER odoo_admin WITH PASSWORD 'odoo_admin';
    ELSE
        RAISE NOTICE 'O usuário odoo_admin já existe, pulando a criação.';
    END IF;
END $$;

-- Atribui permissões ao usuário para o banco de dados
DO $$
BEGIN
    EXECUTE 'GRANT ALL PRIVILEGES ON DATABASE bd_odoo TO odoo_admin';
END $$;
