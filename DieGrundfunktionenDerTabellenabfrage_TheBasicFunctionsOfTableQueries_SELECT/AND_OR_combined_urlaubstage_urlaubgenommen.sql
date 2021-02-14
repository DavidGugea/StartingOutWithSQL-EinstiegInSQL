SELECT
	name,
    vorname,
    urlaubstage,
    urlaubgenommen
FROM
	mitarbeiter
WHERE
	urlaubstage = 30 AND urlaubgenommen < 20
    OR
    urlaubstage = 15 AND urlaubgenommen < 10;