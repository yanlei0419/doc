select * from v$session;
select count(1) from v$session;
select count(1) from v$session where status='ACTIVE';
-- show parameter processes; �����������
select
