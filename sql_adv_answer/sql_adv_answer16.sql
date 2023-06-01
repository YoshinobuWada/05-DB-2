SELECT p.kickoff, c.name AS 'my_country', c2.name AS 'enemy_country', c.ranking AS 'my_ranking', c2.ranking AS 'enemy_ranking', 
(
    SELECT COUNT(g1.id)
    FROM goals g1 
    WHERE p.id = g1.pairing_id 
) AS 'my_goals',
(
    SELECT  COUNT(g2.id)
    FROM goals g2
    LEFT JOIN pairings p2
    ON p2.id = g2.pairing_id
    WHERE p2.my_country_id = p.enemy_country_id AND p2.enemy_country_id = p.my_country_id
) AS 'enemy_goals'
FROM pairings p
LEFT JOIN countries c
ON c.id = p.my_country_id
LEFT JOIN countries c2
ON c2.id = p.enemy_country_id
WHERE c.group_name = 'C' AND c2.group_name = 'C'
ORDER BY p.kickoff ASC, c.ranking ASC;