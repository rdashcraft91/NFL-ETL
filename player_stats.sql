drop table if exists drafts;
drop table if exists player_stats;

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
);