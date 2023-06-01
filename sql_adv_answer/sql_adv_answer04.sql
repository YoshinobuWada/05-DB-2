SELECT (SELECT name FROM countries x WHERE y.country_id = x.id) AS '国名', AVG(y.height) AS '平均身長'
FROM players y
GROUP BY 国名
ORDER BY 平均身長 DESC;