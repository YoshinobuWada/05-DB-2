SELECT x.name AS 国名, AVG(y.height) AS '平均身長'
FROM countries x
LEFT JOIN players y
ON x.id = y.country_id
GROUP BY x.name
ORDER BY 平均身長 DESC;