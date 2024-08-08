CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;

CREATE TABLE customer
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE "order"
(
    id          VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) REFERENCES customer (id),
    username    VARCHAR(100) REFERENCES user (username),
    date        DATE NOT NULL
);
