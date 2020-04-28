/* ARNAUD WAETERMANS */ 

CREATE FUNCTION "DBA"."getPath"()     /* renvoie le chemin (path) de la racine du site */
returns long varchar
deterministic 
BEGIN 
	declare dbPath long varchar; /* chemin de la db */
	declare dbName long varchar; /* nom de la db */
	
	set dbPath = (select db_property ('file'));
	set dbName = (select db_property ('name')) + '.db'; 
	set dbPath = left(dbPath, length(dbPath)-length(dbName));
	
	return dbPath; /* renvoyer path */
END;
	
CREATE PROCEDURE "DBA"."http_getPage"(in url char(255)) /* renvoie le contenu de la page html dont le nom est le parametre url */
RESULT(html long varchar)
BEGIN
	call sa_set_http_header('Content-Type','text/html');
	select xp_read_file(dba.getPath() || url || '.html'); /* renvoyer page */ 
END;


CREATE PROCEDURE "DBA"."http_getIMG"(in url char(255))   /* renvoie le contenu de l imagedont le nom (+ extension) est le paramètre url */
BEGIN
  call sa_set_http_header('Content-Type', 'image/png'); 
  select xp_read_file(dba.getPath() || 'IMG\' || url);  // renvoyer image
END;


CREATE PROCEDURE "DBA"."http_getJS"(in url char(255))
RESULT (js long varchar)
BEGIN 
	call sa_set_http_header('Content-Type','application/javascript'); /* header http */
	select xp_read_file(dba.getPath() || 'js\'  || url);/* renvoyer fichier javascript */
END;


CREATE PROCEDURE "DBA"."http_getCSS"(in url char(255))
RESULT (css long varchar)
BEGIN
	call sa_set_http_header('Content-Type', 'text/css');
	select xp_read_file(dba.getPath() || 'css\' || url);
END;
---------------------------------------------------------------------------------------------------
CREATE SERVICE "page" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call dba.http_getPage(:url);
CREATE SERVICE "js" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call dba.http_getJS(:url);
CREATE SERVICE "css" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call dba.http_getCSS(:url);
CREATE SERVICE "img" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call dba.http_getIMG(:url);
CREATE SERVICE "root" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call dba.http_getPage('projet');
