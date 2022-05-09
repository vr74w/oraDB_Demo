create or replace PACKAGE PKG_APP_CREA_PEDIDO IS
/************************************************************************************
Descripci�n: Objeto de encargado de gestionar las transacciones dml sobre la entidad DETALLE_PEDIDO
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGesti�n:   Ticket-2132123
@copyright:  NombreDeLaEmpresa
------------------------------------------------------------------------------------
Historial de modificaciones=>
Fecha         Orden          Persona                 Acci�n        
------------------------------------------------------------------------------------
01-01-2022    Ticketxxx        NombreDevModifica       Creaci�n 

************************************************************************************/

    /* Declaraci�n de tipo de datos publicos */

    /* Declaraci�n de variables publicas */

    /* Declaraci�n de  metodos y funciones publicas */


    /************************************************************************************
    Descripci�n: Objeto usado para ...
    Autor:       Nombre del desarrollador y usuario
    Fecha:       01-01-2022
    IdGesti�n:   Ticket-2132123
    @copyright:  NombreDeLaEmpresa
    ------------------------------------------------------------------------------------
    Historial de modificaciones=>
    Fecha         Orden          Persona                 Acci�n        
    ------------------------------------------------------------------------------------
    01-01-2022    Ticketxxx        NombreDevModifica       Creaci�n      ************************************************************************************/
  
    procedure creaPedido 
         (
            ircPersona            in TYRC_PERSON,
            ircPedido             in TYRC_PED,
            itbDetallePedido      in TYTB_DET_PED,
            onuIdPersona          out number,            
            onuIdPedido           out number,                        
            onuEror               out number,
            osbMensaje            out varchar2    
        ) ;
    
END PKG_APP_CREA_PEDIDO;