/*從payment資料表，取出所有員工的訂單總數*/

SELECT staff_id,
COUNT(amount) AS 筆數
FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) ASC;

/*取出每個員工,在每一個客戶的訂單金額總合*/
SELECT staff_id AS 員工,
customer_id AS 客戶,
SUM (amount) AS 金額總合
FROM payment
GROUP BY staff_id,customer_id
ORDER BY SUM (amount) ASC;

/*取出每日訂單的總合*/
/*cast operator*/
SELECT payment_date ::date AS 日期,
SUM(amount) AS 總合
FROM payment
GROUP BY 日期
ORDER BY 日期;

