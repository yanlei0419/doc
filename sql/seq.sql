create sequence ve
����start with 1001
����increment by 1
����
����minvalue 1000

de

select ve.nextVal from dual;--��һ����
select ve.currval from dual;--��ǰ��

����
