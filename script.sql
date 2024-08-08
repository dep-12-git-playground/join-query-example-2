CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;

CREATE TABLE customer(
                         id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(100) NOT NULL
);


CREATE TABLE user(
                     username VARCHAR(100) PRIMARY KEY,
                     name VARCHAR(100) NOT NULL,
                     password VARCHAR(300) NOT NULL
);

CREATE TABLE item(
                     bar_code VARCHAR(50) PRIMARY KEY,
                     description VARCHAR(300) NOT NULL,
                     stock INT NOT NULL,
                     price DECIMAL(10,2)
);

CREATE TABLE `order`(
                          id VARCHAR(10) Primary Key,
                          date DATE NOT NULL,
                          customer_id VARCHAR(10) NOT NULL,
                          username VARCHAR(100) NOT NULL ,
                          CONSTRAINT fk_customer FOREIGN KEY(customer_id) REFERENCES customer(id),
                          CONSTRAINT fk_user FOREIGN KEY(username) REFERENCES user(username)
);

CREATE TABLE order_detail(
                             order_id VARCHAR(10) NOT NULL,
                             item_bar_code VARCHAR(50) NOT NULL,
                             qty INT NOT NULL,
                             price DECIMAL(10,2),
                             CONSTRAINT pk_order_detail PRIMARY KEY (order_id,item_bar_code),
                             CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES `order`(id),
                             CONSTRAINT fk_item_bar_code FOREIGN KEY (item_bar_code) REFERENCES item(bar_code)
);

INSERT INTO customer (id, name) VALUES
                                    ('C0001', 'Kasun Sampath'),
                                    ('C0002', 'Menith modaya'),
                                    ('C0003', 'Sachith chanaka'),
                                    ('C0004', 'sandaru lakmal'),
                                    ('C0005', 'jiwithe maru'),
                                    ('C0006', 'sachith sudu'),
                                    ('C0007', 'vimukthi kariyawasam'),
                                    ('C0008', 'chanaka sandaru'),
                                    ('C0009', 'sandesh kalum'),
                                    ('C0010', 'chamud');

INSERT INTO user (username, name, password) VALUES
                                                ('user1', 'Saman edirimuni', 'password1'),
                                                ('user2', 'Sahan sena', 'password2'),
                                                ('user3', 'Sandaru sankalpa', 'password3'),
                                                ('user4', 'saman sena', 'password4'),
                                                ('user5', 'Lahiru chankya', 'password5'),
                                                ('user6', 'vimukthi chandrasena', 'password6'),
                                                ('user7', 'Docktor sachith', 'password7'),
                                                ('user8', 'Sanduni sapasara', 'password8'),
                                                ('user9', 'dilani menakaa', 'password9'),
                                                ('user10', 'sadalu merun', 'password10');

INSERT INTO item (bar_code, description, stock, price) VALUES
                                                           ('ITEM0001', 'Sunlight kudu', 100, 10.00),
                                                           ('ITEM0002', 'Kudu Soap', 150, 20.00),
                                                           ('ITEM0003', 'Haripic Cleaner', 200, 30.00),
                                                           ('ITEM0004', 'Detergent Powder', 250, 40.00),
                                                           ('ITEM0005', 'Toilet Cleaner', 300, 50.00),
                                                           ('ITEM0006', 'Dishwashing Liquid', 350, 60.00),
                                                           ('ITEM0007', 'Floor Cleaner', 400, 70.00),
                                                           ('ITEM0008', 'Glass Cleaner', 450, 80.00),
                                                           ('ITEM0009', 'Surface Cleaner', 500, 90.00),
                                                           ('ITEM0010', 'Multipurpose Cleaner', 550, 100.00);


INSERT INTO `order` (id, date, customer_id, username) VALUES
                                                          ('ORD0001', '2024-08-01', 'C0001', 'user1'),
                                                          ('ORD0002', '2024-08-02', 'C0002', 'user2'),
                                                          ('ORD0003', '2024-08-03', 'C0003', 'user3'),
                                                          ('ORD0004', '2024-08-04', 'C0004', 'user4'),
                                                          ('ORD0005', '2024-08-05', 'C0005', 'user5'),
                                                          ('ORD0006', '2024-08-06', 'C0006', 'user6'),
                                                          ('ORD0007', '2024-08-07', 'C0007', 'user7'),
                                                          ('ORD0008', '2024-08-08', 'C0008', 'user8'),
                                                          ('ORD0009', '2024-08-09', 'C0009', 'user9'),
                                                          ('ORD0010', '2024-08-10', 'C0010', 'user10');

INSERT INTO order_detail (order_id, item_bar_code, qty, price) VALUES
                                                                   ('ORD0001', 'ITEM0001', 1, 10.00),
                                                                   ('ORD0001', 'ITEM0002', 2, 20.00),
                                                                   ('ORD0002', 'ITEM0003', 1, 30.00),
                                                                   ('ORD0002', 'ITEM0004', 3, 40.00),
                                                                   ('ORD0003', 'ITEM0005', 2, 50.00),
                                                                   ('ORD0003', 'ITEM0006', 1, 60.00),
                                                                   ('ORD0004', 'ITEM0007', 4, 70.00),
                                                                   ('ORD0004', 'ITEM0008', 2, 80.00),
                                                                   ('ORD0005', 'ITEM0009', 5, 90.00),
                                                                   ('ORD0005', 'ITEM0010', 1, 100.00),
                                                                   ('ORD0006', 'ITEM0001', 2, 10.00),
                                                                   ('ORD0006', 'ITEM0002', 1, 20.00),
                                                                   ('ORD0007', 'ITEM0003', 3, 30.00),
                                                                   ('ORD0007', 'ITEM0004', 2, 40.00),
                                                                   ('ORD0008', 'ITEM0005', 4, 50.00),
                                                                   ('ORD0008', 'ITEM0006', 1, 60.00),
                                                                   ('ORD0009', 'ITEM0007', 5, 70.00),
                                                                   ('ORD0009', 'ITEM0008', 3, 80.00),
                                                                   ('ORD0010', 'ITEM0009', 2, 90.00),
                                                                   ('ORD0010', 'ITEM0010', 4, 100.00);