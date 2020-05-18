CREATE PROCEDURE "dba"."proc_insert_ingredientId"(in ingredient varchar(30), in idingredient integer)
BEGIN 
    INSERT INTO tbIngredient(ingreId,ingreNom)
VALUES
(idingredient,ingredient)
END;




CREATE SERVICE "proc_insert_ingredientId" TYPE 'RAW' AUTHORIZATION OFF USER "dba" METHODS 'GET' AS call dba.proc_insert_ingredientId(:ingredient,:idingredient);
