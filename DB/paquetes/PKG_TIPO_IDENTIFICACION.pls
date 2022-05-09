create or replace PACKAGE PKG_TIPO_IDENTIFICACION IS
/************************************************************************************
Descripción: Objeto de encargado de gestionar las transacciones dml sobre la entidad TIPO_IDENTIFICACION
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright: NombreDeLaEmpresa
------------------------------------------------------------------------------------
Historial de modificaciones=>
Fecha         Orden          Persona                 Acción        
------------------------------------------------------------------------------------
01-01-2022    Ticketxxx        NombreDevModifica       Creación 

************************************************************************************/

    /* Declaración de tipo de datos publicos */

    subtype tyrcTIPO_IDENTIFICACION is  TIPO_IDENTIFICACION%rowtype ;

    type tytbTIPO_IDENTIFICACION is table of tyrcTIPO_IDENTIFICACION index by binary_integer;

    /* Declaración de variables publicas */

    -- tbTIPO_IDENTIFICACION tytbTIPO_IDENTIFICACION;

    /* Declaración de  metodos y funciones publicas */

    /************************************************************************************
    Descripción: Objeto usado para ... 
    Autor:       Nombre del desarrollador y usuario
    Fecha:       01-01-2022
    IdGestión:   Ticket-2132123
    @copyright: NombreDeLaEmpresa
    ------------------------------------------------------------------------------------
    Historial de modificaciones=>
    Fecha         Orden          Persona                 Acción        
    ------------------------------------------------------------------------------------
    01-01-2022    Ticketxxx        NombreDevModifica       Creación  
    ************************************************************************************/

    procedure insTIPO_IDENTIFICACION (iorc in out nocopy tyrcTIPO_IDENTIFICACION);

    /************************************************************************************
    Descripción: Objeto usado para ... 
    Autor:       Nombre del desarrollador y usuario
    Fecha:       01-01-2022
    IdGestión:   Ticket-2132123
    @copyright: NombreDeLaEmpresa
    ------------------------------------------------------------------------------------
    Historial de modificaciones=>
    Fecha         Orden          Persona                 Acción        
    ------------------------------------------------------------------------------------
    01-01-2022    Ticketxxx        NombreDevModifica       Creación      
    ************************************************************************************/

    procedure getTIPO_IDENTIFICACION (id in number, orc out nocopy tyrcTIPO_IDENTIFICACION);


END PKG_TIPO_IDENTIFICACION;