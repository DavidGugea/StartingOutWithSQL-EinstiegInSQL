SELECT
	name,
    vorname,
    abteilung
FROM
	mitarbeiter
WHERE
	abteilung
		NOT IN 
        (
			"Personal",
            "Vertrieb",
            "Controlling",
            "Verkauf"
		);