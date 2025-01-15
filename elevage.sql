DROP
DATABASE IF EXISTS elevage;
CREATE
DATABASE elevage;
USE
elevage;
DROP
DATABASE IF EXISTS Animal;
CREATE TABLE Animal
(
    id             SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    espace         VARCHAR(40) NOT NULL,
    sexe           CHAR(1),
    date_naissance DATETIME    NOT NULL,
    nom            VARCHAR(30),
    commentaire    TEXT,
    PRIMARY KEY (id) comment
) ENGINE=InnoDB;
INSERT INTO Animal VALUES (1, 'chien ', 'M', '2017-04-05 13:43:00', 'Oli', 'Mordille beaucoup ');
INSERT INTO Animal VALUES (2, 'chat', NULL , '2017-03-24 02:23:00', 'Luna ', NULL);
INSERT INTO Animal (nom, commentaires, date_naissance, espece) VALUES ('Choupi ', 'Né sans oreille gauche ', '2010 -10 -03 16:44:00', 'chat ');
INSERT INTO Animal (espece, date_naissance, commentaires, nom, sexe) VALUES ('tortue ', '2009 -06 -13 08:17:00', 'Carapace bizarre ', 'Bobosse ', 'F');