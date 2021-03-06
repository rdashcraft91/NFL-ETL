# NFL-ETL
## Team Members
 - Luis Olguin
 - Ryan Ashcraft
 - Vikash Bhakta


## Background
The 2020 NFL Draft just finished a few days ago and we wanted to see if players stats and salaries correlated with how well a team did during the season.

## Extract
The following are the data sources which we extracted from and how it was done. Below each source is a snippet of the raw data.

1) 2019 NFL Salary data - https://www.pro-football-reference.com/players/salary.htm - Read HTML table in Pandas dataframe

![salary data](/Images/Salary_Data.png)

2) NFL team abbreviations - https://en.wikipedia.org/wiki/Wikipedia:WikiProject_National_Football_League/National_Football_League_team_abbreviations - Read HTML table in Pandas dataframe

![team abbreviations](/Images/Team_Abrev.png)

3) 2019 NFL player stats - https://www.pro-football-reference.com/years/2019/scrimmage.htm - Read HTML table in Pandas dataframe

![player stats](/Images/Player_Stats.png)

4) 2019 NFL season records - http://www.playoffstatus.com/nfl/nflpostseasonprob.html - Read HTML table in Pandas dataframe

![2019 season records](/Images/2019_Season_Records.png)


## Transform
Each of the tables had their own challenges during the data cleaning process. All the tables had to have column names renamed so that they would pull into SQL database without any issues. The salary data had lots of blank values that needed to be accounted for and filled with Null values. Some of the team abbreviations in that table were not the official ones, so they needed to be updated. In addition, some of the team names were spelled differently in each of the tables so they needed to be manually changed. At the end, we merged each table with the team abbreviations table same that we could inner join on that later on in SQL.

The following are snippets of the transformed data.

1) 2019 NFL salary data:

![transformed salaries](/Images/Transformed_Salaries.png)

2) 2019 NFL player stats:

![transformed stats](/Images/Transformed_Stats.png)

3) 2019 NFL season records:

![transformed records](/Images/Transformed_Records.png)

## Load
We decided to load all the clean data into a relational database, PostgresSQL, so we could make dynamic views and compare if salaries and/or player stats affected team performance. We also wanted to see if the players with best stats had a strong relationship with higher salaries. Below are some of the views that were created with the clean data once loaded.

The following are snippets of the database schema and dynamic views we created.

1) NFL Database Schema:

![nfl schema](/Images/NFL_Schema.png)

2) Salary by Team:

![salary by team](/Images/v_salary_by_team.png)

3) Salary by Position:

![salary by position](/Images/v_salary_by_position.png)

4) Avg Player Salary By Team:

![avg player salary by team](/Images/v_avg_player_salary_by_team.png)

5) Running Back Stats:

![running backs](/Images/v_rbs.png)

5) Wide-Receiver Stats:

![wide receivers](/Images/v_wr.png)


