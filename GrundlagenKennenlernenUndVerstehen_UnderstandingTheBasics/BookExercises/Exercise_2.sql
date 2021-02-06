/*
Programmierer : David
Datum : 06.02.2021 // 16:50
Funktion : Filtern aller Mitarbeiter, die zur Abteilung Einkauf gehören
*/

SELECT
	name, vorname, abteilung
FROM
	mitarbeiter
WHERE
	abteilung = 'einkauf';