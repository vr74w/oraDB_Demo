create or replace PACKAGE PKG_PEDIDO IS
/************************************************************************************
Descripci�n: Objeto de encargado de gestionar las transacciones dml sobre la entidad PEDIDO
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

    subtype tyrcPEDIDO is  PEDIDO%rowtype ;

    type tytbPEDIDO is table of tyrcPEDIDO index by binary_integer;

    /* Declaraci�n de variables publicas */

    -- tbPEDIDO tytbPEDIDO;

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

    procedure insPEDIDO (iorc in out nocopy tyrcPEDIDO);

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

    procedure getPEDIDO (id in number, orc out nocopy tyrcPEDIDO);


END PKG_PEDIDO;