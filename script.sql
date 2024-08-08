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

CREATE TABLE order_item(
                           price DECIMAL NOT NULL ,
                           qty INT NOT NULL ,
                           bar_code VARCHAR(50) NOT NULL ,
                           order_id VARCHAR(10) NOT NULL ,
                           CONSTRAINT fk_bar_code FOREIGN KEY (bar_code) REFERENCES item,
                           CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES "order",
                           CONSTRAINT pk_order_item PRIMARY KEY (bar_code,order_id)
);