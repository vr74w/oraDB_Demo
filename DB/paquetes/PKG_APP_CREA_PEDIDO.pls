create or replace PACKAGE PKG_APP_CREA_PEDIDO IS
/************************************************************************************
Descripción: Objeto de encargado de gestionar las transacciones dml sobre la entidad DETALLE_PEDIDO
Autor:       Nombre del desarrollador y usuario
Fecha:       01-01-2022
IdGestión:   Ticket-2132123
@copyright:  NombreDeLaEmpresa
------------------------------------------------------------------------------------
Historial de modificaciones=>
Fecha         Orden          Persona                 Acción        
------------------------------------------------------------------------------------
01-01-2022    Ticketxxx        NombreDevModifica       Creación 

************************************************************************************/

    /* Declaración de tipo de datos publicos */

    /* Declaración de variables publicas */

    /* Declaración de  metodos y funciones publicas */


    /************************************************************************************
    Descripción: Objeto usado para ...
    Autor:       Nombre del desarrollador y usuario
    Fecha:       01-01-2022
    IdGestión:   Ticket-2132123
    @copyright:  NombreDeLaEmpresa
    ------------------------------------------------------------------------------------
    Historial de modificaciones=>
    Fecha         Orden          Persona                 Acción        
    ------------------------------------------------------------------------------------
    01-01-2022    Ticketxxx        NombreDevModifica       Creación      ************************************************************************************/
  
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