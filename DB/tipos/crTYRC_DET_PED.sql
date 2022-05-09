/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright:  NombreDeLaEmpresa
************************************************************************************/

CREATE TYPE TYRC_DET_PED AS OBJECT
(
    ID_DETALLE_PEDIDO NUMBER(15),
	ID_PEDIDO NUMBER(15),
	ID_ARTICULO NUMBER(15),
	VALOR_ARTICULO NUMBER(15),
	VALOR_IMPUESTOS NUMBER(15),
	CANTIDAD NUMBER(2)
);
/