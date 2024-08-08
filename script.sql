CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;

CREATE TABLE order(
    id VARCHAR(10) Primary Key,
    date DATE NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    username VARCHAR(100) NOT NULL ,
    CONSTRAINT fk_customer FOREIGN KEY(customer_id) REFERENCES customer(id),
    CONSTRAINT fk_user FOREIGN KEY(username) REFERENCES user(username)
);
