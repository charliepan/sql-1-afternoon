-- 1.
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
    height INT,
    city TEXT,
    favorite_color TEXT
);

-- 2.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Dan', 15, 160, 'Arlington', 'Green'),
	   ('Kevin', 19, 179, 'Denton', 'Red'),
	   ('Pemba', 25, 180, 'Carrolton', 'Green'),
	   ('Daniel', 26, 170, 'Dallas', 'Beige'),
	   ('Chin', 53, 185, 'San Fran', 'Yellow');

-- 3.
SELECT * FROM person
ORDER BY height DESC;

-- 4.
SELECT * FROM person
ORDER BY height ASC;

-- 5.
SELECT * FROM person
ORDER BY age DESC;
-- 6.
SELECT * FROM person
WHERE age > 20;

-- 7.
SELECT * FROM person
WHERE age = 18;

-- 8.
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- 9.
SELECT * FROM person
WHERE age != 27;

-- 10.
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'red';

-- 11.
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- 12.
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- 13.
SELECT * FROM person
WHERE favorite_color IN ('Orange','Green','Blue');

-- 14.
SELECT * FROM person
WHERE favorite_color IN ('Yellow','Purple');


