/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright:  NombreDeLaEmpresa
************************************************************************************/

CREATE TYPE TYRC_PED AS OBJECT
(
	DIRECCION VARCHAR2(20),
	SUBTOTAL NUMBER(15),
	VALOR_IMPUESTOS NUMBER(15),
	VALOR_TOTAL NUMBER(15),
	ESTADO NUMBER(1),
	FECHA_PEDIDO DATE
);
/