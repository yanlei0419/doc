select * from sys_user;
select * from emp;
select sysdate,sysdate - to_date('2013-12-22', 'yyyy-mm-dd'),sysdate - 365 from dual;
select * from scott.emp;
select * from scott.dept;
select * from scott.bonus;
select * from scott.salgrade;
--���� һ����scott.emp һ����ṹ�ı�
-- create table emp  as select * from scott.emp 
-- ���������
-- where 0=1;
-- �������,ʲôҲ��д Ҳ��������������
-- where 1=1;
;
-- ���һ�ű���ȫ�� ����,�˷�����emp ����Ҫд�ֶ�����
--insert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) select * from scott.emp

-- drop table emp;



select * 
from emp 
order by empno;

select deptNo,count(*)
from emp 
group by deptNo;

select job,count(*)
from emp 
group by job;






