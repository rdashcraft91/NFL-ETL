DROP table salaries

CREATE TABLE salaries(
	"Salary_Rank" INT NOT NULL,
	"uid" VARCHAR(30) PRIMARY KEY,
	"Player" VARCHAR(30) NOT NULL,
	"First_Name" VARCHAR(30) NOT NULL,
	"Last_Name" VARCHAR(30) NOT NULL,
	"Player_Position" VARCHAR(30) NOT NULL,
	"Abrv" VARCHAR (30) NOT NULL,
	"Team" VARCHAR (50),
	"Salary" INT	
)