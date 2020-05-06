
/* ARNAUD WAETERMANS 
select de la recette en fonction de l'id de celle ci */ 
CREATE PROCEDURE "dba"."getNom"()
BEGIN 
       call sa_set_http_header('Content-Type','application,/json');
      
SELECT  
        N.nomId ,N.nomNom
FROM    
    dba.tbNoms as N
ORDER BY N.nomNom asc;
 END
/* service */


CREATE SERVICE "getNom" TYPE 'JSON' AUTHORIZATION OFF USER "dba" URL ON METHODS 'GET' AS call dba.getNom();
