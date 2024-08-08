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

INSERT INTO "order"(order_id, "date", customer_id, user_name) VALUES
                                                                  ('OD001','2024-08-07','C001','U001'),
                                                                  ('OD002','2024-08-07','C002','U004'),
                                                                  ('OD003','2024-08-07','C003','U005'),
                                                                  ('OD004','2024-08-07','C004','U002'),
                                                                  ('OD005','2024-08-07','C005','U003');