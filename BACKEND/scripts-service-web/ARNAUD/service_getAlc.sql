/* ARNAUD WAETERMANS 
select de l'alcool et l'id de celui ci  */ 
CREATE PROCEDURE "dba"."getAlc"()
BEGIN 
       call sa_set_http_header('Content-Type','application,/json');
      
SELECT  
        A.alcoolId ,A.alcoolNom || ' ' || A.alcoolDegre as NomDegr
FROM    
    dba.tbAlcool as A
ORDER BY A.alcoolDegre asc;
END;
/* service */
-----------------------------------------------------------------------------------------------------------------------------------------;

CREATE SERVICE "getAlc" TYPE 'JSON' AUTHORIZATION OFF USER "dba" URL ON METHODS 'GET' AS call dba.getAlc();
