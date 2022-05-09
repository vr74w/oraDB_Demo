create or replace PACKAGE PKG_DETALLE_PEDIDO IS
/************************************************************************************
Descripci�n: Objeto de encargado de gestionar las transacciones dml sobre la entidad DETALLE_PEDIDO
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

    subtype tyrcDETALLE_PEDIDO is  DETALLE_PEDIDO%rowtype ;

    type tytbDETALLE_PEDIDO is table of tyrcDETALLE_PEDIDO index by binary_integer;

    /* Declaraci�n de variables publicas */

    -- tbDETALLE_PEDIDO tytbDETALLE_PEDIDO;

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

    procedure instbDETALLE_PEDIDO (iotb in out nocopy tytbDETALLE_PEDIDO);


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

    procedure insDETALLE_PEDIDO (iorc in out nocopy tyrcDETALLE_PEDIDO);
    
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
    01-01-2022    Ticketxxx        NombreDevModifica       Creaci�n      ************************************************************************************/

    procedure getDETALLE_PEDIDO (id in number, orc out nocopy tyrcDETALLE_PEDIDO);


END PKG_DETALLE_PEDIDO;