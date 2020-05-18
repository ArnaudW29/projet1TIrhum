CREATE PROCEDURE "DBA"."proc_insert_rhumModif"(in idnom integer, in idrecette integer, in alcool integer, in quantiteA integer,in uniteA varchar(10), in temps varchar(30),in prix decimal(4,2),in explication varchar(500))
BEGIN 
  INSERT INTO dba.tbRhum (nomId,recetteId,alcoolId,rhumQte,rhumUnite,rhumMacer,rhumPrix,rhumDeroulement)
  VALUES 
  (idnom,idrecette,alcool,quantiteA,uniteA,temps,prix,explication);

  END;
  
  ----------------------------------------------------------------------------------------------------
CREATE SERVICE "proc_insert_rhumModif" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" METHODS 'GET' AS call dba.proc_insert_rhumModif(:idnom,:idrecette,:alcool,:quantiteA,:uniteA,:temps,:prix,:explication);
