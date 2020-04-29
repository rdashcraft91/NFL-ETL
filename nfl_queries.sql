--Creates a table summary of salary by QB
create or replace view v_rbs as
select 
	"Player",
	"Position",
	"Yards/Touch",
	"Total_Yards"
-- 	"Touches"
from player_stats
where "Position" = 'RB' and "Touches" > 150
order by "Yards/Touch" desc, "Total_Yards" desc;

--Creates a table summary of salary by WR
 SELECT player_stats."Player",
    player_stats."Position",
    player_stats."Yards/Touch",
    player_stats."Total_Yards"
   FROM player_stats
  WHERE player_stats."Position" = 'WR'::text
  ORDER BY player_stats."Yards/Touch" DESC, player_stats."Total_Yards" DESC;

--Creates a table summary of salary by team
create or replace view v_salary_by_team
select team
	   ,abrv
	   ,cast(sum(salary) as money) as total_salary
	   ,cast(avg(salary) as money) as avg_salary
	   ,cast(max(salary) as money) as max_salary
	   ,cast(min(salary) as money) as min_salary
	   ,count(player) as player_count
	   ,cast((sum(salary)/ count(player)) as money) as salary_per_player
from salaries
group by team, abrv
order by total_salary desc

--Creates a table summary of salary by position
create or replace view v_salary_by_position
select player_position
	   ,cast(sum(salary) as money) as total_salary
	   ,cast(avg(salary) as money) as avg_salary
	   ,cast(max(salary) as money) as max_salary
	   ,cast(min(salary) as money) as min_salary
	   ,count(player) as player_count
	   ,cast((sum(salary)/ count(player)) as money) as salary_per_player
from salaries
group by player_position
order by total_salary desc

--Creates a summary of player salary
create or replace view v_avg_player_salary_by_team as
select a.*, b.salary_per_player
from nfl_2019_standings a
inner join v_salary_by_team as b on b.abrv = a.abbreviation
order by b.salary_per_player desc