#!/usr/bin/env sh
sudo su postgres -c "psql -d postgres -w -c \"DROP DATABASE rasmbook_production_db\""
sudo su postgres -c "psql -w -c \"DROP ROLE rasmbook_production_user\""
sudo su postgres -c "psql -w -c \"CREATE ROLE rasmbook_production_user PASSWORD 'aed3c1711a501aac502ad78db3edeed3' CREATEDB INHERIT LOGIN;\""
sudo su postgres -c "psql -d postgres -w -c \"CREATE DATABASE rasmbook_production_db OWNER rasmbook_production_user;\""
