 --#1
CREATE TABLE person (
person_id SERIAL PRIMARY KEY,
name VARCHAR(200),
age INTEGER,
height INTEGER,
city VARCHAR(200),
favorite_color VARCHAR(200)
);

 --#2

INSERT INTO person
(name, age, height, city, favortie_color)
VALUES
('Bob',19, 200, 'Chicago', 'Red'),
('John', 22, 198, 'Montreal','Neon Green'),
('Brad', 37, 250, 'Toronto', 'Yellow'),
('Jacob', 33, 300, 'Detroit', 'Blue'),
('Kim', 45, 160, 'Denver', 'Pink' )

--# 3

SELECT * FROM person ORDER BY height DESC;

--#4

SELECT * FROM person ORDER BY height ASC;
 

 --#5 

SELECT * FROM person ORDER BY age DESC;


--#6

SELECT * FROM person WHERE age > 20;

--#7

SELECT * FROM person WHERE age = 18;

--#8

SELECT * FROM person WHERE age < 20 OR age  > 30;

--#9

SELECT * FROM person WHERE age != 27;


--#10

SELECT * FROM person WHERE favorite_color != 'red';


--#11

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';


--#12

SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';


--#13

SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );

--#14

SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' )


--TABLE - orders

--#1

CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR(200),
product_price NUMERIC,
quantity INTEGER
);

--#2

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'Basket Ball', 30.99, 2),
(1, 'Cell Phone', 500.25, 1),
(2, 'Gym Bag', 40, 4),
(2, 'Lamp', 12.99, 3),
(3, 'Desk', 99.99, 1)

--#3
SELECT * FROM orders;

--#4

SELECT SUM(quantity) FROM orders;

--#5
SELECT SUM(product_price * quantity) FROM orders;

--#6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;



-- Table - artist

--#1
INSERT INTO artist
(name)
VALUES
("Joe"),
('Billy'),
('Brian')

--#2

SELECT * FROM artist ORDER BY name DESC LIMIT 10;


--#3

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

--#4
SELECT * FROM artist WHERE name LIKE 'Black%';

--#5

SELECT * FROM artist WHERE name LIKE '%Black%';


--Table - employee

--#1

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

--#2

SELECT MAX(birth_date) from employee;

--#3
SELECT MIN(birth_date) from employee;

--#4
SELECT * FROM employee WHERE reports_to = 2;

--#5
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


--TABLE - invoice

--#1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

--#2
SELECT MAX(total) FROM invoice;

--#3
SELECT MIN(total) FROM invoice;

--#4

SELECT * FROM invoice WHERE total > 5;

--#5
SELECT COUNT(*) FROM invoice WHERE total < 5;

--#6
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

--#7
SELECT AVG(total) FROM invoice;

--#8
SELECT SUM(total) FROM invoice;




