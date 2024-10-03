/*車站代號,車站中文名稱,車站英文名稱*/

CREATE TABLE IF NOT EXISTS stations(
    id SERIAL PRIMARY KEY,
	code VARCHAR(20) NOT NULL,
    name VARCHAR(60) UNIQUE,
	e_name VARCHAR(60) 
);