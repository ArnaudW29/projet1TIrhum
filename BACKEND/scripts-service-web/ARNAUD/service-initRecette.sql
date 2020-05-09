/* ARNAUD WAETERMANS 
select de la recette en fonction de l'id de celle ci */ 
CREATE PROCEDURE "dba"."init_recette"()
BEGIN 
       call sa_set_http_header('Content-Type','application,/json');
      
SELECT DISTINCT 
       N.nomNom,N.nomId,
       A.alcoolNom , A.alcoolDegre,R.rhumQte, R.rhumUnite, R.rhumDeroulement, R.rhumMacer, R.rhumPrix
     
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
 END
/* service */
CREATE SERVICE "initRecette" TYPE 'JSON' AUTHORIZATION OFF USER "dba" URL ON METHODS 'GET' AS call dba.init_recette();
