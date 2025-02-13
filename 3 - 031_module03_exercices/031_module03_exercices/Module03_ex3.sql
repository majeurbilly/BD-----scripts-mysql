DROP DATABASE IF EXISTS Module03_ex3;
CREATE DATABASE Module03_ex3;
USE Module03_ex3;

DROP TABLE IF EXISTS Utilisateur;
CREATE TABLE Utilisateur
(
	UTL_NOM    VARCHAR(32),
	UTL_PRENOM VARCHAR(32),
	UTL_AGE    int,
	UTL_COURRIEL VARCHAR(50)
 ) ENGINE = InnoDB;
INSERT INTO Utilisateur VALUES ('Dupont', 'Marcel',25, 'mdupont@gmail.com');
INSERT INTO Utilisateur VALUES ('Duval',  'André',36,  NULL);
INSERT INTO Utilisateur VALUES ('Durand', 'Jean', 28,  'jean@live.ca');
INSERT INTO Utilisateur VALUES ('Dugland', 'Alfred',39,'alfabeta@hotmail.com');
INSERT INTO Utilisateur VALUES ('Labonte', 'Dave',22,  'dave@gmail.com');
INSERT INTO Utilisateur (UTL_NOM, UTL_PRENOM) VALUES ( 'Dubois', 'Claude');
INSERT INTO Utilisateur (UTL_NOM, UTL_PRENOM, UTL_AGE) VALUES ('Ble', 'Seb',43);
INSERT INTO Utilisateur (UTL_NOM, UTL_PRENOM, UTL_AGE) VALUES ('Incorrect', 'Age',20);


-- Changer la definition de la table. 
-- Ajouter un id (clé primaire) et auto_increment

 
-- Courriel est UNIQUE
-- AGE >21 
 
-- Il faut utiliser ALTER TABLE
-- ajouter la colonne sexe qui accepte les valeurs suivantes : F, M, X et I (inconnu)
-- la valeur par defaut est I
 
-- Supprimer la contrainte CHK_AGE 
 
-- Ajouter la contrainte CHK_AGE mais cette fois ci l'age>=18

 