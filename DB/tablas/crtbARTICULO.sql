/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright: NombreDeLaEmpresa
************************************************************************************/

create table USER001.ARTICULO 
(
ID_ARTICULO                     NUMBER(15),    
DESCRIPCION                     VARCHAR2(200)  NOT NULL,
VALOR_ARTICULO                  NUMBER(15)    NOT NULL,
VALOR_IMPUESTOS                 NUMBER(15)    NOT NULL,
ULTIMA_ACTUALIZACION            TIMESTAMP     NOT NULL
)
/
COMMENT ON TABLE USER001.ARTICULO IS 'LISTADO DE ARTICULOS' 
/