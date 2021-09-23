DECLARE
    lv_cc_num bb_basket.cardnumber%TYPE;
    lv_cc_type bb_basket.cardtype%TYPE;

BEGIN

    SELECT CARDNUMBER, CARDTYPE
    INTO lv_cc_num, lv_cc_type
    FROM bb_basket
    WHERE IDBASKET = 10;
      IF lv_cc_type = NULL THEN
        DBMS_OUTPUT.PUT_LINE(lv_cc_num || lv_cc_type);
        ELSE
        DBMS_OUTPUT.PUT_LINE('No credit card type indicated.');
    END IF;  
END;
--Revise the PL/SQL block in Challenge 3-2 to include an IF statement that determines the message to
--display. You want to display the message Shopper used credit card type of xxxxxx. The xxxxxx
--represents a card type, based on the following: V = Visa, X = American Express, and M = MasterCard.
--If no type is indicated, as for uncompleted baskets, the message No credit card type indicated
--should be displayed. Test the block with different baskets.