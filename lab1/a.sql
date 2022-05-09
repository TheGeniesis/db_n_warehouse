# Get all users
SELECT * FROM pracownicy p;

# Get people
SELECT * FROM osoba o;

# Get names from all employees
# Check table pracownicy, and then iterate table osoby one id_osoby after another
# if record doesn't exists in pracownicy, skip it
SELECT o.imie, o.nazwisko FROM pracownicy p 
LEFT JOIN osoba o ON p.id_osoby = o.id_osoby; 
