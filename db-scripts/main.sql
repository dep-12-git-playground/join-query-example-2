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
    description VARCHAR(150)   NOT NULL,
    stock       INT            NOT NULL,
    price       DECIMAL(10, 2) NOT NULL
);

CREATE TABLE user
(
    username VARCHAR(100) PRIMARY KEY,
    name     VARCHAR(100) NOT NULL,
    password VARCHAR(300) NOT NULL
);

CREATE TABLE `order`
(
    id          VARCHAR(10) Primary Key,
    date        DATE         NOT NULL,
    customer_id VARCHAR(10)  NOT NULL,
    username    VARCHAR(100) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer (id),
    CONSTRAINT fk_user FOREIGN KEY (username) REFERENCES user (username)
);

CREATE TABLE order_detail
(
    order_id  VARCHAR(10)    NOT NULL,
    item_code VARCHAR(50)    NOT NULL,
    qty       INT            NOT NULL,
    price     DECIMAL(10, 2) NOT NULL,
    CONSTRAINT pk_order_detail PRIMARY KEY (order_id, item_code),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES `order` (id),
    CONSTRAINT fk_item_bar_code FOREIGN KEY (item_code) REFERENCES item (bar_code)
);


INSERT INTO customer (id, name)
VALUES ('C001', 'Asiri'),
       ('C002', 'Sappa'),
       ('C003', 'Buddhika'),
       ('C004', 'Hiron'),
       ('C005', 'Imantha');

INSERT INTO item(bar_code, description, stock, price)
VAlUES ('I001', 'Mouse', 10, 1250.00),
       ('I002', 'Keyboard', 5, 1250.00),
       ('I003', 'Monitor', 4, 8000.00),
       ('I004', 'Mouse Pad', 20, 500.00),
       ('I005', 'Smart Watch', 15, 12500.00),
       ('I006', 'Blue Screen Filter', 15, 750.00);