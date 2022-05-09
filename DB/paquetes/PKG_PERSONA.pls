create or replace PACKAGE PKG_PERSONA IS
/************************************************************************************
Descripci�n: Objeto de encargado de gestionar las transacciones dml sobre la entidad PERSONA
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGesti�n:   Ticket-2132123
@copyright: NombreDeLaEmpresa
------------------------------------------------------------------------------------
Historial de modificaciones=>
Fecha         Orden          Persona                 Acci�n        
------------------------------------------------------------------------------------
01-01-2022    Ticketxxx        NombreDevModifica       Creaci�n 

************************************************************************************/

    /* Declaraci�n de tipo de datos publicos */

    subtype tyrcPERSONA is  PERSONA%rowtype ;

    type tytbPERSONA is table of tyrcPERSONA index by binary_integer;

    /* Declaraci�n de variables publicas */

    -- tbPERSONA tytbPERSONA;

    /* Declaraci�n de  metodos y funciones publicas */

    /************************************************************************************
    Descripci�n: Objeto usado para ... 
    Autor:       Nombre del desarrollador y usuario
    Fecha:       01-01-2022
    IdGesti�n:   Ticket-2132123
    @copyright: NombreDeLaEmpresa
    ------------------------------------------------------------------------------------
    Historial de modificaciones=>
    Fecha         Orden          Persona                 Acci�n        
    ------------------------------------------------------------------------------------
    01-01-2022    Ticketxxx        NombreDevModifica       Creaci�n  
    ************************************************************************************/

    procedure insPERSONA (iorc in out nocopy tyrcPERSONA);

    /************************************************************************************
    Descripci�n: Objeto usado para ...
    Autor:       Nombre del desarrollador y usuario
    Fecha:       01-01-2022
    IdGesti�n:   Ticket-2132123
    @copyright: NombreDeLaEmpresa
    ------------------------------------------------------------------------------------
    Historial de modificaciones=>
    Fecha         Orden          Persona                 Acci�n        
    ------------------------------------------------------------------------------------
    01-01-2022    Ticketxxx        NombreDevModifica       Creaci�n      
    ************************************************************************************/

    procedure getPERSONA_ID (id in number, orc out nocopy tyrcPERSONA);


END PKG_PERSONA;