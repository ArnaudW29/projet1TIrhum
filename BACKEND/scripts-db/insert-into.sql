/* ARNAUD WAETERMANS 
insertion des noms des rhums */
INSERT INTO tbNoms(nomId, nomNom)
VALUES 
('r01', 'Rhum a la banane'),
('r02', 'Rhum a la fraise et citron vert'),
('r03', 'Rhum au piment oiseau'),
('r04', 'Rhum aux bananes flambées'),
('r05', 'Rhum au café'),
('r06', 'Rhum au bounty');

/* ARNAUD WAETERMANS 
insertion des ingredients et prix pour les rhums */
INSERT INTO tbIngredient (ingreId, ingreNom,)
VALUES
(1, 'banane' ),
(2, 'de vanille'),
(3, 'fraise' ),
(4, 'citron vert'),
/*  a continuer */
INSERT INTO tbRecette_ingre (recetteId,ingreId,uniteId,quantité)
VALUES 
(1,1,5,5), /* 5 banane entiere dans le rhum 1 */
(1,2,1,1) /* 1 gousse de vanille dans le rhum 1*/
/*  a continuer */
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

/* ARNAUD WAETERMANS
insertion  de toutes les informations concernant le rhum */
INSERT INTO tbRhum (rhumId, rhumAjout, rhumPrix,recetteId, rhumMacer,alcoolId, rhumDeroulement)
VALUES 
('rO1', 31.12.99, 7.12, 1, '3 mois', 1 ,NULL)
/* a continuer */

/* ARNAUD WAETERMANS 
insertion de tout les rhums disponibles */
INSERT INTO tbAlcool(alcoolId, alcoolNom, alcoolDegre)
VALUES 
(1,'rhum agricole saint james',40)
(2,'rhum agricole saint james',45)
(3,'rhum agricole saint james',50)
