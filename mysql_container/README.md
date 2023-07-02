# DOCKER MYSQL

Dockerfile for create MYSQL SERVER 8.0.

### ADD SCRIPT FOR EXECUTION IN DATABASE

For execution scripts when init server, add your file in scripts folder. Inside folder exist example scripts 01-create-db.sql and 02-insert_data.sql.

## CREATE IMAGE

For create image from Dockerfile, executing following command:

```shell
docker build -t mysql-division-db:1.0.0 .
```

**NOTE:**

- mysql-division-db is the name image of builder docker.
- 1.0.0 is tag definition (generic use lastest).

### CREATE CONTAINER

For create container from image, executing following command:

```shell
docker run -d -p 9090:3306 --env-file .env --name mysql-division-container  mysql-division-db:1.0.0
```

![docker-mssql-run.gif](../docs/img/docker-mssql-run.gif)

**NOTE:**

- 9090:3306 the first number is port publicate for local net and second number is default port database MICROSOFT SQL SERVER.
- mysql-division-container is the container name.

### STOP CONTAINER

For stop container, executing following command:

```shell
docker stop mysql-division-container
```


### REMOVE CONTAINER

For remove container, executing following command:

```shell
docker rm mysql-division-container
```

**NOTE:**

- The status of the container should be "stopped"


### LOGS CONTAINER

For view logs, executing following command:

```shell
docker logs -f mysql-division-container
```


## VIDEOS.

[Docker MySQL Container](https://youtu.be/W2xWEt_r7nw)

[Docker Mysql Container UTF-8 + File .env](https://www.youtube.com/watch?v=K62u79SW7io)