DROP DATABASE IF EXISTS createtable_ex21_2;
CREATE DATABASE createtable_ex21_2;
USE createtable_ex21_2;
CREATE TABLE tableProvaince
(
    nom        VARCHAR(30) NOT NULL,
    code       VARCHAR(2)  NOT NULL PRIMARY KEY,
    date       DATE        NOT NULL,
    population INT         NOT NULL,
    superficie INT         NOT NULL,
    densite    FLOAT       NOT NULL,
    capitale   VARCHAR(30) NOT NULL
);
ALTER TABLE tableProvaince
    ADD COLUMN dateMAJ TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
DESCRIBE tableProvaince;
/* ================================================== */
INSERT INTO tableProvaince (nom, code, date, population, superficie, densite, capitale)
VALUES ('Alberta', 'AB', '1905-09-01', 4067175, 661848, 6.15, 'Edmonton'),
       ('Colombie-Britannique', 'BC', '1871-07-20', 4648055, 944735, 4.92, 'Victoria'),
       ('Île-du-Prince-Édouard', 'PE', '1873-07-01', 142907, 5660, 25.25, 'Charlottetown'),
       ('Manitoba', 'MB', '1870-07-15', 1278365, 72908, 1.97, 'Winnipeg'),
       ('Nouveau-Brunswick', 'NB', '1867-07-01', 747101, 72908, 10.25, 'Fredericton'),
       ('Nouvelle-Écosse', 'NS', '1867-07-01', 923598, 55284, 16.71, 'Halifax'),
       ('Ontario', 'ON', '1867-07-01', 13448494, 1076395, 12.49, 'Toronto'),
       ('Québec', 'QC', '1867-07-01', 8164361, 1542056, 5.3, 'Québec'),
       ('Saskatchewan', 'SK', '1905-09-01', 1098352, 651036, 1.69, 'Regina'),
       ('Terre-Neuve-et-Labrador', 'NL', '1949-03-31', 519716, 405212, 1.28, 'Saint John''s'),
       ('Nunavut', 'NU', '1999-04-01', 35994, 2093190, 0.02, 'Iqaluit'),
       ('Territoires du Nord-Ouest', 'NT', '1870-07-15', 41786, 1346106, 0.03, 'Yellowknife'),
       ('Yukon', 'YT', '1898-06-13', 35874, 482443, 0.07, 'Whitehorse');

SELECT *
FROM tableProvaince;
/* ================================================== */
CREATE TABLE tablepays
(
    id   INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pays VARCHAR(50)     NOT NULL
);
DESCRIBE tablepays;
INSERT INTO tablepays (pays)
    VALUE ('Canada');
SELECT *
FROM tablepays;
/* ================================================== */
CREATE TABLE tableville
(
    id       INT PRIMARY KEY NOT NULL,
    nom VARCHAR(30)
);
INSERT INTO tableville (tableville.nom)
SELECT tableProvaince.capitale
FROM tableProvaince;

DESCRIBE tableville;
SELECT *
FROM tableville;
/* ================================================== */
ALTER TABLE tableville
    ADD CONSTRAINT fk_tableprovince_tableville
        FOREIGN KEY (nom)
            REFERENCES tableProvaince (capitale);
/* ================================================== */
ALTER TABLE tableProvaince
    ADD CONSTRAINT fk_tableprovince_tableville
        FOREIGN KEY (capitale)
            REFERENCES tableville (nom);
/* ================================================== */
