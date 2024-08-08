CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;


CREATE TABLE customer
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO customer (id, name) VALUES ('C001', 'Kasun Sampath');
INSERT INTO customer (id, name) VALUES ('C002', 'Nuwan Praddep');
INSERT INTO customer (id, name) VALUES ('C003', 'Ruwan Ramidu');
INSERT INTO customer (id, name) VALUES ('C004', 'Pasan Chamara');
INSERT INTO customer (id, name) VALUES ('C005', 'Buddika Silva');
INSERT INTO customer (id, name) VALUES ('C006', 'Chaminda Vass');


CREATE TABLE "user"
(
    username VARCHAR(100) PRIMARY KEY,
    name     VARCHAR(200) NOT NULL,
    password VARCHAR(300) NOT NULL
);