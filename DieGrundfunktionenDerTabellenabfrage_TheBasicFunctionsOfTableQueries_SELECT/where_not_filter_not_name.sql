SELECT
	name,
    vorname
FROM
	mitarbeiter
WHERE NOT
	name <> "Winter";
    
-- Don't select where name isn't winter, so select where name is winter -> so it's actually WHERE name = "Winter";