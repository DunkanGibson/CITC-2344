DECLARE
   TYPE basket_type IS RECORD (
      cardnum bb_basket.cardnumber%TYPE,
      cardtype bb_basket.cardtype%TYPE);
      
    shop_basket basket_type;
   
BEGIN

    SELECT CARDNUMBER, CARDTYPE
    INTO shop_basket
    FROM bb_basket
    WHERE IDBASKET = 10;
    DBMS_OUTPUT.PUT_LINE(shop_basket.cardnum || shop_basket.cardtype);
    
END;

--Review your code for Challenge 3-2, which retrieves credit card information. Modify this block to use a
--record variable. Use a TYPE statement to declare the record data type.