/* ARNAUD WAETERMANS 
creation de la table contenant toutes les informations de la recette */

CREATE TABLE tbRhum (
 rhumId CHAR(3) NOT NULL, /*r01,r02*/
 rhumMacer VARCHAR(30) NOT NULL,  /* 1 semaine , 1 mois */ 
 rhumAjout DATETIME,   /*31.12.99  */
 rhumPrix DECIMAL (4,2) NULL, /* 20.21, 19.20 */
 rhumDeroulement VARCHAR(500) NULL, /* deroulement de la recette */ 
 recetteId INT NOT NULL, /* 1 */
 alcoolId INT NOT NULL, 
constraint pk_tbRhum PRIMARY KEY (recetteId),
CONSTRAINT fk_tbRhum_tbAlcool FOREIGN KEY (alcoolId) REFERENCES tbAlcool (alcoolId),
constraint fk_tbRhum_tbNoms FOREIGN KEY (rhumId) REFERENCES tbNoms(nomId),
ON DELETE RESTRICT 
);
