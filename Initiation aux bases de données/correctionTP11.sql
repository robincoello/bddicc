-- Script création base de données formations

-- Si Cours2 existe, on supprime.
DROP DATABASE IF EXISTS Cours2;
-- On crée la base de données
CREATE DATABASE Cours2;
-- On se positionne dans cette base de données
USE Cours2;
CREATE TABLE Professeur(
id_prof int(11),
nom varchar(128),
PRIMARY KEY(id_prof)
);
INSERT INTO Professeur(id_prof,nom)
VALUES (1,"ANDRE"),(2,"JACQUES");
CREATE TABLE Personne(
id_personne int(11),
nom varchar(128),
PRIMARY KEY(id_personne)
);
INSERT INTO Personne(id_personne,nom)
VALUES (1,"PAUL"),(2,"PIERRE"),(3,"JULES");
CREATE TABLE Formation(
id_formation int(11),
cours varchar(128),
titulaire int(11),
INDEX(titulaire),
PRIMARY KEY(id_formation),
FOREIGN KEY (titulaire) REFERENCES Professeur(id_prof)
);
INSERT INTO Formation (id_formation, cours, titulaire)
VALUES (1,"ANALYSE",2),(2,"SQL",2),(3,"COBOL",1);
CREATE TABLE Suivre(
cours int(11),
stagiaire int(11),
PRIMARY KEY(cours,stagiaire),
FOREIGN KEY (cours) REFERENCES Formation(id_formation),
FOREIGN KEY (stagiaire) REFERENCES Personne(id_personne)
);
INSERT INTO Suivre (cours, stagiaire)
VALUES (1,2),(1,3),(2,2);