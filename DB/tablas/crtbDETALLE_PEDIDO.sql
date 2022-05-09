/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright: NombreDeLaEmpresa
************************************************************************************/

create table USER001.DETALLE_PEDIDO 
(
ID_DETALLE_PEDIDO               NUMBER(15),
ID_PEDIDO                       NUMBER(15),
ID_ARTICULO                     NUMBER(15),   
VALOR_ARTICULO                  NUMBER(15)    NOT NULL,
VALOR_IMPUESTOS                 NUMBER(15)    NOT NULL,
CANTIDAD                        NUMBER(2)     NOT NULL,
ULTIMA_ACTUALIZACION            TIMESTAMP     NOT NULL
)
/
COMMENT ON TABLE USER001.DETALLE_PEDIDO IS 'LISTADO DE ARTICULOS EN EL PEDIDO' 
/