SELECT y.goal_time, x.uniform_num, x.position, x.name 
FROM players AS x
RIGHT JOIN goals AS y
ON y.player_id = x.id;