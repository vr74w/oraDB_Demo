create or replace PACKAGE BODY         PKG_PERSONA IS

/***********************************************************************************/
procedure insPERSONA (iorc in out nocopy tyrcPERSONA) is

    CUSTOM_EXCEPTION EXCEPTION;

begin

    --  Inicializo Valores
    iorc.ID_PERSONA := SEQ_PERSONA.NEXTVAL;
    iorc.ULTIMA_ACTUALIZACION := systimestamp;

    -- Se insgresa el Valor
    INSERT INTO PERSONA VALUES /*+PKG_PERSONA.insPERSONA*/  iorc ;

EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Codigo personalizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error Personalizado',false);
   WHEN OTHERS THEN
      raise_application_error(SQLCODE, SQLERRM ,true);       
end insPERSONA;

/***********************************************************************************/

procedure getPERSONA_Id (id in number, orc out nocopy tyrcPERSONA) is

    CUSTOM_EXCEPTION EXCEPTION;

    cursor cuPERSONA is
        select /*+INDEX(PERSONA PK_PERSONA)*/
            PERSONA .* 
        from PERSONA 
        where /*+PKG_PERSONA.getPERSONA*/
        ID_PERSONA = id;

begin

    -- Se consulta el Valor
    open cuPERSONA;
    fetch cuPERSONA into orc;
    close cuPERSONA;

EXCEPTION
   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      if cuPERSONA%isopen then
        close cuPERSONA;
      end if;
      -- Codigo personalizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error Personalizado',false);
   WHEN OTHERS THEN
      -- Revision de cursores
      if cuPERSONA%isopen then
        close cuPERSONA;
      end if;   
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

end getPERSONA_Id;

/***********************************************************************************/

procedure getPERSONA_IDENTIFICACION 
        (
            isbIdIdentificacion      in PERSONA.IDENTIFICACION%type, 
            inuIdTipoIdentificacion  in PERSONA.ID_TIPO_IDENTIFICACION%type,         
            orc                      out nocopy tyrcPERSONA
        ) 
    
    is

    CUSTOM_EXCEPTION EXCEPTION;

    /* NOTA:   Ojo, se coloca el '*'  a nivel de ejemplo, en el manejo de cursores y para optimizar recursos, se debe
               obtener la información puntual que se necesita (columnas puntuales) */ 
               
    cursor cuPERSONA is
        select /*+INDEX(PERSONA IDX_PERSONA)*/
            PERSONA.* 
        from PERSONA 
        where /*+PKG_PERSONA.getPERSONA_IDENTIFICACION*/
        PERSONA.IDENTIFICACION = isbIdIdentificacion
        AND PERSONA.ID_TIPO_IDENTIFICACION = inuIdTipoIdentificacion;

begin

    open cuPERSONA;
    fetch cuPERSONA into orc;
    close cuPERSONA;

EXCEPTION

   WHEN CUSTOM_EXCEPTION THEN
      -- Revision de cursores
      if cuPERSONA%isopen then
        close cuPERSONA;
      end if;
      -- Codigo personalizado para manejo de ecepciones de usuario  - Crear funcionalidad para menejo de mensajes en un tabla
      raise_application_error(-20001, 'Error Personalizado',false);
   WHEN OTHERS THEN
      -- Revision de cursores
      if cuPERSONA%isopen then
        close cuPERSONA;
      end if;   
      raise_application_error(-20000,SQLCODE||'=>'|| SQLERRM ,true);       

      
end getPERSONA_IDENTIFICACION;

/***********************************************************************************/


END PKG_PERSONA;