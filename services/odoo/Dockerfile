# Use a imagem oficial do Odoo 15 como a base
FROM odoo:15

# Metadata
LABEL maintainer="Wilk Printes"

# Adicione arquivos de configuração, se necessário
ADD ./odoo.conf /etc/odoo/odoo.conf
ADD ./entrypoint.sh /entrypoint.sh
# Exponha a porta, se necessário (geralmente a porta 8069 é exposta pela imagem oficial do Odoo)


# O comando CMD para executar o Odoo é definido na imagem oficial do Odoo
ENTRYPOINT ["/entrypoint.sh"]