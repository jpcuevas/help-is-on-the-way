/* Store Procedure to see the data in debug of a temp table*/
create or replace 
PROCEDURE DEBUGINFO(p_tablename VARCHAR2,p_numrowstoinspect NUMBER DEFAULT 10) AS
  v_count INT;
  v_qryCtx DBMS_XMLGEN.ctxHandle;
  v_result CLOB;
BEGIN
  EXECUTE IMMEDIATE 'SELECT COUNT(*) INTO :v_count FROM '||p_tablename INTO v_count;
  DBMS_OUTPUT.PUT_LINE('tablename='||p_tablename||' : rowcount='||v_count);
  --query table rows into XML
  v_qryCtx := DBMS_XMLGEN.newContext('SELECT * FROM ' ||p_tablename || ' WHERE ROWNUM <='||p_numrowstoinspect);
  -- Get the result
  v_result := DBMS_XMLGEN.getXML(v_qryCtx);
  DBMS_OUTPUT.PUT_LINE('--BEGIN DEBUGINFO RESULT FOR '||p_tablename||CHR(10)||CHR(10)||v_result||CHR(10)||'--END DEBUGINFO RESULT FOR '||p_tablename);
END DEBUGINFO;