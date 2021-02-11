SELECT
	name,
    vorname,
    umsatz,
    ueberstunden,
    abteilung
FROM
	mitarbeiter
WHERE
	umsatz > 500000 AND ueberstunden > 0 AND abteilung = "Verkauf";