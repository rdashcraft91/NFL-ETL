-- Create table for raw data to be loaded into

--drop table nfl_2019_standings
--drop table if exists player_stats
--drop table salaries

CREATE TABLE nfl_2019_standings (
team VARCHAR(30),
conference VARCHAR(30),
wins INTEGER,
losses INTEGER,
ties INTEGER,
abbreviation VARCHAR(30) PRIMARY KEY
)

CREATE TABLE player_stats (
    id serial,
    "Player" varchar(100) not null,
    "Team" varchar(10) not null,
    "Age" int,
    "Position" varchar(50),
    "Games" int,
    "Touches" int,
    "Yards/Touch" decimal,
    "Total_Yards" int,
	"Touchdowns" int,
	"Fumbles" int,
	"Receptions" int
)

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