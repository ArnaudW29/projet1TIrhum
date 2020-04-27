/* ARNAUD WAETERMANS 
creation de la table avec les unites */
 CREATE TABLE tbUnite (
	uniteId INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	uniteNom VARCHAR(15) NOT NULL,
	uniteSymbole VARCHAR(3) NULL,
	CONSTRAINT pk_tbUnite PRIMARY KEY (uniteId)
	);
