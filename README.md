# Desafio Técnico AX4B - Projeto Odoo Docker Compose

Bem-vindo ao Desafio Técnico AX4B! Este repositório contém um arquivo Docker Compose para configurar um ambiente de desenvolvimento Odoo com PostgreSQL, juntamente com os arquivos essenciais Dockerfile, entrypoint e odoo.conf.

## Pré-requisitos

- Docker
- Docker Compose

Certifique-se de ter o Docker e o Docker Compose instalados antes de continuar.

## Estrutura do Projeto

- `docker-compose.yml`: Arquivo de configuração principal para Docker Compose.
- `Dockerfile`: Arquivo para construir a imagem personalizada do Odoo.
- `entrypoint`: Script de entrada para configurar o ambiente do Odoo.
- `odoo.conf`: Configurações específicas do Odoo.

## Instruções de Uso

1. Clone este repositório para o seu ambiente local:

    ```bash
    git clone https://github.com/WilkPrintes/odoo-ax4b
    cd odoo-ax4b
    ```

2. Execute o Docker Compose para iniciar os serviços PostgreSQL e Odoo:

    ```bash
    docker-compose up -d
    ```

3. Acesse o Odoo em seu navegador em [http://localhost:8069](http://localhost:8069)

4. Use as credenciais padrão para o banco de dados PostgreSQL:

    - **Usuário:** odoo_admin
    - **Senha:** odoo_admin

## Desafio

Este projeto faz parte do desafio técnico proposto pela AX4B. Explore o código, identifique oportunidades de melhoria e sinta-se à vontade para contribuir com melhorias.

## Personalização

- **Portas:** A porta padrão para o Odoo é 8069. Se necessário, você pode modificar a porta no arquivo `docker-compose.yml`.
- **Volumes:** Os dados do PostgreSQL e do Odoo são armazenados em volumes Docker. Certifique-se de fazer backup ou personalizar conforme necessário.

## Configuração Adicional

- **Dockerfile:** Utilizado para construir a imagem personalizada do Odoo.
- **entrypoint:** Script executado no início do contêiner para configurar o ambiente.
- **odoo.conf:** Arquivo de configurações específicas do Odoo.

## Contribuição

Sinta-se à vontade para contribuir para este projeto. Se encontrar problemas ou tiver sugestões, abra uma [issue](https://github.com/seu-usuario/seu-repositorio/issues).

## Licença

Este projeto é distribuído sob a licença [MIT](LICENSE).
