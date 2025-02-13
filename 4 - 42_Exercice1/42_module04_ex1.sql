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
VALUES (7839, 'Musk', 'Président', 7839, '1981-11-17', 5000.00, NULL, 10),
       (7566, 'Murdock', 'Manager', 7839, '1981-04-02', 2975.00, NULL, 20),
       (7902, 'Grim', 'Analyste', 7566, '1981-03-12', 3000.00, NULL, 20),
       (7369, 'Baillargeon', 'Employe', 7902, '1980-07-12', 800.00, NULL, 20),
       (7698, 'Pianetti', 'Manager', 7839, '1981-05-01', 2850.00, NULL, 30),
       (7499, 'Franchi', 'Vendeur', 7698, '1981-02-20', 1600.00, 300.00, 30),
       (7521, 'Ouvrard', 'Vendeur', 7698, '1981-02-22', 1250.00, 500.00, 30),
       (7654, 'Martin', 'Vendeur', 7698, '1981-09-28', 1250.00, 1400.00, 30),
       (7782, 'Deleglise', 'Manager', 7839, '1981-06-09', 2450.00, NULL, 10),
       (7788, 'Gorlin', 'Analyste', 7566, '1982-09-12', 3000.00, NULL, 20),
       (7844, 'Hulk', 'Vendeur', 7698, '1981-09-08', 1500.00, 0.00, 30),
       (7876, 'Parker', 'Employe', 7788, '1983-12-01', 1100.00, NULL, 20);
/* ====================================== */
INSERT INTO EMPLOYES
VALUES (8635, 'Wells', 'Manager', 7839, '1981-04-02', 4500.00, null, 20),
       (8123, 'Flash', 'Analyste', 8635, '1979-11-23', 1500.00, null, 20);
/* ====================================== */
SELECT
    NO_EMPLOYE AS 'No. employé',
    NOM AS 'Nom',
    JOB AS 'Role',
    MGR AS 'Responsable',
    DATE_EMBAUCHE AS 'Date d\'embauche',
    SALAIRE AS 'Salaire',
    COMMISSION AS 'Commission',
    NO_SERVICE AS 'Numéro de service',
    CASE
        WHEN COMMISSION IS NOT NULL THEN COMMISSION
        ELSE 'Aucune'
        END AS 'Commission2',
    NO_SERVICE AS 'Numéro de service'
FROM EMPLOYES
WHERE MGR IS NULL OR MGR = 7698 OR MGR = 7839;
/* ====================================== */
SELECT
    NOM,
    SALAIRE,
    NO_SERVICE
FROM EMPLOYES
WHERE NO_SERVICE = 10;
/* ====================================== */
SELECT
    NOM,
    SALAIRE,
    NO_SERVICE
FROM EMPLOYES
WHERE NO_SERVICE IN (10, 20);
/* ====================================== */
SELECT
    NOM,
    SALAIRE,
    COMMISSION,
    NO_SERVICE
FROM EMPLOYES
WHERE COMMISSION = 0;
/* ====================================== */
SELECT
    NOM,
    SALAIRE,
    COMMISSION,
    NO_SERVICE
FROM EMPLOYES
WHERE COMMISSION != 0;
/* ====================================== */
SELECT
    NOM,
    JOB
FROM EMPLOYES
WHERE JOB = 'Manager' AND SALAIRE > 2500;
/* ====================================== */
SELECT
    NOM,
    SALAIRE
FROM EMPLOYES
WHERE SALAIRE < 1500 OR SALAIRE > 2000;
/* ====================================== */
#7
/* ====================================== */
