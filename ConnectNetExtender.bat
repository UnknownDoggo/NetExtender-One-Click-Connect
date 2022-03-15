@echo off

set username=netextender-username
set password=netextender-password
set domain=server-domain-here
set server=server-hostip-here

::----------------------------------------------
::
:: Change the two variables above according to
:: what your login information is!
::
::----------------------------------------------


echo 'Connecting via NetExtender to Network. . .'

echo 'Server: %server%'
echo 'Domain Name: %domain%'
echo 'Username: %username%'

cd "C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender"

NECLI disconnect

timeout /T 10 /NOBREAK
NECLI connect -s %server% -d %domain% -u %username% -p %password%
NECLI showstatus
timeout /T 10 /NOBREAK
