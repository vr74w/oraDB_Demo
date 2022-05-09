create or replace PACKAGE BODY         PKG_PEDIDO IS

/***********************************************************************************/
procedure insPEDIDO (iorc in out nocopy tyrcPEDIDO) is

    CUSTOM_EXCEPTION EXCEPTION;
    
begin

    --  Inicializo Valores
    iorc.ID_PEDIDO := SEQ_PEDIDO.NEXTVAL;
    iorc.ULTIMA_ACTUALIZACION := systimestamp;
    
    -- Se insgresa el Valor
    INSERT INTO PEDIDO VALUES /*+PKG_PEDIDO.insPEDIDO*/  iorc ;

EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Codigo PEDIDOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error PEDIDOlizado',false);
   WHEN OTHERS THEN
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       
end insPEDIDO;

/***********************************************************************************/

procedure getPEDIDO (id in number, orc out nocopy tyrcPEDIDO) is

    CUSTOM_EXCEPTION EXCEPTION;
    
    cursor cuPEDIDO is
        select /*+INDEX(PEDIDO PK_PEDIDO)*/
            PEDIDO .* 
        from PEDIDO 
        where /*+PKG_PEDIDO.getPEDIDO*/
        ID_PEDIDO = id;
    
begin

    -- Se insgresa el Valor
    open cuPEDIDO;
    fetch cuPEDIDO into orc;
    close cuPEDIDO;
    
EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      if cuPEDIDO%isopen then
        close cuPEDIDO;
      end if;
      -- Codigo PEDIDOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error PEDIDOlizado',false);
   WHEN OTHERS THEN
      -- Revision de cursores
      if cuPEDIDO%isopen then
        close cuPEDIDO;
      end if;   
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

end getPEDIDO;

/***********************************************************************************/


END PKG_PEDIDO;