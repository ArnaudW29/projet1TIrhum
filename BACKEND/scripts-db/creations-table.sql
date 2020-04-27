
/* ARNAUD WAETER%ANS 
Creation de la table contenant les noms des rhums et leurs id */

CREATE TABLE tbNoms (
nomId char(3) NOT NULL,         /*rO1,rO2*/
nomNom VARCHAR(40) NOT NULL,    /* rhum a la fraise , a la banane */
constraint pk_Noms PRIMARY KEY (nomId),
constraint fk_tbNoms_tbRhum FOREIGN KEY (nomId) REFERENCES tbRhum (rhumId),
ON DELETE RESTRICT
);

/* ARNAUD WAETERMANS 
creation de la table contenant toutes les informations de la recette */

CREATE TABLE tbRhum (
 rhumId CHAR(3) NOT NULL, /*r01,r02*/
 rhumAjout DATETIME,   /*31.12.99  */
 rhumPrix DECIMAL (4,2) NULL, /* 20,21, 19,20 */
 rhumIngre VARCHAR(255) NOT NULL, /* fraise, citron ..*/
 rhumMacer VARCHAR(30) NOT NULL,  /* 1 semaine , 1mois */ 
constraint pk_tbRhum PRIMARY KEY (rhumId),
ON DELETE RESTRICT 
);

/* MATTHIEU MUTTERER 
creation de la table contenant les ingredients et leurs prix pour chaque rhum */ 
CREATE TABLE tbIngredient (
  ingreId        char(3) NOT NULL,
  ingrePrix       decimal(6,2) check(@col > 0.0) NULL ,
  ingreNom    varchar(30) NOT  NULL,
  ingreQte	INTEGER NULL,
  ingreCuill INTEGER NULL,
  CONSTRAINT pk__tbIngredient PRIMARY KEY (ingreId),
  CONSTRAINT fk__tbIngredient__tbRhum FOREIGN KEY (ingreId) REFERENCES tbRhum (rhumId),
  ON DELETE RESTRICT
  );
