SELECT c.name, COUNT(c.name)
FROM countries c
LEFT JOIN pairings p
ON p.my_country_id = c.id 
LEFT JOIN goals g
ON g.pairing_id = p.id
WHERE p.id IN('39','103')
GROUP BY c.name;