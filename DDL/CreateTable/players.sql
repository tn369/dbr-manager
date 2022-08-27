create table players(
    player_id serial,
    iidx_id numeric(8,0),
    email varchar(319),
    name varchar(6),
    url text,
    encrypt_password char(64),
    salt char(32),
    primary key(player_id)
);
