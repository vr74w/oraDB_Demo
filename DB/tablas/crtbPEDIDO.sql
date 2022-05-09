/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright: NombreDeLaEmpresa
************************************************************************************/

create table USER001.PEDIDO 
(
ID_PEDIDO                       NUMBER(15),
ID_PERSONA                      NUMBER(15),
DIRECCION                       VARCHAR2(20)  NOT NULL,
SUBTOTAL                        NUMBER(15)    NOT NULL,
VALOR_IMPUESTOS                 NUMBER(15)    NOT NULL,
VALOR_TOTAL                     NUMBER(15)    NOT NULL,
ESTADO                          NUMBER(1)     NOT NULL,
FECHA_PEDIDO                    DATE          NOT NULL,
ULTIMA_ACTUALIZACION            TIMESTAMP     NOT NULL
)
/
COMMENT ON TABLE USER001.PEDIDO IS 'PEDIDOS DE LAS PERSONAS RESGISTRADAS' 
/