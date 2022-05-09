create or replace PACKAGE BODY         PKG_TIPO_IDENTIFICACION IS

/***********************************************************************************/
procedure insTIPO_IDENTIFICACION (iorc in out nocopy tyrcTIPO_IDENTIFICACION) is

    CUSTOM_EXCEPTION EXCEPTION;
    
begin

    --  Inicializo Valores
    iorc.ID_TIPO_IDENTIFICACION := SEQ_TIPO_IDENTIFICACION.NEXTVAL;
    iorc.ULTIMA_ACTUALIZACION := systimestamp;
    
    -- Se insgresa el Valor
    INSERT INTO TIPO_IDENTIFICACION VALUES iorc;

EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Codigo personalizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error Personalizado',false);
   WHEN OTHERS THEN
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

end insTIPO_IDENTIFICACION;

/***********************************************************************************/

procedure getTIPO_IDENTIFICACION (id in number, orc out nocopy tyrcTIPO_IDENTIFICACION) is

    CUSTOM_EXCEPTION EXCEPTION;
    
    cursor cuTIPO_IDENTIFICACION is
        select /*+INDEX(TIPO_IDENTIFICACION PK_TIPO_IDENTIFICACION)*/
            TIPO_IDENTIFICACION .* 
        from TIPO_IDENTIFICACION 
        where /*+PKG_TIPO_IDENTIFICACION.getTIPO_IDENTIFICACION*/
        ID_TIPO_IDENTIFICACION = id;
    
begin

    -- Se insgresa el Valor
    open cuTIPO_IDENTIFICACION;
    fetch cuTIPO_IDENTIFICACION into orc;
    close cuTIPO_IDENTIFICACION;
    
EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      if cuTIPO_IDENTIFICACION%isopen then
        close cuTIPO_IDENTIFICACION;
      end if;
      -- Codigo personalizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error Personalizado',false);
   WHEN OTHERS THEN
      -- Revision de cursores
      if cuTIPO_IDENTIFICACION%isopen then
        close cuTIPO_IDENTIFICACION;
      end if;   
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

end getTIPO_IDENTIFICACION;

/***********************************************************************************/


END PKG_TIPO_IDENTIFICACION;