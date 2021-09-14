DECLARE
    lv_bill_date DATE := SYSDATE;
    lv_last_name VARCHAR2(15);
    lv_balance_num NUMBER(6, 2) := 1000;
BEGIN
    lv_last_name := 'Brown';
    DBMS_OUTPUT.PUT_LINE(lv_last_name);
    DBMS_OUTPUT.PUT_LINE(lv_bill_date);
    DBMS_OUTPUT.PUT_LINE(lv_balance_num);
END;