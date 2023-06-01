SELECT c.group_name, COUNT(g.id)
FROM goals g
LEFT JOIN pairings p
ON p.id = g.pairing_id
LEFT JOIN countries c
ON p.my_country_id = c.id
WHERE p.kickoff 
BETWEEN '2014-06-13 0:00:00' AND '2014-06-27 23:59:59'
GROUP BY c.group_name;