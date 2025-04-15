DROP DATABASE IF EXISTS compta;
CREATE DATABASE compta;

USE compta;

CREATE TABLE article (
	id INT(6) PRIMARY KEY,
    ref VARCHAR(30) NOT NULL,
    designation VARCHAR(255) NOT NULL,
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

-- table article qui va référencer la table fournisseur
-- ALTER TABLE table principal ADD CONSTRAINT FOREIGN KEY (id de la clé étrangère) REFERENCES table étrangère (id principale)
ALTER TABLE article ADD CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur (id);
ALTER TABLE bon ADD CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur (id);
ALTER TABLE compo ADD CONSTRAINT FOREIGN KEY (id_art) REFERENCES article (id);
ALTER TABLE compo ADD CONSTRAINT FOREIGN KEY (id_bon) REFERENCES bon (id);

-- création des valeurs des tables
INSERT INTO fournisseur (id, nom) values 
(1,'Française d''imports'),
(2,'FDM SA'),
(3,'Dubois & Fils');


INSERT INTO article (id, ref, designation, prix, id_fou) values 
(1, 'A01', 'Perceuse P1', 74.99, 1),
(2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2),
(3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2),
(4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.40, 3),
(5, 'A02', 'Meuleuse 125mm', 37.85, 1),
(6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', 1.80, 3),
(7, 'A03', 'Perceuse à colonne', 185.25, 1),
(8, 'D04', 'Coffret mêches à bois', 12.25, 3),
(9, 'F03', 'Coffret mêches plates', 6.25, 2),
(10, 'F04', 'Fraises d''encastrement', 8.14, 2);

INSERT INTO bon (id, numero, delai, id_fou) VALUES (1, 1, 3, 1); 

INSERT INTO compo (qte, id_art, id_bon) VALUES 
(3, 1, 1),
(4, 5, 1),
(1, 7, 1);

