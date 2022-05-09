/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright:  NombreDeLaEmpresa
************************************************************************************/

CREATE TYPE TYRC_PERSON AS OBJECT
(
	IDENTIFICACION VARCHAR2(20), 
	ID_TIPO_IDENTIFICACION NUMBER(2), 
	PRIMER_NOMBRE VARCHAR2(20), 
	SEGUNDO_NOMBRE VARCHAR2(20), 
	PRIMER_APELLIDO VARCHAR2(20), 
	SEGUNDO_APELLIDO VARCHAR2(20)
);
/