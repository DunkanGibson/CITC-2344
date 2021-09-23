DECLARE
    lv_cc_num bb_basket.cardnumber%TYPE;
    lv_cc_type bb_basket.cardtype%TYPE;

BEGIN

    SELECT CARDNUMBER, CARDTYPE
    INTO lv_cc_num, lv_cc_type
    FROM bb_basket
    WHERE IDBASKET = 10;
    DBMS_OUTPUT.PUT_LINE(lv_cc_num || lv_cc_type);
    
END;
--Revise the PL/SQL block in Challenge 3-1 to use the %TYPE attribute where appropriate.