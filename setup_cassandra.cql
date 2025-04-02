-- Create the keyspace
CREATE KEYSPACE IF NOT EXISTS buyer_events 
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};

-- Switch to the keyspace
USE buyer_events;

-- Create the 'buyers' table
CREATE TABLE IF NOT EXISTS buyers (
  buyer_id INT PRIMARY KEY,
  username TEXT,
  email TEXT,
  address TEXT
);

-- Inserting data into 'buyers' table
INSERT INTO buyers (buyer_id, username, email, address) 
VALUES (1, 'user1', 'user1@example.com', 'hyd');

INSERT INTO buyers (buyer_id, username, email, address) 
VALUES (2, 'user2', 'user2@example.com', 'mum');

INSERT INTO buyers (buyer_id, username, email, address) 
VALUES (3, 'user3', 'user3@example.com', 'pun');

INSERT INTO buyers (buyer_id, username, email, address) 
VALUES (4, 'user4', 'user4@example.com', 'hyd');

INSERT INTO buyers (buyer_id, username, email, address) 
VALUES (5, 'user5', 'user5@example.com', 'pun');

INSERT INTO buyers (buyer_id, username, email, address) 
VALUES (6, 'user6', 'user6@example.com', 'mum');

-- Create the 'products' table
CREATE TABLE IF NOT EXISTS products (
  product_id INT PRIMARY KEY,
  name TEXT,
  category TEXT,
  price INT
);

-- Inserting data into 'products' table
INSERT INTO products (product_id, name, category, price) 
VALUES (1, 'coffee maker', 'appliances', 60);

INSERT INTO products (product_id, name, category, price) 
VALUES (2, 'phone', 'electronics', 300);

INSERT INTO products (product_id, name, category, price) 
VALUES (3, 'led tv', 'electronics', 600);

INSERT INTO products (product_id, name, category, price) 
VALUES (4, 'running shoes', 'apparel', 100);

INSERT INTO products (product_id, name, category, price) 
VALUES (5, 'oven', 'appliances', 500);

-- Querying all rows from 'products' table
SELECT * FROM products;

-- Create the 'purchase_history' table
CREATE TABLE IF NOT EXISTS purchase_history (
  transactionID INT PRIMARY KEY,
  buyer_id INT,
  product_id INT,
  quantity INT,
  total_amount INT,
  purchase_date TIMESTAMP
);

-- Inserting data into 'purchase_history' table
INSERT INTO purchase_history (transactionID, buyer_id, product_id, quantity, total_amount, purchase_date)
VALUES (1, 1, 5, 2, 800, toTimestamp(now()));

INSERT INTO purchase_history (transactionID, buyer_id, product_id, quantity, total_amount, purchase_date)
VALUES (2, 1, 4, 4, 400, toTimestamp(now()));

INSERT INTO purchase_history (transactionID, buyer_id, product_id, quantity, total_amount, purchase_date)
VALUES (3, 2, 4, 1, 100, toTimestamp(now()));

INSERT INTO purchase_history (transactionID, buyer_id, product_id, quantity, total_amount, purchase_date)
VALUES (4, 2, 1, 3, 180, toTimestamp(now()));

INSERT INTO purchase_history (transactionID, buyer_id, product_id, quantity, total_amount, purchase_date)
VALUES (5, 3, 3, 4, 2400, toTimestamp(now()));

INSERT INTO purchase_history (transactionID, buyer_id, product_id, quantity, total_amount, purchase_date)
VALUES (6, 4, 2, 2, 600, toTimestamp(now()));
