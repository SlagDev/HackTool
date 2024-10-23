@echo off
color A
title User Cracker Tool
:menu
echo.
echo 1) List Users on Computer
echo 2) Create a New User
echo 3) Change a Users Password
echo 4) Delete a User Account
echo 5) Exit
echo.
set /p input="@ "

if %input% EQU 1 (
    title List Users
    cls
    net user
    pause
    cls
    goto menu
)

if %input% EQU 2 (
    call :checkadmin
    title Create User
    cls
    set /p user="Username: "
    set /p passwordd="Password: "
    net user %user% %password% /add
    echo New user created with credentials:
    echo %user% : %password%
    pause
    cls
    goto menu
)

if %input% EQU 3 (
    call :checkadmin
    title Change Password
    cls
    set /p user="Target User: "
    set /p password="New Password: "
    net user %user% %password%
    pause
    cls
    goto menu
)

if %input% EQU 4 (
    cls
    echo Cant Delete an Account
    pause
    cls
    goto menu
)

if %input% EQU 5 exit

:checkadmin
net session >nul
if %errorlevel% NEQ 0 (
    cls
    echo.
    echo Restart the script and run it as Admin
)