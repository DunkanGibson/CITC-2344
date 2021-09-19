DECLARE
    lv_discount_code VARCHAR2(1) := 'H';
    lv_order_total NUMBER(8,2) := 100;
    lv_discount_amount NUMBER(5,2);
BEGIN
    CASE
        WHEN lv_discount_code = 'A' THEN
        lv_discount_amount := lv_order_total * 0.05;
        WHEN lv_discount_code = 'B' THEN
        lv_discount_amount := lv_order_total * 0.1; 
        WHEN lv_discount_code = 'C' THEN
        lv_discount_amount := lv_order_total * 0.15;
        ELSE 
            lv_discount_amount := lv_order_total * 0.02;
        END CASE;
        
    DBMS_OUTPUT.PUT_LINE(lv_discount_amount);
    DBMS_OUTPUT.PUT_LINE(lv_discount_code);
    DBMS_OUTPUT.PUT_LINE(lv_order_total - lv_discount_amount);
  END;  
    
    
    
    
    
    