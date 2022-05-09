# Get all clients, get relation to the city, get related cities
# Group by city to get amount. The amount is false, because one client can be assigned to many companies
SELECT count(k.id_klienta) as "ilość klientów", m.nazwa 
FROM klient k 
LEFT JOIN osoba o ON o.id_osoby = k.id_osoby 
LEFT JOIN miasto m ON m.id_miasta = o.id_miasta
GROUP BY m.id_miasta
ORDER BY COUNT(k.id_klienta) DESC
LIMIT 10
;
