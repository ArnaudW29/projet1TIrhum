/* MATTHIEU MUTTERER 
creation de la table contenant les ingredients et leurs prix pour chaque rhum */ 
CREATE TABLE tbIngredient (
  ingreId    INT auto_increment NOT NULL,
  ingreNom    varchar(30) NOT  NULL,
  CONSTRAINT pk__tbIngredient PRIMARY KEY (ingreId),
  ON DELETE RESTRICT,
  );
