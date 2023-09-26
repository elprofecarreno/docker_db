# DOCKER POSTGRESQL

Dockerfile for create POSTGRESQL.

### ADD SCRIPT FOR EXECUTION IN DATABASE

For execution scripts when init server, add your file in scripts folder. Inside folder exist example scripts 01-create-database.sql by create user and permissions.

### CREATE IMAGE

For create image from Dockerfile, executing following command:

```shell
docker build -t postgres-db:1.0.0 .
```

**NOTE:**

- postgres-db is the name image of builder docker.
- 1.0.0 is tag definition (generic use lastest).

### CREATE CONTAINER

For create container from image, executing following command:

```shell
docker run -d -p 9098:5432 --name postgres-container  postgres-db:1.0.0
```

**NOTE:**

- 9098:5432 the first number is port publicate for local net and second number is default port database POSTGRESQL DATABASE SERVER.
- postgres-container is the container name.


### STOP CONTAINER

For stop container, executing following command:

```shell
docker stop postgres-container
```


### REMOVE CONTAINER

For remove container, executing following command:

```shell
docker rm postgres-container
```

**NOTE:**

- The status of the container should be "stopped"


### LOGS CONTAINER

For view logs, executing following command:

```shell
docker logs -f postgres-container
```

### CONNECTION DATABASE (DEFINED IN DOCKERFILE)

```
USER: system_user_db
PASSWORD: 1234567890
DATABASE: division_geografica
PORT: 9098
```

```
USER: postgres
PASSWORD: 0987654321
DATABASE: postgres
PORT: 9098
```