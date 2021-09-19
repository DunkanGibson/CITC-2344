DECLARE
    lv_cnt_num NUMBER(3,1):= 11;
BEGIN
    LOOP
      DBMS_OUTPUT.PUT_LINE (lv_cnt_num);
      lv_cnt_num := lv_cnt_num - 2;
      EXIT WHEN lv_cnt_num <= 2;
      
    END LOOP;
END;

--Create a block that initializes a variable to the value 11. Include a loop to display the variable value and
--subtract 2 from the variable. End the loop processing when the variable value is less than 2.