FROM mysql:5.7

ENV MYSQL_DATABASE=users \
    MYSQL_ROOT_PASSWORD=root \
    MYSQL_ROOT_HOST='%'

ADD ./support/db-init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
