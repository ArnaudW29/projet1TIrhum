CREATE TABLE tbNoms (
nomId INT  NOT NULL,         
nomNom VARCHAR(40) NOT NULL,    /* rhum a la fraise , a la banane */
constraint pk_Noms PRIMARY KEY (nomId),
CONSTRAINT "pk_tbNoms" UNIQUE ( "nomNom" ASC );

);
