@echo off
cls
:menu
echo  IP�л�ѡ��˵�
echo ----------------------------------------
echo  1.������
echo  2.������
echo ----------------------------------------
set /p input=����������Ҫ�����������֣�����ѡ�� 

if %input%==1 goto 1 
if %input%==2 goto 2
 
:1
netsh interface ip reset "��������" 
echo ����IP��ַ
 
netsh interface ip set address "��������" static 192.168.9.158 255.255.255.0  192.168.9.254 
 
echo ����DNS
netsh interface ip set dns "��������" static 202.102.192.68  primary
 

cls
exit

:2 
netsh interface ip reset "��������" 
echo ����IP��ַ
 
netsh interface ip set address "��������" static 10.137.132.158 255.255.255.0  10.137.132.254 

 

cls
exit