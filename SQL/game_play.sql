-- tabela e povoamento
Create table Activity (
    player_id number(1), 
    device_id number(1), 
    event_date date, 
    games_played number(1)
    );

insert into Activity (player_id, device_id, event_date, games_played) values (1, 2, DATE '2016-03-01', 5);
insert into Activity (player_id, device_id, event_date, games_played) values (1, 2, DATE '2016-05-02', 6);
insert into Activity (player_id, device_id, event_date, games_played) values (2, 3, DATE '2017-06-25', 1);
insert into Activity (player_id, device_id, event_date, games_played) values (3, 1, DATE '2016-03-02', 0);
insert into Activity (player_id, device_id, event_date, games_played) values (3, 4, DATE '2018-07-03', 5);

-- query
select player_id, min(event_date) from Activity
group by player_id 