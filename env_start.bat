@echo off

cd /D %~dp0

;;;;;;;;;;;;;;;;;

call env_stop.bat
ping 127.0.0.1 -n 2 >nul

;;;;;;;;;;;;;;;;;

echo Starting PHP FastCGI ...
cd php-7.1.2-nts-Win32-VC14-x86
..\RunHiddenConsole php-cgi.exe -b 127.0.0.1:9000 -c php.ini

echo Starting Nginx ...
cd ../nginx-1.11.10
..\RunHiddenConsole nginx.exe






