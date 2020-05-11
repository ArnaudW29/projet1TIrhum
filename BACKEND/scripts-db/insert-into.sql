/* ARNAUD WAETERMANS 
insertion des noms des rhums */

INSERT INTO tbNoms(nomId, nomNom)
VALUES 
(1, 'Rhum a la banane'),
(2, 'Rhum a la fraise et citron vert'),
(3, 'Rhum au piment oiseau'),

/* ARNAUD WAETERMANS 
insertion des ingredients et prix pour les rhums */

INSERT INTO tbIngredient (ingreId, ingreNom)
VALUES
(1, 'banane' ),
(2, 'vanille'),
(3, 'fraise' ),
(4, 'citron vert'),
(5, 'gingembre'),
(6,'piment oiseau')
/*  a continuer */


/* ARNAUD WAETERMANS 
insertion de tout les rhums disponibles */

INSERT INTO tbAlcool(alcoolId, alcoolNom, alcoolDegre)
VALUES 
(1,'rhum agricole saint james',40),
(2,'rhum agricole saint james',45),
(3,'rhum agricole saint james',50)

/* ARNAUD WAETERMANS 
insertion des unites et symboles */

INSERT INTO tbUnite(uniteId,uniteNom,uniteSymbole)
VALUES 
(1,'Gousse', NULL),
(2,'Gramme', 'g'),
(3,'Kilogramme','kg'),
(4,'Morceau', NULL),
(5,'entiere', NULL),
(6,'Litre','L'),
(7,'Centilitre', 'cl'),
(8,'entier',NULL)
/*  a continuer */

/* ARNAUD WAETERMANS */

INSERT INTO tbRhum (nomId,recetteId,alcoolId,rhumQte,rhumUnite, rhumPrix, rhumMacer, rhumDeroulement)
VALUES 
(1,1, 1,75,'cl', 7.12,  '3 mois','couper les bananes en tranches et les inserer dans un fond de rhum ajouter une gousse de vanille couper en tranche'),
(2,2, 2,1,'L',10,'2 mois', 'couper les fraises en tranches presser les citrons vert pour y mettre le jus'),
(3,3,1,75,'cl',7,32,' 1 semaine', 'faire des petits trous dans les piments puis les mettres dans le rhum ajouter du gingembre couper en tranche')
/* a continuer */

/* ARNAUD WAETERMANS */

INSERT INTO tbRecette_ingre (recetteId,ingreId,uniteId,quantité)
VALUES 
(1,1,5,5), /* 5 banane entiere dans le rhum 1 */
(1,2,1,1), /* 1 gousse de vanille dans le rhum 1*/
(2,3,2,200),
(2,4,7,50),
(3,6,8,8),
(3,5,2,35)

/*  a continuer */

