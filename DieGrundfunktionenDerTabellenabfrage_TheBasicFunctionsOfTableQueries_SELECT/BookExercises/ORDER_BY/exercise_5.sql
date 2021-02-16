SELECT
	name,
    vorname,
    austrittsgrund,
    austrittsdatum
FROM
	mitarbeiter
WHERE
	austrittsgrund = "ruhestand"
ORDER BY 
	austrittsdatum;