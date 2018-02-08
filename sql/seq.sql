create sequence ve
　　start with 1001
　　increment by 1
　　
　　minvalue 1000

de

select ve.nextVal from dual;--下一个数
select ve.currval from dual;--当前数

　　
