@echo off
cls
:menu
echo  IP切换选择菜单
echo ----------------------------------------
echo  1.外网；
echo  2.内网；
echo ----------------------------------------
set /p input=根据您的需要，请输入数字，进行选择： 

if %input%==1 goto 1 
if %input%==2 goto 2
 
:1
netsh interface ip reset "本地连接" 
echo 设置IP地址
 
netsh interface ip set address "本地连接" static 192.168.9.158 255.255.255.0  192.168.9.254 
 
echo 设置DNS
netsh interface ip set dns "本地连接" static 202.102.192.68  primary
 

cls
exit

:2 
netsh interface ip reset "本地连接" 
echo 设置IP地址
 
netsh interface ip set address "本地连接" static 10.137.132.158 255.255.255.0  10.137.132.254 

 

cls
exit
