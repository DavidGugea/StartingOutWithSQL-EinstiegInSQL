SELECT
	mitarbeiterid,
    name,
    vorname,
    anzahlkinder
FROM
	mitarbeiter
WHERE NOT
	anzahlkinder = 0