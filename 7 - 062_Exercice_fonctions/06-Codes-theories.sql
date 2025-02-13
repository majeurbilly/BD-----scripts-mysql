use musique;
---- exemple fonctions chaine caracteres
select nomMusicien, length(nomMusicien) LN, substr(nomMusicien,2,4) SB24, 
replace(nomMusicien,'e','&') nomE,RPAD(nomMusicien,6,'*') rpad6 ,
Upper(nomMusicien) maj, Lower(left(nomMusicien,3)) left3
from musicien order by ln;

-- group by


--- group by especes
SELECT espece_id, COUNT(*) AS nb_animaux
FROM Animal
GROUP BY espece_id;
SELECT COUNT(*) AS nb_animaux
FROM Animal
GROUP BY espece_id;
-- group by avec le nom 
SELECT nom_courant, COUNT(*) AS nb_animaux
FROM Animal
INNER JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY nom_courant;
-- groupp by avec date naissance
SELECT nom_courant, COUNT(*) AS nb_animaux,date_naissance, nom,sexe
FROM Animal
INNER JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY nom_courant;
-- group by qui est permis
SELECT Espece.id, nom_courant, nom_latin, COUNT(*) AS nb_animaux
FROM Animal
INNER JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY nom_courant, Espece.id, nom_latin;

--Tri des données
SELECT Espece.id, nom_courant, nom_latin, COUNT(*) AS nb_animaux
FROM Animal INNER JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY nom_courant, Espece.id, nom_latin
ORDER BY nb_animaux;

-- on compte les null
SELECT Espece.nom_courant, COUNT(*) AS nb_animaux
FROM Animal RIGHT JOIN Espece ON Animal.espece_id = Espece.id 
GROUP BY nom_courant;

-- on comptes les especes id (0)
SELECT Espece.nom_courant, COUNT(Animal.espece_id) AS nb_animaux
FROM Animal RIGHT JOIN Espece ON Animal.espece_id = Espece.id
GROUP BY nom_courant;


SELECT nom_courant, sexe, COUNT(*) as nb_animaux
FROM Animal INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant, sexe;

-- With RollUP NULL
SELECT nom_courant, COUNT(*) as nb_animaux
FROM Animal INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant WITH ROLLUP;

-- WITH ROLLUP COALESCE
SELECT COALESCE(nom_courant, 'Total'), COUNT(*) as nb_animaux
FROM Animal INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant WITH ROLLUP;

--- Having
SELECT nom_courant, COUNT(*)
FROM Animal INNER JOIN Espece ON Espece.id = Animal.espece_id
GROUP BY nom_courant
HAVING COUNT(*) > 15;