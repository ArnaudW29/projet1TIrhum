
/* ARNAUD WAETER%ANS 
Creation de la table contenant les noms des rhums et leurs id */

CREATE TABLE tbNoms (
nomId char(3) NOT NULL,         /*rO1,rO2*/
nomNom VARCHAR(40) NOT NULL,
constraint pk_Noms PRIMARY KEY (nomId)
);
/* ARNAUD WAETERMANS 
creation de la table contenant toutes les informations de la recette */

CREATE TABLE tbRhum (
 rhumId CHAR(3) NOT NULL, /*r01,r02*/
 rhumAjout DATE,   /*25 mars 21:20:21 2020 */
 rhumPrix DECIMAL (4,2) NULL, /* 20,21, 19,20 */
 rhumIngre VARCHAR(255) NOT NULL, /* fraise, citron ..*/
 rhumMacer VARCHAR(30) NOT NULL,  /* 1 semaine , 1mois */ 
constraint pk_tbRhum PRIMARY KEY (rhumId),
constraint fk_tbRhum_tbNoms FOREIGN KEY (rhumId) REFERENCES tbNoms (nomId)
constraint fk_tbRhum_tbIngred FOREIGN KEY (rhumId) REFERENCES tbIngred (IngredId)
);
