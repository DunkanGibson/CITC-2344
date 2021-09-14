DECLARE
    lv_mail_news VARCHAR2(1) := 'Y';
    lv_balance NUMBER(10,2) := 1200;
    lv_minimum CONSTANT NUMBER(2,2) := .05;
BEGIN
DBMS_OUTPUT.PUT_LINE(lv_balance * lv_minimum);
lv_mail_news := 'N';
DBMS_OUTPUT.put_line(lv_mail_news);
DBMS_OUTPUT.put_line(lv_balance);
DBMS_OUTPUT.put_line(lv_minimum);

END;
    
    