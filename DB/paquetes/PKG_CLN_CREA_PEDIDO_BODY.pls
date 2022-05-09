create or replace PACKAGE BODY         PKG_CLN_CREA_PEDIDO IS

/***********************************************************************************/

procedure creaPedido 
         (
            iorcPersona            in out nocopy PKG_PERSONA.tyrcPERSONA,
            iorcPedido             in out nocopy PKG_PEDIDO.tyrcPEDIDO,
            iotbDetallePedido      in out nocopy PKG_DETALLE_PEDIDO.tytbDETALLE_PEDIDO
        ) is


    CUSTOM_EXCEPTION EXCEPTION;
   
begin

    -- Validaciones funcionales
    
        -- Ejemplos: 
                     -- validacion de digitos por tipo de identifiación.
                     -- Validación de parametrización entregando mensjaes personanalizados.
        --
    
    -- Proceso    
    
    -- Se ingresa el Valor
    pkg_persona.inspersona(iorcPERSONA);
    
    iorcPEDIDO.ID_PERSONA:=iorcPERSONA.ID_PERSONA;
    
    pkg_pedido.inspedido(iorcPEDIDO);   
    
    /*Datos de detalle de Pedido*/      
    
    for nuIdx IN iotbDetallePedido.FIRST .. iotbDetallePedido.LAST loop
        iotbDetallePedido(nuIdx).ID_PEDIDO:=iorcPEDIDO.ID_PEDIDO;
    end loop;

    pkg_detalle_pedido.instbDETALLE_PEDIDO(iotb => iotbDetallePedido);
   
    
EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      -- Codigo DETALLE_PEDIDOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise;

   WHEN OTHERS THEN
      -- Revision de cursores
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

end creaPedido;

/***********************************************************************************/

END PKG_CLN_CREA_PEDIDO;