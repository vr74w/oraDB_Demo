create or replace PACKAGE BODY         PKG_DETALLE_PEDIDO IS

/***********************************************************************************/
procedure insDETALLE_PEDIDO (iorc in out nocopy tyrcDETALLE_PEDIDO) is

    CUSTOM_EXCEPTION EXCEPTION;
    
begin

    --  Inicializo Valores
    iorc.ID_DETALLE_PEDIDO := SEQ_DETALLE_PEDIDO.NEXTVAL;
    iorc.ULTIMA_ACTUALIZACION := systimestamp;
    
    -- Se insgresa el Valor
    INSERT INTO DETALLE_PEDIDO VALUES /*+PKG_DETALLE_PEDIDO.insDETALLE_PEDIDO*/  iorc ;

EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Codigo DETALLE_PEDIDOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error DETALLE_PEDIDOlizado',false);
   WHEN OTHERS THEN
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       
end insDETALLE_PEDIDO;


/***********************************************************************************/

procedure instbDETALLE_PEDIDO (iotb in out nocopy tytbDETALLE_PEDIDO) is

    CUSTOM_EXCEPTION EXCEPTION;
    
begin


    --  Inicializo Valores
    for nuIdx IN iotb.FIRST .. iotb.LAST loop
        iotb(nuIdx).ID_DETALLE_PEDIDO := SEQ_DETALLE_PEDIDO.NEXTVAL;
        iotb(nuIdx).ULTIMA_ACTUALIZACION := systimestamp;    
    end loop;

    -- 
    FORALL nuIdx IN iotb.FIRST .. iotb.LAST 
      INSERT INTO DETALLE_PEDIDO VALUES /*+PKG_DETALLE_PEDIDO.instbDETALLE_PEDIDO*/ iotb(nuIdx); 

EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Codigo DETALLE_PEDIDOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error instbDETALLE_PEDIDO personalizado',false);
   WHEN OTHERS THEN
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       
end instbDETALLE_PEDIDO;

/***********************************************************************************/
procedure getDETALLE_PEDIDO (id in number, orc out nocopy tyrcDETALLE_PEDIDO) is

    CUSTOM_EXCEPTION EXCEPTION;
    
    cursor cuDETALLE_PEDIDO is
        select /*+INDEX(DETALLE_PEDIDO PK_DETALLE_PEDIDO)*/
            DETALLE_PEDIDO .* 
        from DETALLE_PEDIDO 
        where /*+PKG_DETALLE_PEDIDO.getDETALLE_PEDIDO*/
        ID_DETALLE_PEDIDO = id;
    
begin

    -- Se insgresa el Valor
    open cuDETALLE_PEDIDO;
    fetch cuDETALLE_PEDIDO into orc;
    close cuDETALLE_PEDIDO;
    
EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      if cuDETALLE_PEDIDO%isopen then
        close cuDETALLE_PEDIDO;
      end if;
      -- Codigo DETALLE_PEDIDOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error DETALLE_PEDIDOlizado',false);
   WHEN OTHERS THEN
      -- Revision de cursores
      if cuDETALLE_PEDIDO%isopen then
        close cuDETALLE_PEDIDO;
      end if;   
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

end getDETALLE_PEDIDO;

/***********************************************************************************/


END PKG_DETALLE_PEDIDO;