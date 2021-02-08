SELECT
	name,
    vorname,
    strasse,
    hausnummer
FROM
	mitarbeiter
WHERE 
	strasse
NOT LIKE
	"%straße";