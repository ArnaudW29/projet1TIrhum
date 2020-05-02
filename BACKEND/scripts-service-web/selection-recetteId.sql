/* ARNAUD WAETERMANS 
select de la recette en fonction de l'id de celle ci */ 

SELECT  
       R.recetteId,  N.nomNom,
       A.alcoolNom , A.alcoolDegre,
       I.ingreNom,
       U.uniteNom,
       Q.quantité
      
FROM    
    tbRecette_ingre  Q
        INNER JOIN tbRhum  R 
               on R.recetteId = Q.recetteId
        INNER JOIN tbIngredient  I
               on I.ingreId = Q.ingreId
        INNER JOIN tbUnite  U 
               on U.uniteId = Q.uniteId
        INNER JOIN tbNoms  N 
               on N.nomId = R.nomId
        INNER JOIN tbAlcool  A
               on A.alcoolId = R.alcoolId
 
               
Where Q.recetteId = 1;
