SELECT
	name,
    vorname,
    abteilung,
    umsatz
FROM
	mitarbeiter
WHERE
	umsatz IS NOT NULL;