/****************************************************************************************************/
--- Equipo de Sistemas - "Nombre de la empresa - Gerencia"

--- Archivo:	 APLICA9999.sql
--- Autor:	     usuarioanonimo
--- Tel:	     3160000000
--- Registro:	 time.Date(2022, time.April, 18, 17, 30, 41, 660120100, time.Local)
--- HU:		 9999
/****************************************************************************************************/

PROMPT APLICA9999.sql

ALTER SESSION SET CURRENT_SCHEMA=USER001;
/

/****************************************************************************************************/
PROMPT ---------------------------Objetos: tipos-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\tipos\crTYRC_PERSON.sql
@..\DB\tipos\crTYRC_PERSON.sql
/

PROMPT Aplicando Objeto ...  @..\DB\tipos\crTYRC_PED.sql
@..\DB\tipos\crTYRC_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\tipos\crTYRC_DET_PED.sql
@..\DB\tipos\crTYRC_DET_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\tipos\crTYTB_DET_PED.sql
@..\DB\tipos\crTYTB_DET_PED.sql
/

/****************************************************************************************************/
PROMPT ---------------------------Objetos: tablas-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\tablas\crtbARTICULO.sql
@..\DB\tablas\crtbARTICULO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\tablas\crtbDETALLE_PEDIDO.sql
@..\DB\tablas\crtbDETALLE_PEDIDO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\tablas\crtbPEDIDO.sql
@..\DB\tablas\crtbPEDIDO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\tablas\crtbPERSONA.sql
@..\DB\tablas\crtbPERSONA.sql
/

PROMPT Aplicando Objeto ...  @..\DB\tablas\crtbTIPO_IDENTIFICACION.sql
@..\DB\tablas\crtbTIPO_IDENTIFICACION.sql
/
/****************************************************************************************************/

PROMPT ---------------------------Objetos: secuencias-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\secuencias\crsqSEQ_ARTICULO.sql
@..\DB\secuencias\crsqSEQ_ARTICULO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\secuencias\crsqSEQ_DETALLE_PEDIDO.sql
@..\DB\secuencias\crsqSEQ_DETALLE_PEDIDO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\secuencias\crsqSEQ_PEDIDO.sql
@..\DB\secuencias\crsqSEQ_PEDIDO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\secuencias\crsqSEQ_PERSONA.sql
@..\DB\secuencias\crsqSEQ_PERSONA.sql
/

PROMPT Aplicando Objeto ...  @..\DB\secuencias\crsqSEQ_TIPO_IDENTIFICACION.sql
@..\DB\secuencias\crsqSEQ_TIPO_IDENTIFICACION.sql
/
/****************************************************************************************************/

PROMPT ---------------------------Objetos: indices-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\indices\crIDX_DETALLE_PEDIDO_01.sql
@..\DB\indices\crIDX_DETALLE_PEDIDO_01.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crIDX_DETALLE_PEDIDO_02.sql
@..\DB\indices\crIDX_DETALLE_PEDIDO_02.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crIDX_PEDIDO_01.sql
@..\DB\indices\crIDX_PEDIDO_01.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crIDX_PERSONA_01.sql
@..\DB\indices\crIDX_PERSONA_01.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crPK_ARTICULO.sql
@..\DB\indices\crPK_ARTICULO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crPK_DETALLE_PEDIDO.sql
@..\DB\indices\crPK_DETALLE_PEDIDO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crPK_PEDIDO.sql
@..\DB\indices\crPK_PEDIDO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crPK_PERSONA.sql
@..\DB\indices\crPK_PERSONA.sql
/

PROMPT Aplicando Objeto ...  @..\DB\indices\crPK_TIPO_IDENTIFICACION.sql
@..\DB\indices\crPK_TIPO_IDENTIFICACION.sql
/

/****************************************************************************************************/
PROMPT ---------------------------Objetos: referencias-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\referencias\crCK_PEDIDO_ESTADO.sql
@..\DB\referencias\crCK_PEDIDO_ESTADO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\referencias\crFK_DETALLE_PEDIDO_ID_ARTICULO.sql
@..\DB\referencias\crFK_DETALLE_PEDIDO_ID_ARTICULO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\referencias\crFK_DETALLE_PEDIDO_ID_PEDIDO.sql
@..\DB\referencias\crFK_DETALLE_PEDIDO_ID_PEDIDO.sql
/

PROMPT Aplicando Objeto ...  @..\DB\referencias\crFK_PEDIDO_ID_PERSONA.sql
@..\DB\referencias\crFK_PEDIDO_ID_PERSONA.sql
/

PROMPT Aplicando Objeto ...  @..\DB\referencias\crFK_PERSONA_ID_TIPO_IDENTIFICACION.sql
@..\DB\referencias\crFK_PERSONA_ID_TIPO_IDENTIFICACION.sql
/

/****************************************************************************************************/

PROMPT ---------------------------Objetos: paquetes-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_ARTICULO.pls
@..\DB\paquetes\PKG_ARTICULO.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_ARTICULO_BODY.pls
@..\DB\paquetes\PKG_ARTICULO_BODY.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_DETALLE_PEDIDO.pls
@..\DB\paquetes\PKG_DETALLE_PEDIDO.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_DETALLE_PEDIDO_BODY.pls
@..\DB\paquetes\PKG_DETALLE_PEDIDO_BODY.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_PEDIDO.pls
@..\DB\paquetes\PKG_PEDIDO.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_PEDIDO_BODY.pls
@..\DB\paquetes\PKG_PEDIDO_BODY.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_PERSONA.pls
@..\DB\paquetes\PKG_PERSONA.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_PERSONA_BODY.pls
@..\DB\paquetes\PKG_PERSONA_BODY.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_TIPO_IDENTIFICACION.pls
@..\DB\paquetes\PKG_TIPO_IDENTIFICACION.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_TIPO_IDENTIFICACION_BODY.pls
@..\DB\paquetes\PKG_TIPO_IDENTIFICACION_BODY.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_CLN_CREA_PEDIDO.pls
@..\DB\paquetes\PKG_CLN_CREA_PEDIDO.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_CLN_CREA_PEDIDO_BODY.pls
@..\DB\paquetes\PKG_CLN_CREA_PEDIDO_BODY.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_APP_CREA_PEDIDO.pls
@..\DB\paquetes\PKG_APP_CREA_PEDIDO.pls
/

PROMPT Aplicando Objeto ...  @..\DB\paquetes\PKG_APP_CREA_PEDIDO_BODY.pls
@..\DB\paquetes\PKG_APP_CREA_PEDIDO_BODY.pls
/


/****************************************************************************************************/

PROMPT ---------------------------Objetos: sql-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\sql\insDataTest.sql
@..\DB\sql\insDataTest.sql
/

PROMPT Aplicando Objeto ...  @..\DB\sql\insDataTestSql2.sql
@..\DB\sql\insDataTestSql2.sql
/

/****************************************************************************************************/
PROMPT ---------------------------Objetos: sinonimos-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\sinonimos\crSYN_TYRC_PERSON.sql
@..\DB\sinonimos\crSYN_TYRC_PERSON.sql
/

PROMPT Aplicando Objeto ...  @..\DB\sinonimos\crSYN_TYRC_PED.sql
@..\DB\sinonimos\crSYN_TYRC_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\sinonimos\crSYN_TYRC_DET_PED.sql
@..\DB\sinonimos\crSYN_TYRC_DET_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\sinonimos\crSYN_TYTB_DET_PED.sql
@..\DB\sinonimos\crSYN_TYTB_DET_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\sinonimos\crSYN_PKG_APP_CREA_PEDIDO.sql
@..\DB\sinonimos\crSYN_PKG_APP_CREA_PEDIDO.sql
/

/****************************************************************************************************/

PROMPT ---------------------------Objetos: permisos-------------------------------------

PROMPT Aplicando Objeto ...  @..\DB\permisos\crGrantSYN_TYRC_PERSON.sql
@..\DB\permisos\crGrantSYN_TYRC_PERSON.sql
/

PROMPT Aplicando Objeto ...  @..\DB\permisos\crGrantSYN_TYRC_PED.sql
@..\DB\permisos\crGrantSYN_TYRC_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\permisos\crGrantSYN_TYRC_DET_PED.sql
@..\DB\permisos\crGrantSYN_TYRC_DET_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\permisos\crGrantSYN_TYTB_DET_PED.sql
@..\DB\permisos\crGrantSYN_TYTB_DET_PED.sql
/

PROMPT Aplicando Objeto ...  @..\DB\permisos\crGrantSYN_PKG_APP_CREA_PEDIDO.sql
@..\DB\permisos\crGrantSYN_PKG_APP_CREA_PEDIDO.sql
/

/****************************************************************************************************/

PROMPT ---------------------------Objetos: triggers-------------------------------------

/****************************************************************************************************/
PROMPT ----------------------------------------------------------------
PROMPT Fin de APLICA9999.sql
PROMPT ----------------------------------------------------------------
