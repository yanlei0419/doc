select * from sys_user;
select * from emp;
select sysdate,sysdate - to_date('2013-12-22', 'yyyy-mm-dd'),sysdate - 365 from dual;
select * from scott.emp;
select * from scott.dept;
select * from scott.bonus;
select * from scott.salgrade;
--创建 一个和scott.emp 一样表结构的表
-- create table emp  as select * from scott.emp 
-- 不添加数据
-- where 0=1;
-- 添加数据,什么也不写 也可以完成这个方法
-- where 1=1;
;
-- 添加一张表里全部 数据,此方法的emp 必须要写字段名称
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






