FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=secret
ENV MYSQL_DATABASE=practica4_ecommerce

VOLUME ["/var/lib/mysql"]

COPY 01_database.sql /docker-entrypoint-initdb.d/01_database.sql
COPY 02_tables.sql   /docker-entrypoint-initdb.d/02_tables.sql
COPY 03_data.sql     /docker-entrypoint-initdb.d/03_data.sql

EXPOSE 3306
