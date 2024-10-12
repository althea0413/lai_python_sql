CREATE TABLE customer(
	costomer_id int,
	store_id int,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(200),
	address_id VARCHAR(20),
	activebool VARCHAR(10),
	create_date date,
	last_update timestamp,
	active boolean
);

SELECT *
FROM customer;

SELECT *
FROM customer
WHERE first_name='Jamie';

SELECT *
FROM customer
WHERE first_name='Jamie' and last_name='Rice';

SELECT *
FROM customer
WHERE last_name='Rodriquez'or first_name ='Adam';

SELECT *
FROM customer
WHERE first_name IN('Ann','Anne','Annie');

SELECT *
FROM customer
WHERE first_name='Ann%';

SELECT *
FROM customer
WHERE first_name='A%' and ;

SELECT *
FROM customer
WHERE first_name='Bra%' NOT LIKE last_name='Motley' 

