CREATE
DATABASE dep12_join_example_2;

USE
dep12_join_example_2;

CREATE TABLE customer
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE item
(
    bar_code    VARCHAR(50) PRIMARY KEY,
    description VARCHAR(150)  NOT NULL,
    stock       INT           NOT NULL,
    price       DECIMAL(9, 2) NOT NULL
);

CREATE TABLE `user`
(
    username VARCHAR(100) PRIMARY KEY,
    name     VARCHAR(100) NOT NULL,
    password VARCHAR(300) NOT NULL
);

INSERT INTO customer (id, name) VALUES ('C001', 'Kasun Sampath');
INSERT INTO customer (id, name) VALUES ('C002', 'Nuwan Praddep');
INSERT INTO customer (id, name) VALUES ('C003', 'Ruwan Ramidu');
INSERT INTO customer (id, name) VALUES ('C004', 'Pasan Chamara');
INSERT INTO customer (id, name) VALUES ('C005', 'Buddika Silva');
INSERT INTO customer (id, name) VALUES ('C006', 'Chaminda Vass');
INSERT INTO customer (id, name) VALUES ('C007', 'Bathiya Santhush');
INSERT INTO customer (id, name) VALUES ('C008', 'Chamara Silva');
INSERT INTO customer (id, name) VALUES ('C009', 'Ajantha Mendis');
INSERT INTO customer (id, name) VALUES ('C010', 'Sura Boy');
