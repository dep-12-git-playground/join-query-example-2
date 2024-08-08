CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;


CREATE TABLE order_detail(
                             order_id VARCHAR(10),
                             bar_code VARCHAR(50),
                             price DECIMAL(9,2) NOT NULL ,
                             qty INT NOT NULL ,
                             CONSTRAINT pk_order_detail PRIMARY KEY (order_id,bar_code),
                             CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES "order"(order_id),
                             CONSTRAINT fk_item FOREIGN KEY (bar_code) REFERENCES item(bar_code)
);



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