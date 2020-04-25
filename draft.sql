CREATE TABLE drafts (
    id serial,
    round int not null,
    round_pick int not null,
    overall_pick int not null,
    player_name varchar(50) not null,
    team VARCHAR(30) not null,
    position varchar(5) not null,
    college varchar(50) not null,
    year int not null
);