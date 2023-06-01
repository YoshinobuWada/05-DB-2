SELECT x.id, x.goal_time, (SELECT name FROM players WHERE ID = x.player_id)player_name
FROM goals AS x
WHERE x.player_id;