SELECT customer_id,SUM(amount) AS 總合
FROM payment
GROUP BY customer_id
HAVING SUM(amount) >200;

SELECT store_id,COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id)>300;

/*SUBQUEERY*/
SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id = 92;

SELECT city
FROM city
WHERE country_id = (
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);

SELECT city
FROM city JOIN country ON city.country_id = country.country_id
WHERE country = 'Taiwan';