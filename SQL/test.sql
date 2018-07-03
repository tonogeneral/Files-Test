INSERT INTO MY_TABLE  -- Noncompliant; N2 value omitted
  (
    N1
  )
  VALUES
  (
    1
  )
  
  
  SET SERVEROUTPUT ON

DECLARE
  foo VARCHAR2(42) := 'foo';
  foo VARCHAR2(42) := 'bar'; -- Non-Compliant
BEGIN
  DBMS_OUTPUT.PUT_LINE(foo); -- Raises PLS-00371: at most one declaration for 'FOO' is permitted
END;
/