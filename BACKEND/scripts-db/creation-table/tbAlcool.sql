/* ARNAUD WAETERMANS 
creation de la table avec les alcools, degre , et nom */
CREATE TABLE tbAlcool(
	alcoolId INTEGER  NOT NULL DEFAULT AUTOINCREMENT,
	alcoolNom VARCHAR(50) NOT NULL,
	alcoolDegre DECIMAL (3,1) NOT NULL,
	constraint pk_tbAlcool PRIMARY KEY (alcoolId)
	);
