SELECT
	name,
    vorname,
    umsatz
FROM
	mitarbeiter
WHERE 
	 umsatz
NOT BETWEEN 200000 AND 600000;