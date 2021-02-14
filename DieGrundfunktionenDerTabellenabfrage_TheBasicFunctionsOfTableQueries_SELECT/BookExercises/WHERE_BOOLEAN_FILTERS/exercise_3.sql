SELECT
	name,
    vorname,
    gebdatum,
    austrittsgrund
FROM
	mitarbeiter
WHERE
	gebdatum < "1955.01.01" AND austrittsgrund IS NULL;