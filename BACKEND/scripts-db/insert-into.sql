/* ARNAUD WAETERMANS 
insertion des noms des rhums */

INSERT INTO tbNoms(nomId, nomNom)
VALUES 
(1, 'Rhum a la banane'),
(2, 'Rhum a la fraise et citron vert'),
(3, 'Rhum au piment oiseau'),
(4, 'Rhum aux bananes flambées'),
(5, 'Rhum au café'),
(6, 'Rhum au bounty')

/* ARNAUD WAETERMANS 
insertion des ingredients et prix pour les rhums */

INSERT INTO tbIngredient (ingreId, ingreNom)
VALUES
(1, 'banane' ),
(2, 'de vanille'),
(3, 'fraise' ),
(4, 'citron vert')
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
(8,'Degré', '°')
/*  a continuer */

/* ARNAUD WAETERMANS */

INSERT INTO tbRhum (nomId,recetteId,alcoolId,rhumAjout, rhumPrix, rhumMacer, rhumDeroulement)
VALUES 
(1,1, 1, 1999-12-31, 7.12,  '3 mois', NULL)
/* a continuer */

/* ARNAUD WAETERMANS */

INSERT INTO tbRecette_ingre (recetteId,ingreId,uniteId,quantité)
VALUES 
(1,1,5,5), /* 5 banane entiere dans le rhum 1 */
(1,2,1,1) /* 1 gousse de vanille dans le rhum 1*/
/*  a continuer */

