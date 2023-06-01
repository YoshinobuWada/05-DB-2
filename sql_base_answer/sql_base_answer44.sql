SELECT uniform_num, position, name, height
FROM players x
WHERE height < (SELECT AVG(height) FROM players)