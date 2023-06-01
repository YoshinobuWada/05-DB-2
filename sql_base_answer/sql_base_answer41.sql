SELECT x.id, x.goal_time, y.name
FROM goals AS x
INNER JOIN players AS y
ON x.player_id = y.id; 