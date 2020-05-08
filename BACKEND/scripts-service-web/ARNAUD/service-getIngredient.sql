/* ARNAUD WAETERMANS 
select du nom des  ingredients et de leurs  id  */ 
CREATE PROCEDURE "dba"."getIngredient"()
BEGIN 
       call sa_set_http_header('Content-Type','application,/json');
      
SELECT  
        I.ingreId ,I.ingreNom
FROM    
    dba.tbIngredient as I
ORDER BY I.ingreNom asc;
 END;
/* service */

-------------------------------------------------------
CREATE SERVICE "getIngredient" TYPE 'JSON' AUTHORIZATION OFF USER "dba" URL ON METHODS 'GET' AS call dba.getIngredient();
