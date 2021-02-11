SELECT
	name,
    vorname,
    austrittsdatum,
    austrittsgrund
FROM
	mitarbeiter
WHERE
	austrittsdatum IS NOT NULL AND NOT austrittsgrund = "ruhestand";