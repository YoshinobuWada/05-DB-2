SELECT p.kickoff, c.name AS 'my_country', c2.name AS 'enemy_country', c.ranking AS 'my_ranking', c2.ranking AS 'enemy_ranking', 
(
    SELECT COUNT(g.id)
    FROM goals g 
    WHERE p.id = g.pairing_id 
) AS 'my_goals'
FROM pairings p
LEFT JOIN countries c
ON c.id = p.my_country_id
LEFT JOIN countries c2
ON c2.id = p.enemy_country_id
WHERE c.group_name = 'C' AND c2.group_name = 'C'
ORDER BY p.kickoff ASC, c.ranking ASC;