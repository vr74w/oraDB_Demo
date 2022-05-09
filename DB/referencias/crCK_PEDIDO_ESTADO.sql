/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright:  NombreDeLaEmpresa
************************************************************************************/

ALTER TABLE USER001.PEDIDO ADD CONSTRAINT CK_PEDIDO_ESTADO CHECK (ESTADO IN (1,2))
/