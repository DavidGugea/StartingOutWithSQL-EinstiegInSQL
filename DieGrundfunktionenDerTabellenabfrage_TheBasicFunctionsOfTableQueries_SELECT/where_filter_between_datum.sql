SELECT
	name,
    vorname,
    eintrittsdatum
FROM
	mitarbeiter
WHERE
	eintrittsdatum
BETWEEN "1981-01-01" AND "1984-12-31";