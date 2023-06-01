SELECT *
FROM (
    SELECT a.position AS ポジション, COUNT(b.player_id) AS 'ゴール数'
    FROM players a
    LEFT JOIN goals b
    ON a.id = b.player_id
    GROUP BY a.position
) x
ORDER BY ゴール数 DESC;




-- SELECT position AS ポジション, COUNT(x.id) AS ゴール数
-- FROM players x
-- JOIN goals y
-- ON y.player_id = x.id
-- GROUP BY position
-- ORDER BY ゴール数 DESC;