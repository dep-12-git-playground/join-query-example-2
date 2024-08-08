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

CREATE TABLE "order"(
                        order_id VARCHAR(10)PRIMARY KEY,
                        date DATE NOT NULL,
                        customer_id VARCHAR(10)NOT NULL,
                        user_name VARCHAR(100)NOT NULL,
                        CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
                        CONSTRAINT fk_user FOREIGN KEY (user_name) REFERENCES "user"(username)

                            INSERT INTO "order"(order_id, "date", customer_id, user_name) VALUES
    ('OD001','2024-08-07','C001','U001'),
    ('OD002','2024-08-07','C002','U004'),
    ('OD003','2024-08-07','C003','U005'),
    ('OD004','2024-08-07','C004','U002'),
    ('OD005','2024-08-07','C005','U003');
