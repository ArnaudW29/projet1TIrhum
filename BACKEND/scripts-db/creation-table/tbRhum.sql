/* ARNAUD WAETERMANS 
creation de la table contenant toutes les informations de la recette */

CREATE TABLE tbRhum (
 rhumId CHAR(3) NOT NULL, /*r01,r02*/
 rhumAjout DATE,   /*25 mars 21:20:21 2020 */
 rhumPrix DECIMAL (4,2) NULL, /* 20,21, 19,20 */
 rhumIngre VARCHAR(255) NOT NULL, /* fraise, citron ..*/
 rhumMacer VARCHAR(30) NOT NULL,  /* 1 semaine , 1mois */ 
constraint pk_tbRhum PRIMARY KEY (rhumId)
);
