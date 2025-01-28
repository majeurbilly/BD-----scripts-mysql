/* ====================================== */
DROP DATABASE IF EXISTS Module04_Exercice1;
/* ====================================== */
CREATE DATABASE Module04_Exercice1;
USE Module04_Exercice1;
/* ====================================== */
CREATE TABLE SERVICES
(
    NO_SERVICE INT PRIMARY KEY,
    NOM        VARCHAR(20) NOT NULL,
    LIEU       VARCHAR(30) NOT NULL
) ENGINE = InnoDB;
/* ====================================== */
CREATE TABLE EMPLOYES
(
    NO_EMPLOYE    INT PRIMARY KEY,
    NOM           VARCHAR(30) NOT NULL,
    JOB           VARCHAR(15) NOT NULL,
    MGR           INT         NULL,
    DATE_EMBAUCHE DATE        NOT NULL,
    SALAIRE       FLOAT       NOT NULL,
    COMMISSION    FLOAT       NULL,
    NO_SERVICE    INT         NOT NULL,
    FOREIGN KEY (NO_SERVICE) REFERENCES SERVICES (NO_SERVICE),
    FOREIGN KEY (MGR) REFERENCES EMPLOYES (NO_EMPLOYE)
) ENGINE = InnoDB;
/* ====================================== */
INSERT INTO SERVICES
VALUES (10, 'Comptabilité', 'Toronto'),
       (20, 'Recherche', 'Quebec'),
       (30, 'Ventes', 'Montreal'),
       (49, 'Operation', 'Quebec');
/* ====================================== */
INSERT INTO EMPLOYES
VALUES (7839, 'Musk', 'Président', null, 1981 - 11 - 17, 5000.00, null, 10),
       (7566, 'Murdock', 'Manager', 7839, 1981 - 04 - 02, 2975.00, null, 20),
       (7902, 'Grim', 'Analyste', 7566, 1981 - 03 - 12, 3000.00, null, 20),
       (7369, 'Baillargeon', 'Employe', 7902, 1980 - 07 - 12, 800.00, null, 20),
       (7698, 'Pianetti', 'Manager', 7839, 1981 - 05 - 01, 2850.00, null, 30),
       (7499, 'Franchi', 'Vendeur', 7698, 1981 - 02 - 20, 1600.00, 300.00, 30),
       (7521, 'Ouvrard', 'Vendeur', 7698, 1981 - 02 - 22, 1250.00, 500.00, 30),
       (7654, 'Martin', 'Vendeur', 7698, 1981 - 09 - 28, 1250.00, 1400.00, 30),
       (7782, 'Deleglise', 'Manager', 7839, 1981 - 06 - 09, 2450.00, null, 10),
       (7788, 'Gorlin', 'Analyste', 7566, 1982 - 09 - 12, 3000.00, null, 20),
       (7844, 'Hulk', 'Vendeur', 7698, 1981 - 09 - 08, 1500.00, 0.00, 30),
       (7876, 'Parker', 'Employe', 7788, 1983 - 12 - 01, 1100.00, null, 20);
/* ====================================== */
INSERT INTO EMPLOYES
VALUES (8635, 'Wells', 'Manager', 7839, 1981 - 04 - 02, 4500.00, null, 20),
       (8123, 'Flash', 'Analyste', 8635, 1979 - 11 - 23, 1500.00, null, 20)
/* ====================================== */

/* ====================================== */

/* ====================================== */



