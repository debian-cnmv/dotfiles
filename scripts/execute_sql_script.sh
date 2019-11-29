#!/bin/sh

./create_sql_script.sh > script.sql
mysql -u root -p < script.sql
