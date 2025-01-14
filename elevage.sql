DROP DATABASE IF EXISTS elevage;
CREATE DATABASE elevage;
USE elevage;
DROP DATABASE IF EXISTS Animal;
CREATE TABLE Animal (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    espace VARCHAR(40) NOT NULL,
    sexe CHAR(1),
    date_naissance DATETIME NOT NULL,
    nom VARCHAR(30),
    commentaire TEXT,
    PRIMARY KEY (id)comment
) ENGINE=InnoDB;