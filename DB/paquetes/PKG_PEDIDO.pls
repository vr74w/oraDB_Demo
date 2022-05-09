create or replace PACKAGE PKG_PEDIDO IS
/************************************************************************************
Descripción: Objeto de encargado de gestionar las transacciones dml sobre la entidad PEDIDO
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

    subtype tyrcPEDIDO is  PEDIDO%rowtype ;

    type tytbPEDIDO is table of tyrcPEDIDO index by binary_integer;

    /* Declaración de variables publicas */

    -- tbPEDIDO tytbPEDIDO;

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

    procedure insPEDIDO (iorc in out nocopy tyrcPEDIDO);

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

    procedure getPEDIDO (id in number, orc out nocopy tyrcPEDIDO);


END PKG_PEDIDO;