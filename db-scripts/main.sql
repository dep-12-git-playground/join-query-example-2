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
INSERT INTO "user" (username, name, password) VALUES
                                                  ('john_doe', 'John Doe', 'password123'),
                                                  ('jane_smith', 'Jane Smith', 'securepassword456'),
                                                  ('alice_jones', 'Alice Jones', 'password789'),
                                                  ('bob_brown', 'Bob Brown', 'passw0rd101112'),
                                                  ('charlie_black', 'Charlie Black', 'mypassword131415');