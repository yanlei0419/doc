SELECT object_name, machine, s.sid, s.serial#
  FROM gv$locked_object l, dba_objects o, gv$session s
 WHERE l.object_id¡¡ = o.object_id
   AND l.session_id = s.sid;

--ALTER system kill session '293, 9498'; 
--ALTER system kill session '294, 21948'; 
