SELECT
	name,
    vorname,
    steuerklasse,
    anzahlkinder,
    verheiratet
FROM
	mitarbeiter
WHERE
	steuerklasse = 1
AND
(	anzahlkinder > 0
OR
	verheiratet = "ja");