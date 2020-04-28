--DROP table salaries

CREATE TABLE salaries(
	salary_rank INT NOT NULL,
	uid VARCHAR(30) PRIMARY KEY,
	player VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	player_position VARCHAR(30) NOT NULL,
	abrv VARCHAR (30) NOT NULL,
	team VARCHAR (50),
	salary INT	
)