create or replace 
PACKAGE BODY PKG_UTIL AS
------------------------------
-----------------------------
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
------------------------------
----------------------------- 
  function firstDtofMonth 
  
  Return date
  As
    v_date date;
    
  begin
  SELECT TRUNC (SYSDATE, 'MONTH') "First day of current month"
   into v_date FROM DUAL;
   
   return v_date;
  end firstDtofMonth;
------------------------------
-----------------------------
 function lastDtofMonth 
  
  Return date
  As
    v_date date;
    
  begin
  SELECT TRUNC (LAST_DAY (SYSDATE)) "Last day of current month"
   into v_date FROM DUAL;
   
   return v_date;
  end lastDtofMonth;
  
  ------------------------------
-----------------------------
 function firstDtofYear 
  
  Return date
  As
    v_date date;
    
  begin
  SELECT TRUNC (SYSDATE, 'YEAR') "Year First Day"
   into v_date FROM DUAL;
   
   return v_date;
  end firstDtofYear;
  
------------------------------
----------------------------- 
  
  function lastDtofYear 
  
  Return date
  As
    v_date date;
    
  begin
  SELECT ADD_MONTHS (TRUNC (SYSDATE, 'YEAR'), 12) - 1 "Year Last Day" 
   into v_date FROM DUAL;
   
   return v_date;
  end lastDtofYear;
  
END PKG_UTIL;