DECLARE
    lv_shipcntry_txt  VARCHAR2(15) NOT NULL := 'US';
    lv_taxrate_num    CONSTANT NUMBER(2, 2) :=.06;
BEGIN
    
    lv_shipcntry_txt := 'abzj';
    dbms_output.put_line(lv_shipcntry_txt);
    dbms_output.put_line(lv_taxrate_num);
END;