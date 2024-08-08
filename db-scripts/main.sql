CREATE
DATABASE dep12_join_example_2;

USE
dep12_join_example_2;

CREATE TABLE customer
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO customer (id, name)
VALUES ('C001', 'Asiri'),
       ('C002', 'Sappa'),
       ('C003', 'Buddhika'),
       ('C004', 'Hiron'),
       ('C005', 'Imantha');

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
    CONSTRAINT pk_order_detail PRIMARY KEY (order_id, item_bar_code),
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

INSERT INTO order (id, "date", customer_id, username) VALUES ('O075','2024-01-25','C001','kasun' ),
                                                             ('O076', '2024-01-26', 'C002', 'nuwan'),
                                                             ('O077', '2024-01-27', 'C003', 'ruwan'),
                                                             ('O078', '2024-01-28', 'C004', 'upul'),
                                                             ('O079', '2024-01-29', 'C005', 'asiri'),
                                                             ('O080', '2024-01-30', 'C006', 'kasun'),
                                                             ('O081', '2024-01-31', 'C007', 'nuwan'),
                                                             ('O082', '2024-02-01', 'C008', 'ruwan'),
                                                             ('O083', '2024-02-02', 'C009', 'asiri'),
                                                             ('O084', '2024-02-03', 'C010', 'nuwan');