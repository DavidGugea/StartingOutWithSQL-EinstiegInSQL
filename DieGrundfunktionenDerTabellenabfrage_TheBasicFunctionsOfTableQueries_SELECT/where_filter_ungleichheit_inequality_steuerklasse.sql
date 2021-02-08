SELECT
	name,
    vorname,
    steuerklasse,
    verheiratet
FROM
	mitarbeiter
WHERE
	steuerklasse <> 3;