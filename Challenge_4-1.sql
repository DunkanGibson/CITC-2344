BEGIN
  UPDATE bb_shopper
   SET zipcode = 67488
   WHERE idshopper = 27;
  IF SQL%ROWCOUNT > 0 THEN
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' rows updated');
  ELSE
    DBMS_OUTPUT.PUT_LINE('No rows changed');
  END IF;
END;

--Create a block that changes the zip code in the BB_SHOPPER table for a specific shopper. If any rows
--are updated, display the number of rows updated. If no rows are updated, display a message stating
--No rows changed. Test the block with two sets of values. First, change the zip code for shopper 27 to
--67488. Second, attempt to change the zip code for shopper 37 to 67488.