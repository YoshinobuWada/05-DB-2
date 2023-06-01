SELECT T2.name, T1.name, T1.uniform_num
FROM players AS T1
INNER JOIN countries AS T2
ON T1.country_id = T2.id;