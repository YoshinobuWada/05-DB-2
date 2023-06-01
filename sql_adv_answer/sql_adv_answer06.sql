SELECT 
(SELECT name FROM players b WHERE b.id = a.player_id) AS 名前, 
(SELECT position FROM players c  WHERE c.id = a.player_id) AS ポジション,
(SELECT club FROM players d  WHERE d.id = a.player_id) AS 所属クラブ,
COUNT(a.player_id) AS 'ゴール数'
FROM goals a
GROUP BY a.player_id
ORDER BY ゴール数 DESC;