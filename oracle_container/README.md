# DOCKER ORACLE 11G XE

Dockerfile for create ORACLE SERVER 11G XE.

### ADD SCRIPT FOR EXECUTION IN DATABASE

For execution scripts when init server, add your file in scripts folder. Inside folder exist example scripts 01-update-system-user.sql.

### CREATE IMAGE

For create image from Dockerfile, executing following command:

```shell
docker build -t oracle-db:1.0.0 .
```

**NOTE:**

- oracle-db is the name image of builder docker.
- 1.0.0 is tag definition (generic use lastest).

### CREATE CONTAINER

For create container from image, executing following command:

```shell
docker run -d -p 9098:1521 --name oracle-container  oracle-db:1.0.0
```

**NOTE:**

- 9098:1521 the first number is port publicate for local net and second number is default port database ORACLE DATABASE SERVER.
- oracle-container is the container name.


### STOP CONTAINER

For stop container, executing following command:

```shell
docker stop oracle-container
```


### REMOVE CONTAINER

For remove container, executing following command:

```shell
docker rm oracle-container
```

**NOTE:**

- The status of the container should be "stopped"


### LOGS CONTAINER

For view logs, executing following command:

```shell
docker logs -f oracle-container
```

### CONNECTION DATABASE

```
USER: system
PASSWORD: system # PASSWORD FOR USER system IN ORACLE_PASSWORD ENV
PORT: 9098
SID: xe
```