SELECT
	name,
    vorname,
    geschlecht,
    abteilung
FROM
	mitarbeiter
WHERE
	abteilung = "vertrieb"
AND
	geschlecht = "m";