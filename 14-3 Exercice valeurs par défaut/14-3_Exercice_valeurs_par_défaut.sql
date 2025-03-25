drop database if exists market;
CREATE DATABASE if not exists market ;

USE market;

CREATE TABLE produits (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          nom VARCHAR(255) NOT NULL,
                          prix DECIMAL(10, 2) DEFAULT 0.00,
                          stock INT DEFAULT 10,
                          date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE produits;
SELECT * FROM produits;
INSERT INTO produits (nom) VALUES ('Ordinateur portable');
INSERT INTO produits (nom, prix) VALUES ('Souris', 15.99);
INSERT INTO produits (nom, prix, stock) VALUES ('Clavier', 29.99, 5);
INSERT INTO produits (nom, prix, stock, date_creation) VALUES ('Écran', 199.99, 20, '2023-10-27 10:00:00');

ALTER TABLE produits ALTER stock SET DEFAULT 20;

CREATE OR REPLACE VIEW billy
AS SELECT COUNT(*) nom FROM produits;
SELECT * FROM billy;