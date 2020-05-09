CREATE PROCEDURE "dba"."proc_insert_rhum"(in nomNom varchar(40), in alcoolId integer, in rhumUnite varchar(10), in rhumQte integer,in ingreId integer, in uniteId integer,in quantité integer, in rhumMacer varchar(30),in rhumPrix decimal(4,2), in rhumDeroulement varchar(500))
BEGIN 
  INSERT INTO dba.tbNoms (nomNom)
  VALUES 
  ('nomNom');
  INSERT INTO dba.tbRhum (nomId,alcoolId,rhumQte,rhumUnite,rhumMacer,rhumPrix,rhumDeroulement)
  VALUES 
  (nomId,alcoolId,rhumQte,'rhumUnite','rhumMacer',rhumPrix,'rhumDeroulement');
  
  INSERT INTO dba.tbRecette_ingre(ingreId,uniteId,quantité)
  VALUES 
  (ingreId,uniteId, quantité);
  END;
  
  ----------------------------------------------------------------------------------------
  CREATE SERVICE proc_insert_rhum TYPE 'RAW' AUTHORIZATION OFF USER "dba" METHODS 'GET' AS call dba.proc_insert_rhum(:nomNom,:alcoolId,:rhumUnite,:rhumQte,:ingreId,:uniteId,:quantité,:rhumMacer,:rhumPrix,:rhumDeroulement);
