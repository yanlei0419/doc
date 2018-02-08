@echo off
cls
:menu
echo  IP切换选择菜单
echo ----------------------------------------
echo  1.mysql
echo  2.打开Orcale
echo  3.打开数据库
echo  4.关闭数据库
echo ----------------------------------------
set /p input=根据您的需要，请输入数字，进行选择： 

if %input%==1 goto 1 
if %input%==2 goto 2
if %input%==3 goto 3
if %input%==4 goto 4
 
:1
echo 启动Mysql开始...
net start mysql
echo 启动mysql结束...
 

cls
exit

:2
echo 启动OracleserviceORCL开始...
net start oracleserviceORCL
echo 启动OracleserviceORCL结束...

echo 启动TNSListener开始...
lsnrctl start
echo 启动TNSListener结束...

cls
exit

:3 
echo 启动Mysql开始...
net start mysql
echo 启动mysql结束...
 
echo 启动OracleserviceORCL开始...
net start oracleserviceORCL
echo 启动OracleserviceORCL结束...

echo 启动TNSListener开始...
lsnrctl start
echo 启动TNSListener结束...

cls
exit

:4
echo 关闭Mysql开始...
net stop mysql
echo 关闭mysql结束...

echo 关闭OracleserviceORCL开始...
net stop oracleserviceORCL
echo 关闭OracleserviceORCL结束...

echo 关闭TNSListener开始...
lsnrctl stop
echo 关闭TNSListener结束...
 

cls
exit