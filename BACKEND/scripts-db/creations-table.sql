
/* ARNAUD WAETERMANS 
Creation de la table contenant les noms des rhums et leurs id */

CREATE TABLE tbNoms (
nomId INT  NOT NULL,         
nomNom VARCHAR(40) NOT NULL,    /* rhum a la fraise , a la banane */
constraint pk_Noms PRIMARY KEY (nomId)
);

/* ARNAUD WAETERMANS
creation de la table contenant les ingredients et leurs prix pour chaque rhum */ 
CREATE TABLE tbIngredient (
  ingreId    INT NOT NULL ,
  ingreNom    varchar(30) NOT  NULL ,
  CONSTRAINT pk__tbIngredient PRIMARY KEY (ingreId),
  );
/* ARNAUD WAETERMANS 
creation de la table avec les unites */
 CREATE TABLE tbUnite (
	uniteId INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	uniteNom VARCHAR(15) NOT NULL,
	uniteSymbole VARCHAR(3) NULL,
	CONSTRAINT pk_tbUnite PRIMARY KEY (uniteId)
	);
/* ARNAUD WAETERMANS 
creation de la table avec les alcools, degre , et nom */
CREATE TABLE tbAlcool(
	alcoolId INTEGER  NOT NULL DEFAULT AUTOINCREMENT,
	alcoolNom VARCHAR(50) NOT NULL,
	alcoolDegre DECIMAL (3,1) NOT NULL,
	constraint pk_tbAlcool PRIMARY KEY (alcoolId)
	);

/* ARNAUD WAETERMANS 
creation de la table du rhum */
CREATE TABLE tbRhum (
 nomId INT  NOT NULL DEFAULT AUTOINCREMENT, 
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

/* ARNAUD WAETERMANS 
creation de la table de la recette */
CREATE TABLE tbRecette_ingre (
recetteId INT NOT NULL ,
ingreId  INT NOT NULL,
uniteId INT NOT NULL,
quantité INT NOT NULL,
CONSTRAINT "pk_tbRecette_ingre" PRIMARY KEY ( "recetteId" ASC, "ingreId" ASC ),
CONSTRAINT fk_tbRecette_ingre_tbRhum FOREIGN KEY (recetteId) REFERENCES tbRhum (recetteId),
CONSTRAINT fk_tbRecette_ingre_tbUnite FOREIGN key (uniteId) REFERENCES tbUnite (uniteId),
CONSTRAINT fk_tbRecette_ingre_tbIngredient FOREIGN key (ingreId) REFERENCES tbIngredient(ingreId),
);
