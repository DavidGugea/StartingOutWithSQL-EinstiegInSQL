SELECT
	name,
    vorname,
    ueberstunden,
    anzahlkinder
FROM	
	mitarbeiter
WHERE	
	ueberstunden > 0 AND anzahlkinder > 0;