# Get average price from salary
# JOIN tables to get names (for better readability)
# split results by company and deparment
# Optional order just for better view 
SELECT AVG(wynagrodzenie) as "Średnie wynagordzenie", f.nazwa, d.nazwa 
FROM pracownicy p
LEFT JOIN firma f ON f.id_firmy = p.id_firmy 
LEFT JOIN departament d ON d.id_departamentu = p.id_departamentu 
GROUP BY p.id_firmy, p.id_departamentu
ORDER BY f.nazwa ASC, AVG(wynagrodzenie) DESC;
