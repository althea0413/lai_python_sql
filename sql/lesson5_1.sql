SELECT *
FROM stations;

SELECT *
FROM station_in_out;
/*全省各站點2022年進站總人數*/
SELECT stationname AS 站名, SUM(gateincomingcnt) AS 總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2022
GROUP BY 站名
ORDER BY 總進站人數 DESC;


/*全省各站點2022年進站總人數大於5佰萬人的站點*/
SELECT stationname AS 站名, SUM(gateincomingcnt) AS 總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2022
GROUP BY 站名
HAVING SUM(gateincomingcnt) >= 5000000
ORDER BY 總進站人數 DESC;


/*基隆火車站2020年,每月份進站人數*/
SELECT stationname AS 站名, TO_CHAR(date,'YYYY-MM') AS 日期, SUM(gateincomingcnt) AS 每日進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2020 AND stationname='基隆'
GROUP BY 站名,日期;

/*基隆火車站2020年,每月份進站人數,由多至少*/
SELECT stationname AS 站名, TO_CHAR(date,'YYYY-MM') AS 日期, SUM(gateincomingcnt) AS 每日進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2020 AND stationname='基隆'
GROUP BY 站名,日期
ORDER BY SUM(gateincomingcnt) DESC;

/*基隆火車站2020,2021,2022,每年進站人數*/
SELECT stationname AS 站名,TO_CHAR(date,'YYYY') AS 日期 , SUM(gateincomingcnt) AS 進站人數
FROM stations s JOIN station_in_out io ON stationcode =stacode
WHERE EXTRACT(YEAR FROM date) IN (2020,2021,2022) AND stationname='基隆'
GROUP  BY 站名,日期;

/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/
SELECT stationname AS 站名,TO_CHAR(date,'YYYY') AS 日期 , SUM(gateincomingcnt) AS 進站人數
FROM stations s JOIN station_in_out io ON stationcode =stacode
WHERE EXTRACT(YEAR FROM date) IN (2020,2021,2022) AND stationname IN ('基隆', '臺北')
GROUP  BY 站名,日期;

/*進站人數最多的一筆*/
SELECT gateincomingcnt AS 進站人數 , date AS 日期, stationname AS 站名  
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE gateincomingcnt = ( SELECT MAX(gateincomingcnt) FROM station_in_out );

/*各站點進站人數最多的一筆*/
SELECT gateincomingcnt AS 進站人數 , date AS 日期, stationname AS 站名  
FROM station_in_out io JOIN stations s ON io.stacode = s.stationcode
WHERE (gateincomingcnt , stacode) IN ( SELECT MAX(gateincomingcnt), stacode  FROM station_in_out  GROUP BY stacode)
ORDER BY gateincomingcnt DESC;