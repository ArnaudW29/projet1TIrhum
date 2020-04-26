/* MATTHIEU MUTTERER 
creation de la table contenant les ingredients et leurs prix pour chaque rhum 
*/


CREATE TABLE tbIngredient (
  ingreId        char(3) NOT NULL,
  ingrePrix       decimal(6,2) check(@col > 0.0) NULL ,
  ingreNom    char(30) NOT  NULL,
  CONSTRAINT pk__tbIngredient PRIMARY KEY (ingreId),
  CONSTRAINT fk__tbIngredient__tbRhum FOREIGN KEY (ingreId) REFERENCES tbRhum (rhumId)
  );
