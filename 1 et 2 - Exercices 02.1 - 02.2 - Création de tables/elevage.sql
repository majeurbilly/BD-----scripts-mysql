DROP DATABASE IF EXISTS elevage;
/* ================================================== */
CREATE DATABASE elevage CHARACTER SET 'utf8';
/* ================================================== */
USE elevage;
/* ================================================== */
CREATE TABLE Animal
(
    id             SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    espece         VARCHAR(40)       NOT NULL,
    sexe           CHAR(1),
    date_naissance DATETIME          NOT NULL,
    nom            VARCHAR(30),
    commentaires   TEXT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;
/* ================================================== */
INSERT INTO Animal
VALUES (1, 'chien ', 'M', '2017-04-05 13:43:00', 'Oli', 'Mordille beaucoup ');
/* ================================================== */
INSERT INTO Animal
VALUES (2, 'chat', NULL, '2017-03-24 02:23:00', 'Luna ', NULL);
/* ================================================== */
INSERT INTO Animal (espece, sexe, date_naissance, nom)
VALUES ('chien ', 'F', '2008-12-06 05:18:00', 'Caroline'),
       ('chat ', 'M', '2008-09-11 15:38:00', 'Bagherra'),
       ('tortue ', NULL, '2010-08-23 05:18:00', NULL);
/* ================================================== */
DESCRIBE Animal;
/* ================================================== */
SELECT *
FROM Animal;
/* ================================================== */
DELETE FROM Animal WHERE id = 6;