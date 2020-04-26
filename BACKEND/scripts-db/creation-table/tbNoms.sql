/* ARNAUD WAETER%ANS 
Creation de la table contenant les noms des rhums et leurs id */

CREATE TABLE tbNoms (
nomId char(3) NOT NULL,         /*rO1,rO2*/
nomNom VARCHAR(40) NOT NULL,
constraint pk_Noms PRIMARY KEY (nomId)
);
