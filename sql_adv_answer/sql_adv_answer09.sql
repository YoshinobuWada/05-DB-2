SELECT birth, TIMESTAMPDIFF(YEAR,birth,'2014-06-13') AS age , name, position
FROM players
ORDER BY age DESC;