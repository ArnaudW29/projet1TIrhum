CREATE PROCEDURE "dba"."proc_insert_rhumModif"(in idnom integer, in idrecette integer, in alcool integer, in uniteA varchar(10),in quantiteA integer, in temps varchar(30),in prix decimal(4,2),in explication varchar(500))
BEGIN 
  INSERT INTO dba.tbRhum (nomId,recetteId,alcoolId,rhumQte,rhumUnite,rhumMacer,rhumPrix,rhumDeroulement)
  VALUES 
  (idnom,idrecette,alcool,uniteA,quantiteA,temps,prix,explication);

  END;
 
CREATE SERVICE proc_insert_rhumModif TYPE 'RAW' AUTHORIZATION OFF USER "dba" METHODS 'GET' AS call dba.proc_insert_rhumModif(:idnom,:idrecette,:alcool,:uniteA,:quantiteA,:temps,:prix,:explication)
