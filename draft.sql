drop table if exists drafts;

CREATE TABLE drafts (
    id serial,
    "Round" int not null,
    "Round_Pick" int not null,
    "Overall_Pick" int not null,
    "Name" varchar(50) not null,
    "Team" VARCHAR(30) not null,
    "Position" varchar(5) not null,
    "College" varchar(50),
    "Year" int not null
);