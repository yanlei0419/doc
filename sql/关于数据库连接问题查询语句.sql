select * from v$session;
select count(1) from v$session;
select count(1) from v$session where status='ACTIVE';
-- show parameter processes; 最大数据连接
select
