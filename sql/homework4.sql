SELECT  stationname as 站名, SUM(gateincomingcnt) as 進佔總人數
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE EXTRACT(YEAR FROM io.date) = 2022
GROUP BY stationname
ORDER BY 進佔總人數;


SELECT  stationname as 站名, SUM(gateincomingcnt) as 進佔總人數
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE EXTRACT(YEAR FROM io.date) = 2022
GROUP BY stationname
HAVING SUM(gateincomingcnt) > 5000000
ORDER BY 進佔總人數;

SELECT DATE_PART('month', date) AS 月份, stationname as 站名, SUM(gateincomingcnt) as 總合 
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE EXTRACT(YEAR FROM io.date) = 2020 AND  stationname = '基隆'
GROUP BY DATE_PART('month', date),stationname
ORDER BY DATE_PART('month', date);


SELECT DATE_PART('month', date) AS 月份, stationname as 站名, SUM(gateincomingcnt) as 進站人數 
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE EXTRACT(YEAR FROM io.date) = 2022 AND  stationname = '基隆'
GROUP BY DATE_PART('month', date),stationname
ORDER BY 進站人數 DESC;

SELECT EXTRACT(YEAR FROM date) AS 年份,  
    s.stationname AS 站名, 
    SUM(io.gateincomingcnt) AS 進站人數
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE EXTRACT(YEAR FROM io.date) IN (2020,2021,2022) AND stationname = '基隆'
GROUP BY EXTRACT(YEAR FROM date), s.stationname
ORDER BY 進站人數; 

SELECT EXTRACT(YEAR FROM date)AS 年份,
	stationname as 站名,
	SUM(gateincomingcnt) as 進站人數
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE EXTRACT(YEAR FROM io.date) IN (2020,2021,2022) AND   stationname IN ('基隆', '臺北')
GROUP BY EXTRACT(YEAR FROM date),stationname
ORDER BY 年份 ;

SELECT date AS 日期, stationname as 站名, gateincomingcnt as 進佔總人數
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE gateincomingcnt =( SELECT MAX(gateincomingcnt) FROM station_in_out);

SELECT date AS 日期,
stationname as 站名,
gateincomingcnt as 進佔人數
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE(stacode,gateincomingcnt) IN (SELECT stacode,MAX(gateincomingcnt)
FROM station_in_out
GROUP BY stacode)
ORDER BY gateincomingcnt DESC ;











/*進站人數最多的*/