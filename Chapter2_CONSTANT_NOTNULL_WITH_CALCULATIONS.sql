DECLARE
    lv_taxrate_num  CONSTANT NUMBER(2, 2) :=.06;
    lv_total_num    NUMBER(6, 2) := 50;
    lv_taxamt_num   NUMBER(4, 2);
BEGIN
    lv_taxamt_num := lv_total_num * lv_taxrate_num;
    dbms_output.put_line(lv_taxamt_num);
END;