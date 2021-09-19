DECLARE
    lv_promo VARCHAR2(10) := 'A0807x';
    lv_month VARCHAR2(2);
    lv_year VARCHAR2(2);
BEGIN
    lv_month := SUBSTR(lv_promo, 2, 2);
    DBMS_OUTPUT.PUT_LINE(lv_month);
        lv_year := SUBSTR(lv_promo, 4, 2);
    DBMS_OUTPUT.PUT_LINE(lv_year);
END;