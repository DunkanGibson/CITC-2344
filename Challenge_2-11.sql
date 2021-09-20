DECLARE
    lv_cnt_num NUMBER(3,1):= 30;
BEGIN
   WHILE lv_cnt_num >= 2 LOOP
      DBMS_OUTPUT.PUT_LINE (lv_cnt_num);
      lv_cnt_num := lv_cnt_num - 5;
    END LOOP;
END;

--Create the same block described in Challenge 2-10, but use a WHILE loop instead of a basic loop.