DECLARE
    lv_tax_total NUMBER(5,2);
    lv_subtotal NUMBER(8,2) := 564;
    lv_state VARCHAR2(4) := 'NY';
    lv_total NUMBER(8, 2);
BEGIN
    IF lv_state = 'VA' THEN 
    lv_total := (lv_subtotal * .06) + lv_subtotal;
    
    ELSIF lv_state = 'ME' THEN 
    lv_total := (lv_subtotal * .05) + lv_subtotal;
    
    ELSIF lv_state = 'NY' THEN 
    lv_total := (lv_subtotal * .07) + lv_subtotal;
    ELSE  
        lv_total := (lv_subtotal * .07) + lv_subtotal;
    END IF;
    
    DBMS_OUTPUT.put_line(lv_total);
END;
