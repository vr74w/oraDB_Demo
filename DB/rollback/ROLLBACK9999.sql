/****************************************************************************************************/
--- Equipo de Sistemas - "Nombre de la empresa"

--- Archivo:	 ROLLBACK9999.sql
--- Autor:	     usuarioanonimo
--- Tel:	     3160000000
--- Registro:	 time.Date(2022, time.April, 18, 17, 30, 41, 756501200, time.Local)
--- HU:		 9999
/****************************************************************************************************/

PROMPT ROLLBACK9999.sql

ALTER SESSION SET CURRENT_SCHEMA=USER001;
/

/****************************************************************************************************/

PROMPT ---------------------------Objetos: sinonimos-------------------------------------

PROMPT Aplicando Objeto ...  @..\rollback\sinonimos\01-dropSinonimosv1
@..\rollback\sinonimos\01-dropSinonimosv1
/

/****************************************************************************************************/

PROMPT ---------------------------Objetos: paquetes-------------------------------------

PROMPT Aplicando Objeto ...  @..\rollback\paquetes\01-dropPKG.sql
@..\rollback\paquetes\01-dropPKG.sql
/

/****************************************************************************************************/

PROMPT ---------------------------Objetos: secuencias-------------------------------------

PROMPT Aplicando Objeto ...  @..\rollback\secuencias\01-dropsecuenciasv1.sql
@..\rollback\secuencias\01-dropsecuenciasv1.sql
/

/****************************************************************************************************/

PROMPT ---------------------------Objetos: tablas-------------------------------------

PROMPT Aplicando Objeto ...  @..\rollback\tablas\01-dropTablasv1.sql
@..\rollback\tablas\01-dropTablasv1.sql
/

/****************************************************************************************************/
PROMPT ---------------------------Objetos: tipos-------------------------------------

PROMPT Aplicando Objeto ...  @..\rollback\tipos\01-dropTtiposv1.sql  
@..\rollback\tipos\01-dropTtiposv1.sql
/

/****************************************************************************************************/
PROMPT ----------------------------------------------------------------
PROMPT Fin de ROLLBACK9999.sql
PROMPT ----------------------------------------------------------------