SELECT
	name,
    vorname,
    umsatz,
    bonus
FROM
	mitarbeiter
WHERE
	bonus > umsatz;