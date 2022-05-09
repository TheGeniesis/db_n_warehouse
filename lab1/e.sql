# Use subquery to get amount of empoyees and difine it by amoint of companies
SELECT (SELECT count(p.id_pracownika) FROM pracownicy p)/count(f.id_firmy) as "średnia ilość pracowników"
FROM firma f;
