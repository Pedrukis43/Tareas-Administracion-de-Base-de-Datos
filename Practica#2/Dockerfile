FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=narvaez-flores

VOLUME ["/var/lib/mysql"]

COPY Database.sql  /docker-entrypoint-initdb.d/01_create_database.sql
COPY Tables.sql     /docker-entrypoint-initdb.d/02_create_tables.sql
COPY Relations.sql  /docker-entrypoint-initdb.d/03_create_relations.sql
COPY Data.sql       /docker-entrypoint-initdb.d/04_insert_data.sql

EXPOSE 3306
