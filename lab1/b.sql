# Use ORDER BY to order by name, by default it's a->z
SELECT o.imie, o.nazwisko  FROM pracownicy p 
LEFT JOIN osoba o ON p.id_osoby = o.id_osoby
ORDER BY o.nazwisko; 
