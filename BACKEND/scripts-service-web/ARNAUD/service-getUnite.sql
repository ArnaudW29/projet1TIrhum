
/* ARNAUD WAETERMANS 
select des unites  et de leurs  id  */ 
CREATE PROCEDURE "dba"."getUnite"()
BEGIN 
       call sa_set_http_header('Content-Type','application,/json');
      
SELECT  
        U.uniteId ,U.uniteNom || '  (' || U.uniteSymbole || ')' as UniteSymbole
FROM    
    dba.tbUnite as U
ORDER BY U.uniteNom asc;
 END;
/* service */

-------------------------------------------------------
CREATE SERVICE "getUnite" TYPE 'JSON' AUTHORIZATION OFF USER "dba" URL ON METHODS 'GET' AS call dba.getUnite();
