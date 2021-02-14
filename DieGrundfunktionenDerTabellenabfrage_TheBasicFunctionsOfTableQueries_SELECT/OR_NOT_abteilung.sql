SELECT
	name,
    vorname,
    abteilung
FROM	
	mitarbeiter
WHERE
	abteilung = "Einkauf" OR NOT abteilung = "Personal";