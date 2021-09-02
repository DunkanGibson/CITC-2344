DECLARE
    lv_ord_date      DATE;
    lv_last_txt      VARCHAR2(25);
    lv_qty_num       NUMBER(2);
    lv_shipflag_bln  BOOLEAN;
    lv_bln_txt       VARCHAR2(5);
BEGIN
    lv_ord_date := '12-JUL-2021';
    lv_last_txt := 'tree';
    lv_qty_num := 3;
    lv_shipflag_bln := false;
    dbms_output.put_line(lv_ord_date);
    dbms_output.put_line(lv_last_txt);
    dbms_output.put_line(to_char(lv_qty_num, '$99.99'));
    IF lv_shipflag_bln THEN
        lv_bln_txt := 'OK';
    END IF;
    dbms_output.put_line(lv_bln_txt);
END;
