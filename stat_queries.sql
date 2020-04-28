--Creates a table summary of salary by team
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