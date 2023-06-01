SELECT p.kickoff, c.name AS 'my_country', c2.name AS 'enemy_country', c.ranking AS 'my_ranking', c2.ranking AS 'enemy_ranking', COUNT(pairing_id) AS 'my_goals'
FROM pairings p
LEFT JOIN countries c
ON c.id = p.my_country_id
LEFT JOIN countries c2
ON c2.id = p.enemy_country_id
LEFT JOIN goals g
ON g.pairing_id = p.id
WHERE c.group_name = 'C' AND c2.group_name = 'C'
GROUP BY p.kickoff, my_country, enemy_country, my_ranking, enemy_ranking
ORDER BY p.kickoff ASC, c.ranking ASC;

-- SELECT *
-- FROM countries
-- WHERE group_name = 'C';

-- SELECT kickoff, my_country_id, enemy_country_id
-- FROM pairings;