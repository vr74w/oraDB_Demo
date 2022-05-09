/************************************************************************************
Descripción: Objeto de encargado de ...
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright: NombreDeLaEmpresa
************************************************************************************/

create table USER001.PERSONA 
(
ID_PERSONA                      NUMBER(15),
IDENTIFICACION                  VARCHAR2(20)  NOT NULL,
ID_TIPO_IDENTIFICACION          NUMBER(2)     NOT NULL,
PRIMER_NOMBRE                   VARCHAR2(20)  NOT NULL,
SEGUNDO_NOMBRE                  VARCHAR2(20),
PRIMER_APELLIDO                 VARCHAR2(20)  NOT NULL,
SEGUNDO_APELLIDO                VARCHAR2(20),
ULTIMA_ACTUALIZACION            TIMESTAMP     NOT NULL
)
/
COMMENT ON TABLE USER001.PERSONA IS 'PERSONAS RESGISTRADAS' 
/