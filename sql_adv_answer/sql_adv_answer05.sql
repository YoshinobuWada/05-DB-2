SELECT x.kickoff AS 'キックオフ日時', y.name AS '国名1', z.name AS '国名2'
FROM pairings x
JOIN countries y
ON x.my_country_id = y.id
JOIN countries z
ON x.enemy_country_id = z.id 
ORDER BY キックオフ日時 ASC;