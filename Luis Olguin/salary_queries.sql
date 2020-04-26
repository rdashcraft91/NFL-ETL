--Creates a table summary of salary by team
create or replace view v_salary_by_team as
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
create or replace view v_salary_by_position as
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