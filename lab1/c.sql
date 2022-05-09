# Use GROUP BY to get summary type information about specific data
SELECT count(f.id_firmy) as "ilość pracowników", f.nazwa 
FROM pracownicy p
LEFT JOIN firma f ON p.id_firmy = f.id_firmy 
GROUP BY f.id_firmy
ORDER BY count(f.id_firmy) ASC; 
