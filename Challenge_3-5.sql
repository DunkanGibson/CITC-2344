DECLARE
    lv_state_txt bb_basket.shipstate%TYPE;
    lv_sub_number bb_basket.subtotal%TYPE;
    lv_basket_number bb_basket.idbasket%TYPE := 6;
    lv_tax_number bb_basket.tax%TYPE;
BEGIN
    SELECT shipstate, subtotal, tax
    INTO lv_state_txt, lv_sub_number, lv_tax_number
    FROM bb_basket
        WHERE idbasket = lv_basket_number;
    IF lv_state_txt = 'VA' THEN
      UPDATE bb_basket
        SET TAX = lv_sub_number * .06
        WHERE idbasket = lv_basket_number;
    ELSIF lv_state_txt = 'ME' THEN
        UPDATE bb_basket
        SET TAX = lv_sub_number * .05
        WHERE idbasket = lv_basket_number;
    ELSIF lv_state_txt = 'NY' THEN
        UPDATE bb_basket
        SET TAX = lv_sub_number * .07
        WHERE idbasket = lv_basket_number;
    ELSE
        UPDATE bb_basket
        SET TAX = lv_sub_number * .04
        WHERE idbasket = lv_basket_number;
    END IF;
    DBMS_OUTPUT.PUT_LINE(lv_tax_number);
END;

--Review the PL/SQL block in Figure 3-12, which calculates the tax amount for an order. Modify the block
--to store the tax amount value calculated in the TAX column of the BB_BASKET table instead of simply
--displaying this value. Test the block with a basket ID of 13.
