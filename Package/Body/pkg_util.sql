CREATE OR REPLACE
PACKAGE BODY PKG_UTIL AS

  function fn_numtowords(
  v_num IN NUMBER
)
RETURN varchar2
AS
   v_numberwords varchar2(200);

BEGIN

  SELECT TO_CHAR (TO_DATE (v_num, 'j'), 'jsp') INTO v_numberwords  FROM DUAL;
  RETURN v_numberwords;
  END fn_numtowords;

END PKG_UTIL;