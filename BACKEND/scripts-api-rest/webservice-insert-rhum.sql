CREATE PROCEDURE "DBA"."proc_insert_rhum"(in name varchar(40),in idnom integer)
BEGIN
  INSERT INTO tbNoms (nomId,nomNom)
  VALUES 
  (idnom,name);
  END;
  ---------------------------------------------------------------------------------------
  CREATE SERVICE "proc_insert_rhum" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" METHODS 'GET' AS call dba.proc_insert_rhum(:name,:idnom);
