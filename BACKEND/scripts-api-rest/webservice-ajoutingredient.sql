CREATE PROCEDURE "dba"."proc_insert_ingredient"(in ingredient integer, in unite integer, in quantite integer, in idrecette integer)
BEGIN 
    INSERT INTO tbRecette_ingre(recetteId,ingreId,uniteId,quantité)
VALUES
(idrecette,ingredient,unite,quantite)
END;




CREATE SERVICE "proc_insert_ingredient" TYPE 'RAW' AUTHORIZATION OFF USER "dba" METHODS 'GET' AS call dba.proc_insert_ingredient(:ingredient,:unite,:quantite,:idrecette)
