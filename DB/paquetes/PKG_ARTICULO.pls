create or replace PACKAGE PKG_ARTICULO IS
/************************************************************************************
Descripción: Objeto de encargado de gestionar las transacciones dml sobre la entidad ARTICULO
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

    subtype tyrcARTICULO is  ARTICULO%rowtype ;

    type tytbARTICULO is table of tyrcARTICULO index by binary_integer;

    /* Declaración de variables publicas */

    -- tbARTICULO tytbARTICULO;

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

    procedure insARTICULO (iorc in out nocopy tyrcARTICULO);

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

    procedure getARTICULO (id in number, orc out nocopy tyrcARTICULO);


END PKG_ARTICULO;