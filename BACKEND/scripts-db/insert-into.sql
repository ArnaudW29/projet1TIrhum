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
INSERT INTO tbIngredient (ingreId, ingreNom, ingrePrix)
VALUES
('r01', 'banane' , 1,67),
('r01', 'gousse de vanille', 5,45),
('r02', 'fraise' , 5,93),
('r02', 'citron vert', 5,78),
/*  a continuer */

/* ARNAUD WAETERMANS
insertion  de toutes les informations concernant le rhum */
INSERT INTO tbRhum (rhumId, rhumAjout, rhumPrix, rhumIngre, rhumMacer)
VALUES 
('rO1', 31.12.99, 7,12, 'banane gousse de vanille', '3 mois')
/* a continuer */
