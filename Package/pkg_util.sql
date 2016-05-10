create or replace 
PACKAGE PKG_UTIL AS 

  /* Convert number to words */
  function fn_numtowords(v_num number) return varchar2;

END PKG_UTIL;