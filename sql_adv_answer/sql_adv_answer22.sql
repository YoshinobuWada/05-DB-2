SELECT ((TIMESTAMPDIFF(YEAR,birth,'2014-06-13') DIV 5) * 5)AS age, position, COUNT(id), AVG(height), AVG(weight)
FROM players
GROUP BY age, position
ORDER BY age ASC, position ASC;