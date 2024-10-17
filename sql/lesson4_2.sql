CREATE TABLE  IF NOT EXISTS stations(
stations_id SERIAL PRIMARY KEY,
stationCode VARCHAR(20) UNIQUE NOT NULL,
stationName	VARCHAR(20) NOT NULL,
name VARCHAR(20),
stationAddrTw VARCHAR(80),
stationTel VARCHAR(20),
gps VARCHAR(60),
haveBike BOOLEAN
);

DROP TABLE stations;
SELECT *
FROM stations;

CREATE TABLE IF NOT EXISTS station_in_out(
	date DATE,
	staCode VARCHAR(20) NOT NULL,
	gateInComingCnt INTEGER,
	gateOutGoingCnt INTEGER,
	PRIMARY KEY(date,staCode),
	FOREIGN KEY(staCode) REFERENCES stations(stationCode)
	ON DELETE SET NULL
	ON UPDATE CASCADE
);
SELECT *
FROM station_in_out;