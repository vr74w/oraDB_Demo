create or replace PACKAGE PKG_CLN_CREA_PEDIDO IS
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

    procedure creaPedido 
         (
            iorcPersona            in out nocopy PKG_PERSONA.tyrcPERSONA,
            iorcPedido             in out nocopy PKG_PEDIDO.tyrcPEDIDO,
            iotbDetallePedido      in out nocopy PKG_DETALLE_PEDIDO.tytbDETALLE_PEDIDO
        ) ;    


END PKG_CLN_CREA_PEDIDO;