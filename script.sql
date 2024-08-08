CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;

CREATE TABLE customer(
                         id VARCHAR(8) PRIMARY KEY ,
                         name VARCHAR(100) NOT NULL ,
                         address VARCHAR(500) NOT NULL
);