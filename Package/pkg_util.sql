create or replace 
PACKAGE PKG_UTIL AS 
  /*  serveroutput on size 30000;*/
  /* convert number to words */
  function fn_numtowords(v_num number) return varchar2;
  
  /* return first day of month */
  function firstDtofMonth return date;
  
  /* return first day of month */
  function lastDtofMonth return date;
  
  /* return first day of year */
  function firstDtofYear return date;
  
  /*Get the last day of the year*/
  function lastDtofYear return date;
  
  /*Get number of days in current month*/
  function currentday(v_date date) return date;

END PKG_UTIL;