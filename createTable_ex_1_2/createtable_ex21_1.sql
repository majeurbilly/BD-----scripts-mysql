DROP DATABASE IF EXISTS createtable_ex21_1;
/* ================================================== */
CREATE DATABASE createtable_ex21_1;
/* ================================================== */
USE createtable_ex21_1;
/* ================================================== */
DROP TABLE IF EXISTS tableMaintenance;
/* ================================================== */
CREATE TABLE tableMaintenance
(
    id          INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    jour        VARCHAR(3)      NOT NULL,
    machine     VARCHAR(8)      NOT NULL,
    numero      INT             NOT NULL,
    vitesse     FLOAT,
    temperature INT,
    heure       TIME            NOT NULL,
    envenement  VARCHAR(50)     NOT NULL
);
/* ================================================== */
INSERT INTO tableMaintenance (jour, machine, numero, vitesse, temperature, heure, envenement)
VALUES ('Ven', 'Massicot', 147, NULL, NULL, '21:18', 'Défaut de lame'),
       ('Sam', 'Relieuse', 63, 16, NULL, '16:15', 'Arrêt pour maintenance'),
       ('Jeu', 'Presse', 87, 6, 62, '11:40', 'Bavure d`encre'),
       ('Sam', 'Relieuse', 79, 16, NULL, '17:11', 'Reprise'),
       ('Mar', 'Presse', 89, 6, 55, '08:28', 'Recadrage'),
       ('Mar', 'Presse', 132, 8, 68, '09:58', 'Changement encre'),
       ('Mer', 'Massicot', 111, NULL, NULL, '10:17', 'Graissage coulisseau');
/* ================================================== */
DESCRIBE tableMaintenance;
/* ================================================== */
SELECT *
FROM tableMaintenance;