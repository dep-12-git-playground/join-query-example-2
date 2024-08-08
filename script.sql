CREATE DATABASE dep12_join_example_2;

USER dep12_join_example_2;

CREATE TABLE order_item(
                           item_code VARCHAR(50) NOT NULL ,
                           order_id VARCHAR(10) NOT NULL,
                           price DECIMAL(9, 2) NOT NULL ,
                           qty INT NOT NULL ,
                           CONSTRAINT pk_order_item PRIMARY KEY (item_code, order_id),
                           CONSTRAINT fk_item FOREIGN KEY (item_code) REFERENCES item(bar_code),
                           CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES 'order'(id)
);