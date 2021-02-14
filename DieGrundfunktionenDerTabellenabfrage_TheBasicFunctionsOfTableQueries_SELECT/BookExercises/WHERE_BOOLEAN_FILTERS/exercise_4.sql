SELECT
	name,
	vorname,
    verheiratet,
	geschlecht,
    anzahlkinder
FROM
	mitarbeiter
WHERE
	geschlecht = "w" AND verheiratet = "nein" AND anzahlkinder = 0;