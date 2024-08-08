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
    description VARCHAR(150)  NOT NULL,
    stock       INT           NOT NULL,
    price       DECIMAL(9, 2) NOT NULL
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

INSERT INTO user (username, name, password) VALUES ('U001', 'Kasun', 123),
                                                   ('U002', 'Nuwan', 123),
                                                   ('U00', 'Ruwan', 123),
                                                   ('U004', 'Chamika', 123),
                                                   ('U005', 'Yasith', 123),
                                                   ('U006', 'Buddika', 123),
                                                   ('U007', 'Imantha', 123),
                                                   ('U008', 'Tharindu', 123),
                                                   ('U009', 'Sappa', 123),
                                                   ('U010', 'Asiri', 123);



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

INSERT INTO user (username, name, password)
VALUES ('kasun', 'Kasun Sampath', 'kasun123'),
       ('nuwan', 'Nuwan Ramindu', 'nuwan123'),
       ('ruwan', 'Ruwan Lakmal', 'ruwan123'),
       ('upul', 'Upul Tharanga', 'upul123'),
       ('asiri', 'Asiri Kariyawasam', 'asiri123');

INSERT INTO order_detail (order_id, item_code, qty, price) VALUES ('OD003', 'I001', 72, 4000.20),
                                                                  ('OD003', 'I002', 22, 8000.20),
                                                                  ('OD002', 'I005', 46, 7000.20),
                                                                  ('OD001', 'I006', 94, 4000.20),
                                                                  ('OD004', 'I002', 13, 5000.20),
                                                                  ('OD003', 'I006', 75, 2400.20),
                                                                  ('OD004', 'I002', 58, 4200.20),
                                                                  ('OD004', 'I001', 10, 9900.20),
                                                                  ('OD002', 'I004', 40, 3100.20),
                                                                  ('OD005', 'I003', 30, 1000.20);

INSERT INTO `order` (id, date, customer_id, username)
VALUES ('OD001', '2023-11-15', 'C001', 'kasun'),
       ('OD002', '2023-12-02', 'C002', 'nuwan'),
       ('OD003', '2024-01-10', 'C003', 'ruwan'),
       ('OD004', '2024-02-15', 'C004', 'upul'),
       ('OD005', '2024-03-20', 'C005', 'asiri');

INSERT INTO order_detail (order_id, item_code, qty, price)
VALUES ('OD001', 'I001', 1, 10.00),
       ('OD001', 'I002', 2, 20.00),
       ('OD002', 'I003', 1, 30.00),
       ('OD002', 'I004', 3, 40.00),
       ('OD003', 'I005', 2, 50.00),
       ('OD003', 'I006', 1, 60.00),
       ('OD004', 'I001', 4, 70.00),
       ('OD004', 'T002', 2, 80.00),
       ('OD005', 'I003', 5, 90.00),
       ('OD005', 'I004', 1, 100.00);