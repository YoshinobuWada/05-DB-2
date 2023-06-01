SELECT group_name, MAX(ranking), MIN(ranking)
FROM countries
GROUP BY group_name
HAVING (MAX(ranking) - MIN(ranking)) > 50;