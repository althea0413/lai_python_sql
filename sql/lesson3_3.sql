SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE code = '1001'or code='1002'


SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE code IN('1001','1002');

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE name LIKE '台_';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE name LIKE '台%';
 
SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE id <=10;

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE id >=10 AND id<=20;

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE id >=10 AND id<=20;

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
WHERE id NOT BETWEEN 10 AND 20;

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
ORDER BY e_name DESC; /*英文字排序*/

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations
ORDER BY code DESC; /*數字排序*/

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM stations 
ORDER BY e_name DESC
LIMIT 20 ; /*英文字排序*/