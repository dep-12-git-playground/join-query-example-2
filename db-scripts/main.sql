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

INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('300.00','2','BAR00001','OD001');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('500.00','3','BAR00002','OD002');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('150.00','1','BAR00003','OD003');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('200.00','4','BAR00004','OD004');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('100.00','3','BAR00005','OD005');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('150.00','5','BAR00003','OD006');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('75.00','1','BAR00006','OD007');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('200.00','2','BAR00007','OD008');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('500.00','3','BAR00002','OD009');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('140.00','5','BAR00008','OD010');