CREATE PROCEDURE "dba"."getRecette"()
BEGIN 
  call sa_set_http_header('Content-Type','application,/json');
  
  
SELECT  
        N.nomNom,N.nomId,
        Q.recetteId,I.ingreNom, 
        U.uniteNom , Q.quantité
     
FROM    
    tbRecette_ingre  Q
    INNER JOIN tbRhum  R 
               on R.recetteId = Q.recetteId
        INNER JOIN tbIngredient  I
               on I.ingreId = Q.ingreId
        INNER JOIN tbNoms  N 
               on N.nomId = R.nomId
        INNER JOIN tbAlcool  A
               on A.alcoolId = R.alcoolId
        INNER JOIN tbUnite U 
               on U.uniteId = Q.uniteId
END;

------------------------------------------------------------------------------------------
CREATE SERVICE "getRecette" TYPE 'JSON' AUTHORIZATION OFF USER "dba" URL ON METHODS 'GET' AS call dba.getRecette();

