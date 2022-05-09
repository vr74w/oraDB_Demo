create or replace PACKAGE PKG_ARTICULO IS
/************************************************************************************
Descripci�n: Objeto de encargado de gestionar las transacciones dml sobre la entidad ARTICULO
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

    subtype tyrcARTICULO is  ARTICULO%rowtype ;

    type tytbARTICULO is table of tyrcARTICULO index by binary_integer;

    /* Declaraci�n de variables publicas */

    -- tbARTICULO tytbARTICULO;

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

    procedure insARTICULO (iorc in out nocopy tyrcARTICULO);

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

    procedure getARTICULO (id in number, orc out nocopy tyrcARTICULO);


END PKG_ARTICULO;