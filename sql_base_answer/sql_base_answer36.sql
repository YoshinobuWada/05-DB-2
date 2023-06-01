SELECT x.goal_time, y.uniform_num, y.position, y.name 
FROM goals AS x
LEFT JOIN players AS y
ON x.player_id = y.id;