
/* ARNAUD WAETERMANS 
Creation de la table contenant les noms des rhums et leurs id */

CREATE TABLE tbNoms (
nomId char(3) NOT NULL,         /*rO1,rO2*/
nomNom VARCHAR(40) NOT NULL,    /* rhum a la fraise , a la banane */
constraint pk_Noms PRIMARY KEY (nomId),
ON DELETE RESTRICT
);

/* ARNAUD WAETERMANS 
creation de la table contenant toutes les informations de la recette */

CREATE TABLE tbRhum (
 rhumId CHAR(3) NOT NULL, /*r01,r02*/
 rhumMacer VARCHAR(30) NOT NULL,  /* 1 semaine , 1 mois */ 
 rhumAjout DATETIME,   /*31.12.99  */
 rhumPrix DECIMAL (4,2) NULL, /* 20.21, 19.20 */
 rhumDeroulement VARCHAR(500) NULL, /* deroulement de la recette */ 
 recetteId INT NOT NULL, /* 1 */
constraint pk_tbRhum PRIMARY KEY (recetteId),
constraint fk_tbRhum_tbNoms FOREIGN KEY (rhumId) REFERENCES tbNoms(nomId),
ON DELETE RESTRICT 
);
/* ARNAUD WAETERMANS 
creation de la table qui permet de construire la recette */ 
CREATE TABLE tbRecette_ingre (
recetteId INT NOT NULL,
ingreId  INT NOT NULL,
uniteId INT NOT NULL,
quantité INT NOT NULL 
CONSTRAINT fk_tbRecette_ingre_tbUnite FOREIGN key (uniteId) REFERENCES tbUnite (uniteId),
CONSTRAINT fk_tbRecette_ingre_tbIngredient FOREIGN key (ingreId) REFERENCES tbIngredient(ingreId),
CONSTRAINT fk_tbRecette_ingre_tbRhum FOREIGN KEY (recetteId) REFERENCES tbRhum (recetteId)
);

/* MATTHIEU MUTTERER 
creation de la table contenant les ingredients et leurs prix pour chaque rhum */ 
CREATE TABLE tbIngredient (
  ingreId    INT auto_increment NOT NULL,
  ingreNom    varchar(30) NOT  NULL,
  CONSTRAINT pk__tbIngredient PRIMARY KEY (ingreId),
  ON DELETE RESTRICT,
  );
  /* ARNAUD WAETERMANS 
   table repranant les unites et leurs noms ainsi que les symboles */
  CREATE TABLE tbUnite (
	uniteId INTEGER NOT NULL auto_increment,
	uniteNom VARCHAR(15) NOT NULL,
	uniteSymbole VARCHAR(3) NULL,
	CONSTRAINT pk_tbUnite PRIMARY KEY (uniteId));
