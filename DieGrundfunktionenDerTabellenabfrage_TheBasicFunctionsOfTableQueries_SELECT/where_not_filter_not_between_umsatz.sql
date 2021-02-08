SELECT
	name,
    vorname,
    umsatz
FROM
	mitarbeiter
WHERE NOT
	umsatz
NOT BETWEEN 200000 AND 600000;