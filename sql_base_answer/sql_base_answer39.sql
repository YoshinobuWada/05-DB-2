SELECT x.kickoff, y.name AS my_country, z.name AS enemy_country
FROM pairings AS x
JOIN countries AS y
ON x.my_country_id = y.id
JOIN countries AS z
ON x.enemy_country_id = z.id;