select distinct nationalité from Livres,Auteurs,Livres_empruntés,Emprunteurs 
where auteur_id = id_auteur and livre_id = id_livre and emprunteur_id = id_emprunteur and
ville = 'Bruxelles'; 