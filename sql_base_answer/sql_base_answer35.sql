SELECT T3.name, T2.name, T1.goal_time
FROM goals as T1
INNER JOIN players AS T2
ON T1.player_id = T2.id
INNER JOIN countries AS T3
ON T2.country_id = T3.id;