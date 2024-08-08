CREATE DATABASE dep12_join_example_2;

USE dep12_join_example_2;

CREATE TABLE customer(
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE item
(
    bar_code    VARCHAR(50) PRIMARY KEY,
    description VARCHAR(150)  NOT NULL,
    stock       INT           NOT NULL,
    price       DECIMAL(9, 2) NOT NULL
);
