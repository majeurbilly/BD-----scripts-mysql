DROP DATABASE IF EXISTS rempart_calendar_match_bd;
CREATE DATABASE IF NOT EXISTS rempart_calendar_match_bd;
USE rempart_calendar_match_bd;

CREATE TABLE calendrier_remparts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_du_match DATETIME,
    visiteur VARCHAR(30),
    local VARCHAR(30)
);
-- verifier l'import de file local
SHOW VARIABLES LIKE 'local_infile';

-- si necessaire > activation de l'import local
SET GLOBAL local_infile = 'ON';

-- import csv
-- insert in table
-- spécifie quel caractère est utilisé pour séparer les champs
-- indique à MySQL d'ignorer la première ligne du fichier
LOAD DATA INFILE './REPARTS.CSV'
INTO TABLE calendrier_remparts
FIELDS TERMINATED BY '|'
IGNORE 1 ROWS ;

-- verifier l'import
SELECT * FROM calendrier_remparts;

-- NB DE PARTIE EN JANVIER
SELECT COUNT(*) FROM calendrier_remparts WHERE MONTH(date_du_match) = 1;

-- NB DE PARTIE JOUER LE 2EME JOURS DE CHAQUE MOIS
SELECT COUNT(*) FROM calendrier_remparts WHERE DAY(date_du_match) = 2;

-- NB DE PARTIE
-- MATCHS.DATE EN AAAAWW <= 2013-02-24 DANS LE FORMAT AAAAWW
SELECT COUNT(*) FROM calendrier_remparts
WHERE YEARWEEK(date_du_match) <= YEARWEEK('2013-02-24')
AND YEAR(date_du_match) = 2013;

-- selct la jour et le nom du mois du visiteur et du local de la bd
-- en 2012
-- les 50 premieres semaine *1* signifie que la premiere semaine commence au jour 1 (LUNDI)
-- que les partie ou local n'est pas qc *<>* signifie !=
SELECT DAY(date_du_match), MONTHNAME(date_du_match), visiteur, local FROM calendrier_remparts
WHERE YEAR(date_du_match) = 2012
AND WEEK(date_du_match, 1) >= 50
AND local <> 'Québec';

-- SELECT en format week day mount year la date du match
-- dans la table
-- egale a 2012
-- les 50e premieres semaines en considérant le jour 1 comme lundi
-- quand qc n'est pas local
SELECT DATE_FORMAT(date_du_match, '%W %d %M %Y')
FROM calendrier_remparts
WHERE YEAR(date_du_match) = 2012
AND WEEK(date_du_match, 1) >= 50
AND local <> 'Québec';

-- SELECT LE MIN ET LE MAX, SELCT LA DIFF ENTRE LE DEUX
SELECT MIN(date_du_match), MAX(date_du_match), DATEDIFF(MAX(date_du_match), MIN(date_du_match))
FROM calendrier_remparts;

-- SELECT les matchs avec ce format la
SELECT DATE_FORMAT(date_du_match, '%W %d %b %Y à %h:%i %p')
FROM calendrier_remparts;
