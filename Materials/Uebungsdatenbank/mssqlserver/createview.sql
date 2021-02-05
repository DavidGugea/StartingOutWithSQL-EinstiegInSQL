create view mitarbeiterkrankenkasse as
select m.mitarbeiterid, m.name,m.vorname,k.krankenkasse,k.beitragssatz
from mitarbeiter2 m inner join krankenkasse k
on m.krankenkassenid=k.krankenkassenid;