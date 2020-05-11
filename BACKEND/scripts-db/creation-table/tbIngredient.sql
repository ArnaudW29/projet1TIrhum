/* ARNAUD WAETERMANS
creation de la table contenant les ingredients pour chaque rhum */ 
CREATE TABLE tbIngredient (
  ingreId    INT NOT NULL ,
  ingreNom    varchar(30) NOT  NULL ,
  CONSTRAINT pk__tbIngredient PRIMARY KEY (ingreId),
  CONSTRAINT "pk_tbIngredientNom" UNIQUE ( "ingreNom" ASC )
  );
