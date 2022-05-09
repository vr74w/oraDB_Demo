create or replace PACKAGE BODY         PKG_ARTICULO IS

/***********************************************************************************/
procedure insARTICULO (iorc in out nocopy tyrcARTICULO) is

    CUSTOM_EXCEPTION EXCEPTION;
    
begin

    --  Inicializo Valores
    iorc.ID_ARTICULO := SEQ_ARTICULO.NEXTVAL;
    iorc.ULTIMA_ACTUALIZACION := systimestamp;
    
    -- Se insgresa el Valor
    INSERT INTO ARTICULO VALUES /*+PKG_ARTICULO.insARTICULO*/  iorc ;

EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Codigo ARTICULOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error ARTICULOlizado',false);
   WHEN OTHERS THEN
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       
end insARTICULO;

/***********************************************************************************/

procedure getARTICULO (id in number, orc out nocopy tyrcARTICULO) is

    CUSTOM_EXCEPTION EXCEPTION;
    
    cursor cuARTICULO is
        select /*+INDEX(ARTICULO PK_ARTICULO)*/
            ARTICULO .* 
        from ARTICULO 
        where /*+PKG_ARTICULO.getARTICULO*/
        ID_ARTICULO = id;
    
begin

    -- Se insgresa el Valor
    open cuARTICULO;
    fetch cuARTICULO into orc;
    close cuARTICULO;
    
EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      if cuARTICULO%isopen then
        close cuARTICULO;
      end if;
      -- Codigo ARTICULOlizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error ARTICULOlizado',false);
   WHEN OTHERS THEN
      -- Revision de cursores
      if cuARTICULO%isopen then
        close cuARTICULO;
      end if;   
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

end getARTICULO;

/***********************************************************************************/


END PKG_ARTICULO;