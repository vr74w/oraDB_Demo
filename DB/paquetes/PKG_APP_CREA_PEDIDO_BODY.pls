create or replace PACKAGE BODY         PKG_APP_CREA_PEDIDO IS

/***********************************************************************************/
procedure creaPedido 
         (
            ircPersona            in TYRC_PERSON,
            ircPedido             in TYRC_PED,
            itbDetallePedido      in TYTB_DET_PED,
            onuIdPersona          out number,            
            onuIdPedido           out number,                        
            onuEror               out number,
            osbMensaje            out varchar2    
        ) is

    rcPERSONA           PKG_PERSONA.tyrcPERSONA;
    rcPEDIDO            PKG_PEDIDO.tyrcPEDIDO;
    rcDETALLE_PEDIDO    PKG_DETALLE_PEDIDO.tyrcDETALLE_PEDIDO;    
    tbDETALLE_PEDIDO    PKG_DETALLE_PEDIDO.tytbDETALLE_PEDIDO;        

    CUSTOM_EXCEPTION EXCEPTION;
   
begin

    /*Datos de persona*/
    rcPERSONA.IDENTIFICACION:=ircPersona.IDENTIFICACION;
    rcPERSONA.ID_TIPO_IDENTIFICACION:=ircPersona.ID_TIPO_IDENTIFICACION;
    rcPERSONA.PRIMER_NOMBRE:=ircPersona.PRIMER_NOMBRE;
    rcPERSONA.SEGUNDO_NOMBRE:=ircPersona.SEGUNDO_NOMBRE;
    rcPERSONA.PRIMER_APELLIDO:=ircPersona.PRIMER_APELLIDO;    
    rcPERSONA.SEGUNDO_APELLIDO:=ircPersona.SEGUNDO_APELLIDO;        

    /*Datos de Pedido*/      
    rcPEDIDO.DIRECCION:=ircPedido.DIRECCION;        
    rcPEDIDO.SUBTOTAL:=ircPedido.SUBTOTAL;        
    rcPEDIDO.VALOR_IMPUESTOS:=ircPedido.VALOR_IMPUESTOS;        
    rcPEDIDO.VALOR_TOTAL:=ircPedido.VALOR_TOTAL;        
    rcPEDIDO.ESTADO:=ircPedido.ESTADO;            
    rcPEDIDO.FECHA_PEDIDO:=ircPedido.FECHA_PEDIDO;        
    -- Se ingresa el Valor
    rcPEDIDO.ID_PERSONA:=rcPERSONA.ID_PERSONA;
    /*Datos de detalle de Pedido*/      
    for nuIdx IN itbDetallePedido.FIRST .. itbDetallePedido.LAST loop
        tbDETALLE_PEDIDO(nuIdx).ID_ARTICULO:=itbDetallePedido(nuIdx).ID_ARTICULO;    
        tbDETALLE_PEDIDO(nuIdx).VALOR_ARTICULO:=itbDetallePedido(nuIdx).VALOR_ARTICULO;        
        tbDETALLE_PEDIDO(nuIdx).VALOR_IMPUESTOS:=itbDetallePedido(nuIdx).VALOR_IMPUESTOS;            
        tbDETALLE_PEDIDO(nuIdx).CANTIDAD:=itbDetallePedido(nuIdx).CANTIDAD;                
    end loop;

    /* Invoco capa de negocio */

    PKG_CLN_CREA_PEDIDO.creaPedido 
         (
            iorcPersona            => rcPERSONA,
            iorcPedido             => rcPEDIDO,
            iotbDetallePedido      => tbDETALLE_PEDIDO
        ) ;
      
    onuEror:=0;
    osbMensaje:='ok';  --Colocar mensaje parametirzado

    onuIdPersona:=rcPERSONA.id_persona;
    onuIdPedido:=rcPEDIDO.id_pedido;    
    
EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      -- Codigo  para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      onuEror:=1;
      osbMensaje:='TX fallida';  --Colocar mensaje parametirzado      

   WHEN OTHERS THEN
      onuEror:=2;
      osbMensaje:='TX fallida=>'||  SQLERRM;  --Colocar mensaje parametirzado      
      -- Revision de cursores
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       
end creaPedido;

/***********************************************************************************/

END PKG_APP_CREA_PEDIDO;