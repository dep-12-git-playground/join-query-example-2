CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;


CREATE TABLE customer
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE "user"
(
    username VARCHAR(100) PRIMARY KEY,
    name     VARCHAR(200) NOT NULL,
    password VARCHAR(300) NOT NULL
);