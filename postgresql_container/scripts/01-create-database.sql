CREATE USER DB_USER with encrypted password 'DB_PASSWORD';
CREATE DATABASE DB_NAME;
GRANT ALL PRIVILEGES ON DATABASE DB_NAME TO DB_USER;
\c DB_NAME

CREATE TABLE product_type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(180) NOT NULL,
    description VARCHAR(500)
);

CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(180) NOT NULL,
    description VARCHAR(500),
    product_id BIGINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product_type (id)
);

CREATE TABLE inventory (
    id SERIAL PRIMARY KEY,
    name VARCHAR(180) NOT NULL,
    description VARCHAR(500),
    product_id BIGINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product_type (id)   
);