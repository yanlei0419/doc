select 
 ROW_NUMBER()
 OVER(  ORDER BY empno DESC) 
 NO1 ,
ROW_NUMBER() OVER(PARTITION BY deptno ORDER BY sal DESC) NO_ ,
A.empno,A.* 
FROM scott.emp A;


--select * from scott.emp
