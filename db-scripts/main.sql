CREATE DATABASE dep12_join_example_2;

USE dep12_join_example_2;

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
    CONSTRAINT fk_item_code FOREIGN KEY (item_code) REFERENCES item (bar_code)
);

INSERT INTO customer (id, name)
VALUES ('C001', 'Asiri'),
       ('C002', 'Sappa'),
       ('C003', 'Buddhika'),
       ('C004', 'Hiron'),
       ('C005', 'Imantha');

INSERT INTO item(bar_code, description, stock, price)
VAlUES ('I001', 'Mouse', 10, 1250.00),
       ('I002', 'Keyboard', 5, 1350.00),
       ('I003', 'Monitor', 4, 8000.00),
       ('I004', 'Mouse Pad', 20, 500.00),
       ('I005', 'Smart Watch', 15, 12500.00),
       ('I006', 'Blue Screen Filter', 15, 750.00);

INSERT INTO user (username, name, password)
VALUES ('kasun', 'Kasun Sampath', 'kasun123'),
       ('nuwan', 'Nuwan Ramindu', 'nuwan123'),
       ('ruwan', 'Ruwan Lakmal', 'ruwan123'),
       ('upul', 'Upul Tharanga', 'upul123'),
       ('asiri', 'Asiri Kariyawasam', 'asiri123');

INSERT INTO `order` (id, date, customer_id, username)
VALUES ('OD001', '2023-11-15', 'C001', 'kasun'),
       ('OD002', '2023-12-02', 'C002', 'nuwan'),
       ('OD003', '2024-01-10', 'C003', 'ruwan'),
       ('OD004', '2024-02-15', 'C004', 'upul'),
       ('OD005', '2024-03-20', 'C005', 'asiri'),
       ('OD006', '2024-03-20', 'C001', 'ruwan'),
       ('OD007', '2024-03-20', 'C001', 'asiri'),
       ('OD008', '2024-03-20', 'C003', 'asiri'),
       ('OD009', '2024-03-20', 'C003', 'nuwan'),
       ('OD010', '2024-03-20', 'C003', 'asiri'),
       ('OD011', '2024-03-20', 'C002', 'kasun'),
       ('OD012', '2024-03-20', 'C002', 'nuwan'),
       ('OD013', '2024-03-20', 'C004', 'asiri'),
       ('OD014', '2024-03-20', 'C005', 'ruwan'),
       ('OD015', '2024-03-20', 'C005', 'asiri');

INSERT INTO order_detail (order_id, item_code, qty, price)
VALUES ('OD001', 'I001', 1, 1250.00),
       ('OD001', 'I002', 2, 1350.00),

       ('OD002', 'I003', 1, 8000.00),
       ('OD002', 'I004', 3, 500.00),

       ('OD003', 'I005', 2, 12500.00),
       ('OD003', 'I006', 1, 750.00),

       ('OD004', 'I001', 4, 1250.00),
       ('OD004', 'I002', 2, 1350.00),

       ('OD005', 'I003', 5, 8000.00),
       ('OD005', 'I006', 1, 750.00),
       ('OD005', 'I004', 1, 500.00),
       ('OD005', 'I002', 1, 1350.00),

       ('OD006', 'I004', 1, 500.00),
       ('OD006', 'I006', 1, 750.00),

       ('OD007', 'I004', 1, 500.00),

       ('OD008', 'I002', 1, 1350.00),
       ('OD008', 'I003', 1, 8000.00),
       ('OD008', 'I001', 1, 1250.00),
       ('OD008', 'I005', 1, 12500.00),
       ('OD008', 'I006', 1, 750.00),

       ('OD009', 'I004', 1, 500.00),
       ('OD009', 'I002', 3, 1350.00),

       ('OD010', 'I001', 5, 1250.00),

       ('OD011', 'I002', 3, 1350.00),

       ('OD012', 'I001', 4, 1250.00),
       ('OD012', 'I003', 3, 8000.00),
       ('OD012', 'I002', 1, 1350.00),

       ('OD013', 'I001', 2, 1250.00),

       ('OD014', 'I003', 3, 8000.00),

       ('OD015', 'I001', 4, 1250.00),
       ('OD015', 'I003', 3, 8000.00),
       ('OD015', 'I002', 1, 1350.00);