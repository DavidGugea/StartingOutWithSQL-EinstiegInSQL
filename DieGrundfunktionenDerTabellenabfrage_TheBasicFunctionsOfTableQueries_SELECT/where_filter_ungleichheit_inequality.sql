SELECT
	name,
    vorname,
    steuerklasse,
    verheiratet
FROM
	mitarbeiter
WHERE
	verheiratet <> "ja";