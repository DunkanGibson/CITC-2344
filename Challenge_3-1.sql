DECLARE
    lv_cc_num VARCHAR2(20);
    lv_cc_type VARCHAR2(1);

BEGIN

    SELECT CARDNUMBER, CARDTYPE
    INTO lv_cc_num, lv_cc_type
    FROM bb_basket
    WHERE IDBASKET = 10;
    DBMS_OUTPUT.PUT_LINE(lv_cc_num || lv_cc_type);
    
END;
--Create a PL/SQL block to retrieve and display the credit card number and type used in purchasing the
--basket with an ID of 10.