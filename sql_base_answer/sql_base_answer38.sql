SELECT T3.name AS country_name, T1.goal_time, T2.position, T2.name AS player_name
FROM goals as T1
LEFT JOIN players AS T2
ON T1.player_id = T2.id
LEFT JOIN countries AS T3
ON T2.country_id = T3.id;