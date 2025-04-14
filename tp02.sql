DROP DATABASE IF EXISTS compta;
CREATE DATABASE compta;

USE compta;

CREATE TABLE article (
	id INT(6) PRIMARY KEY,
    ref VARCHAR(30) NOT NULL,
    designation VARCHAR(30) NOT NULL,
    prix DECIMAL(8,2) NOT NULL,
    id_fou INT(6) 
);

CREATE TABLE fournisseur(
	id INT(6) PRIMARY KEY,
    nom VARCHAR(30) NOT NULL
);

CREATE TABLE bon (
	id INT(6) PRIMARY KEY,
    numero INT(30) NOT NULL,
    date_cmde TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    delai INT(6),
    id_fou INT(6) 
);

CREATE TABLE compo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    qte INT(6) NOT NULL,
    id_art INT,
    id_bon INT 
);

ALTER TABLE article ADD CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur (id);
