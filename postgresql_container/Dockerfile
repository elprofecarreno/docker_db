# POSTGRESQL DATABASE DOCKER IMAGE
FROM postgres:13.11-alpine3.18
# DEFINED LENGUAGE OS
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
# DEFINED DATABASE RNV
ENV DB_USER system_user_db
ENV DB_PASSWORD 1234567890
ENV DB_NAME division_geografica
ENV POSTGRES_PASSWORD  0987654321
# COPY SCRIPT SQL FILES
COPY ./scripts/ /docker-entrypoint-initdb.d/
# DATABASE SCRIPT OVERRIDE
RUN sed -i "s/DB_USER/${DB_USER}/g" /docker-entrypoint-initdb.d/01-create-database.sql
RUN sed -i "s/DB_PASSWORD/${DB_PASSWORD}/g" /docker-entrypoint-initdb.d/01-create-database.sql
RUN sed -i "s/DB_NAME/${DB_NAME}/g" /docker-entrypoint-initdb.d/01-create-database.sql