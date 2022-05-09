/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright: NombreDeLaEmpresa
************************************************************************************/

ALTER TABLE USER001.PEDIDO ADD CONSTRAINT FK_PEDIDO_ID_PERSONA FOREIGN KEY (ID_PERSONA)  REFERENCES PERSONA (ID_PERSONA)
/