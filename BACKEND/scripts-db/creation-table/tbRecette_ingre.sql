/* ARNAUD WAETERMANS 
creation de la table de la recette */
CREATE TABLE tbRecette_ingre (
recetteId INT NOT NULL,
ingreId  INT NOT NULL,
uniteId INT NOT NULL,
quantité INT NOT NULL, 
CONSTRAINT fk_tbRecette_ingre_tbRhum FOREIGN KEY (recetteId) REFERENCES tbRhum (recetteId),
CONSTRAINT fk_tbRecette_ingre_tbUnite FOREIGN key (uniteId) REFERENCES tbUnite (uniteId),
CONSTRAINT fk_tbRecette_ingre_tbIngredient FOREIGN key (ingreId) REFERENCES tbIngredient(ingreId),
);
