@echo off
cls
:menu
echo  IP�л�ѡ��˵�
echo ----------------------------------------
echo  1.mysql
echo  2.��Orcale
echo  3.�����ݿ�
echo  4.�ر����ݿ�
echo ----------------------------------------
set /p input=����������Ҫ�����������֣�����ѡ�� 

if %input%==1 goto 1 
if %input%==2 goto 2
if %input%==3 goto 3
if %input%==4 goto 4
 
:1
echo ����Mysql��ʼ...
net start mysql
echo ����mysql����...
 

cls
exit

:2
echo ����OracleserviceORCL��ʼ...
net start oracleserviceORCL
echo ����OracleserviceORCL����...

echo ����TNSListener��ʼ...
lsnrctl start
echo ����TNSListener����...

cls
exit

:3 
echo ����Mysql��ʼ...
net start mysql
echo ����mysql����...
 
echo ����OracleserviceORCL��ʼ...
net start oracleserviceORCL
echo ����OracleserviceORCL����...

echo ����TNSListener��ʼ...
lsnrctl start
echo ����TNSListener����...

cls
exit

:4
echo �ر�Mysql��ʼ...
net stop mysql
echo �ر�mysql����...

echo �ر�OracleserviceORCL��ʼ...
net stop oracleserviceORCL
echo �ر�OracleserviceORCL����...

echo �ر�TNSListener��ʼ...
lsnrctl stop
echo �ر�TNSListener����...
 

cls
exit