SELECT * FROM payment
ORDER BY payment_id ASC;

SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數,
		COUNT(amount) AS 筆數,
		MIN(amount) AS 最大值,
		MAX(amount)AS 最小值
FROM payment
GROUP BY customer_id
ORDER BY 筆數 ASC;

SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數,
		COUNT(amount) AS 筆數,
		MIN(amount) AS 最大值,
		MAX(amount)AS 最小值
FROM payment
GROUP BY customer_id,
ORDER BY COUNT(amount) ASC;

SELECT (first_name || ' ' || last_name) as full_name,SUM(amount) as 總合
FROM payment p JOIN customer c ON p.customer_id=c.customer_id
GROUP BY full_name
ORDER BY 總合 DESC;
