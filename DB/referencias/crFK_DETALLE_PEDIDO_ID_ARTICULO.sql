/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright: NombreDeLaEmpresa
************************************************************************************/

ALTER TABLE USER001.DETALLE_PEDIDO  ADD CONSTRAINT FK_DETALLE_PEDIDO_ID_ARTICULO FOREIGN KEY (ID_ARTICULO)  REFERENCES ARTICULO (ID_ARTICULO)
/