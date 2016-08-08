select distinct nationalit� from Livres,Auteurs,Livres_emprunt�s,Emprunteurs 
where auteur_id = id_auteur and livre_id = id_livre and emprunteur_id = id_emprunteur and
ville = 'Bruxelles'; /* essayer cette requ�te en supprimant le mot r�serv� "distinct"*/
									OU
select distinct nationalit� from Auteurs join Livres on auteur_id = id_auteur join Livres_emprunt�s on livre_id = id_livre join Emprunteurs on id_emprunteur = emprunteur_id
where ville = 'Bruxelles';	
								

select distinct nom, pr�nom from auteurs, livres where auteur_id = id_auteur and genre in ('roman','trait�','essai') and nationalit� not like 'belge'; 
									OU
select distinct nom, pr�nom from auteurs, livres where auteur_id = id_auteur and genre in ('roman','trait�','essai') and nationalit� not in ('belge');		
									OU
select distinct nom, pr�nom from auteurs, livres where auteur_id = id_auteur and (genre ='roman' or genre='trait�' or genre='essai') and nationalit� not in ('belge');	
                                    OU
select distinct nom, pr�nom from auteurs join livres on auteur_id = id_auteur where (genre ='roman' or genre='trait�' or genre='essai') and nationalit� not in ('belge');


select titre , prix * nb_exempl as 'prix total d\'acquisition' from livres;


select distinct nom from auteurs join livres on auteur_id = id_auteur where critique in ('bon','tr�s bon', 'excellent') order by nom desc;


select genre, count (genre) from livres where genre in('essai', 'scolaire', 'trait�') group by genre;


SELECT AUTEURS.Nom, Sum(livres.nb_exempl) AS total_exemplaires_par_auteur
FROM AUTEURS JOIN livres ON auteur_id = id_auteur
GROUP BY AUTEURS.Nom;



SELECT AUTEURS.Nom, Sum(livres.nb_exempl * prix) AS prix_total_achat_par_auteur
FROM AUTEURS JOIN livres ON auteur_id = id_auteur
GROUP BY AUTEURS.Nom;
alter table livres drop column emprunt�;