DROP DATABASE IF EXISTS createtable_ex21_1;
CREATE DATABASE createtable_ex21_1;
USE createtable_ex21_1;
DROP DATABASE IF EXISTS tableMaintenance;
CREATE TABLE tableMaintenance (
	jour VARCHAR(3) NOT NULL,
    machine VARCHAR(8) NOT NULL,
    numero INT NOT NULL,
    vitesse FLOAT,
    temperature INT,
    heure TIME NOT NULL,
    envenement VARCHAR(50) NOT NULL
);