SELECT
	name,
    vorname,
    krankenversicherung
FROM
	mitarbeiter
WHERE
	krankenversicherung = "MH Plus Bonn" OR krankenversicherung = "IKK gesund plus";