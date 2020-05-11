CREATE TABLE tbRhum (
 nomId INT  NOT NULL, 
 recetteId INT NOT NULL, /* 1 */
 alcoolId INT NOT NULL, /* 1 */
 rhumQte INT NOT NULL,
 rhumUnite varchar(10) NOT NULL,
 rhumMacer VARCHAR(30) NOT NULL,  /* 1 semaine , 1 mois */ 
 rhumAjout DATETIME,   /*31.12.99  */
 rhumPrix DECIMAL (4,2) NULL, /* 20.21, 19.20 */
 rhumDeroulement VARCHAR(500) NULL, /* deroulement de la recette */
constraint pk_tbRhum PRIMARY KEY (recetteId),
CONSTRAINT fk_tbRhum_tbAlcool FOREIGN KEY (alcoolId) REFERENCES tbAlcool (alcoolId),
constraint fk_tbRhum_tbNoms FOREIGN KEY (nomId) REFERENCES tbNoms(nomId)
);
