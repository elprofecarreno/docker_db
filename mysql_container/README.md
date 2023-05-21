# DOCKER MYSQL

Dockerfile para crear un contenedor con mysql, el cual ejecutará los archivos que se encuentra en la carpeta scripts una vez iniciado el contenedor.

Para crear la imagen ejecutaremos el siguiente comando.

```shell
docker build -t mysql-division-db:1.0.0 .
```

```shell
docker run -d -p 9090:3306 --name mysql-division-container  mysql-division-db:1.0.0
```

## VIDEOS.

[Docker MySQL Container](https://youtu.be/W2xWEt_r7nw)