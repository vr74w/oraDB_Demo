create or replace PACKAGE PKG_DETALLE_PEDIDO IS
/************************************************************************************
Descripción: Objeto de encargado de gestionar las transacciones dml sobre la entidad DETALLE_PEDIDO
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

    subtype tyrcDETALLE_PEDIDO is  DETALLE_PEDIDO%rowtype ;

    type tytbDETALLE_PEDIDO is table of tyrcDETALLE_PEDIDO index by binary_integer;

    /* Declaración de variables publicas */

    -- tbDETALLE_PEDIDO tytbDETALLE_PEDIDO;

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

    procedure instbDETALLE_PEDIDO (iotb in out nocopy tytbDETALLE_PEDIDO);


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

    procedure insDETALLE_PEDIDO (iorc in out nocopy tyrcDETALLE_PEDIDO);
    
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
    01-01-2022    Ticketxxx        NombreDevModifica       Creación      ************************************************************************************/

    procedure getDETALLE_PEDIDO (id in number, orc out nocopy tyrcDETALLE_PEDIDO);


END PKG_DETALLE_PEDIDO;