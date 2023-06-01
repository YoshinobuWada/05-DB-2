SELECT ((TIMESTAMPDIFF(YEAR,birth,'2014-06-13') DIV 10) * 10)AS age, COUNT(TIMESTAMPDIFF(YEAR,birth,'2014-06-13')) AS player_count
FROM players
GROUP BY age
ORDER BY age ASC;


-- SELECT TIMESTAMPDIFF(YEAR,birth,'2014-06-13') AS age, COUNT(TIMESTAMPDIFF(YEAR,birth,'2014-06-13')) AS player_count
-- FROM players
-- GROUP BY age
-- ORDER BY age ASC;