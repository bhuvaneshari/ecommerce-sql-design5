create database cust_db;
use cust_db;

CREATE TABLE customers9 (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);


CREATE TABLE orders9 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customers9(customer_id)
);


INSERT INTO customers9 VALUES 
(1, 'daanu'), (2, 'krishna'), (3, 'radha');

INSERT INTO orders9 VALUES
(202, 1, 'Laptop'), (203, 1, 'Mouse'), (204, 2, 'Keyboard');


SELECT customers9.name, orders9.product
FROM customers9
INNER JOIN orders9 ON customers9.customer_id = orders9.customer_id;


SELECT customers9.name, orders9.product
FROM customers9
LEFT JOIN orders9 ON customers9.customer_id = orders9.customer_id;


SELECT customers9.name, orders9.product
FROM customers9
RIGHT JOIN orders9 ON customers9.customer_id = orders9.customer_id;


SELECT customers9.name, orders9.product
FROM customers9
LEFT JOIN orders9 ON customers9.customer_id = orders9.customer_id
UNION
SELECT customers9.name, orders9.product
FROM customers9
RIGHT JOIN orders9 ON customers9.customer_id = orders9.customer_id;
