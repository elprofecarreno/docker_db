-- CREATE SCHEMA
GO
CREATE TABLE REGION (
    codigo int PRIMARY KEY IDENTITY(1,1),
    NOMBRE VARCHAR(80) NOT NULL,
    DESCRIPCION VARCHAR(300) 
);
GO