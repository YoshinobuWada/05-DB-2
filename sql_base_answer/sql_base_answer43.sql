SELECT y.position, y.height AS 最大身長, (SELECT name FROM players z WHERE z.position = y.position AND z.height = y.height) AS 名前
FROM (
    SELECT position, MAX(height) AS Mheight
    FROM players
    GROUP BY position
) x, players y
WHERE x.position = y.position
AND x.Mheight = y.height;