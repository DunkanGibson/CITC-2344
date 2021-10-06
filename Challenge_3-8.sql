DECLARE 
    item_record bb_basketitem%ROWTYPE;
    lv_basket_item_id_num NUMBER(3,0) := 18;
BEGIN
    SELECT *
        INTO item_record
        FROM bb_basketitem
        WHERE idbasketitem = lv_basket_item_id_num;
    DBMS_OUTPUT.PUT_LINE(item_record.price); 
    DBMS_OUTPUT.PUT_LINE(item_record.idproduct);
END;

--One Brewbean’s application page is used to display all details for a particular item in a basket. Create a
--PL/SQL block to retrieve all data for a specific row from the BB_BASKETITEM table. Use an initialized
--variable to provide a basket item ID in the block, and use a record variable to hold the data retrieved
--from the table. Display at least the idproduct and price values.