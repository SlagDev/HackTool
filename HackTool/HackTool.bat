@echo off
title HackTool
chcp 65001 >nul
cd files
color A
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) SMB Bruteforce Attack[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) User Cracker Tool[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) Exit[0m  
echo [38;2;255;255;0m        ║[0m  
set /p input=.%BS% [38;2;255;255;0m       ╚══════^>[0m  
if /I %input% EQU 1 start smb_bruteforce.bat
if /I %input% EQU 2 start usercracker.bat
if /I %input% EQU 3 exit
cls
goto start

:banner
echo.
echo.
echo                     [38;2;255;0;0m███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗[0m     
echo                     [38;2;255;51;0m████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     [0m
echo                     [38;2;255;102;0m██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║    [0m 
echo                     [38;2;255;153;0m██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     [0m
echo                     [38;2;255;204;0m██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo                     [38;2;255;255;0m╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.