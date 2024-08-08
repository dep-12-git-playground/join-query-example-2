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

INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('300.00','2','BAR00001','OD001');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('500.00','3','BAR00002','OD001');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('150.00','1','BAR00003','OD001');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('200.00','4','BAR00004','OD002');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('100.00','3','BAR00005','OD002');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('150.00','5','BAR00003','OD003');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('75.00','1','BAR00006','OD004');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('200.00','2','BAR00007','OD004');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('500.00','3','BAR00002','OD004');
INSERT INTO order_item (price, qty, bar_code, order_id) VALUES ('140.00','5','BAR00008','OD005');
CREATE TABLE `user`
(
    username VARCHAR(100) PRIMARY KEY,
    name     VARCHAR(100) NOT NULL,
    password VARCHAR(300) NOT NULL
);

CREATE TABLE "order"(
                          id VARCHAR(10) Primary Key,
                          date DATE NOT NULL,
                          customer_id VARCHAR(10) NOT NULL,
                          username VARCHAR(100) NOT NULL ,
                          CONSTRAINT fk_customer FOREIGN KEY(customer_id) REFERENCES customer(id),
                          CONSTRAINT fk_user FOREIGN KEY(username) REFERENCES user(username)
);

