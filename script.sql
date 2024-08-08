CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;
CREATE TABLE item (
                      bar_code VARCHAR(50) PRIMARY KEY,
                      description VARCHAR(150) NOT NULL ,
                      price DECIMAL(8,2) NOT NULL,
                      stock INT NOT NULL);