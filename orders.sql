-- 1.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name TEXT,
    product_price DECIMAL,
    quantity INT
);

-- 2.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Yams', 5.00, 3),
	   (1, 'Potates', 4.99, 2),
	   (2, 'Tomates', 4.99, 5),
	   (2, 'Cheese', 2.99, 4),
	   (2, 'Bread', 3.99, 3);

-- 3.
SELECT * FROM orders;

-- 4.
SELECT SUM(quantity) AS Total FROM orders;

-- 5.
SELECT SUM(product_price * quantity) AS Total FROM orders;

-- 6.
SELECT person_id, SUM(product_price * quantity) AS Total
FROM orders
GROUP BY person_id;