create or replace PACKAGE PKG_PERSONA IS
/************************************************************************************
Descripción: Objeto de encargado de gestionar las transacciones dml sobre la entidad PERSONA
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

    subtype tyrcPERSONA is  PERSONA%rowtype ;

    type tytbPERSONA is table of tyrcPERSONA index by binary_integer;

    /* Declaración de variables publicas */

    -- tbPERSONA tytbPERSONA;

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

    procedure insPERSONA (iorc in out nocopy tyrcPERSONA);

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

    procedure getPERSONA_ID (id in number, orc out nocopy tyrcPERSONA);


END PKG_PERSONA;