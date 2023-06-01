SELECT x.name AS 名前, x.position AS ポジション, x.club AS 所属クラブ, COUNT(y.player_id) AS 'ゴール数'
FROM players x
LEFT JOIN goals y
ON y.player_id = x.id
GROUP BY x.id, x.name, x.position, x.club
ORDER BY ゴール数 DESC;