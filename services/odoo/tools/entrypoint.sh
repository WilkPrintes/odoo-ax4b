#!/bin/bash

until pg_isready -h $PGHOST -U $PGUSER; do
  echo 'Waiting for the database...'
  sleep 1
done

echo "Updating all Odoo modules..."
odoo-bin -d $PGDATABASE -u all

exec "$@"
