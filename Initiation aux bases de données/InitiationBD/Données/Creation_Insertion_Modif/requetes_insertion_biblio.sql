INSERT INTO Auteurs (nom,prénom,nationalité,année_naiss) values 
		('Hennes','Georges','Belge',1925),
		('Stein','Helmut','Allemand',1915),
		('Grim','Alexandre','Français',1913),
		('Manok','Henry','Américain',1875),
		('footcheball','But','Brésilien',1943);
		
INSERT INTO Livres (id_auteur,titre,éditeur,prix,emprunté,critique,genre,
								année_edit,nb_pg,nb_exempl) values 
		(10,'Bleu je veux','Essentiel',2500,1,'Bon','Essai',2001,57,10),
		(3,'Les étoiles','Gallimard',250,1,'Excellent','Roman',1948,326,4),
		(14,'Mes Pensées','Lombard',340,1,'Très bon','Traité',1984,325,10),
		(12,'l\'empire de l\'argent','Lombard',440,0,'Mauvais','Roman',1967,458,15),
		(10,'Intro aux BD','Savoir',500,1,'Très mauvais','Scolaire',2002,400,6),
		(4,'Les Intégrales','Essentiel',750,0,'La bible','Scolaire',1998,321,8),
		(11,'Moi et les fourmis','Lombard',350.25,0,'Bon','Essai',1967,569,15),
		(6,'J\'ai mangé ma mère','France',178,0,'Très bon','Roman',1949,874,21);		
		
INSERT INTO Livres_empruntés (id_livre,id_emprunteur,date_emprunt,retard) values 
		(14,7,'2001-04-25',0),
		(16,4,'2001-02-15',1),
		(12,10,'2001-06-22',0),
		(13,6,'2001-12-14',1),
		(16,1,'2000-01-25',1);		