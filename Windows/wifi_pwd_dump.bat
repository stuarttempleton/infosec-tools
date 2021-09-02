::
:: Wifi password dump automation tool.
:: Script by VOLTUR
::

@echo off
setlocal enabledelayedexpansion

set profiles[0]=empty
set /a count=0

echo.
echo List of known wifi SSID passwords:
echo.

::
:: GET KNOWN SSIDs
::
FOR /F "tokens=1,2 USEBACKQ delims=:" %%F IN (`netsh wlan show profiles`)  DO (
    echo "%%F" | FIND /i "All User Profile" >nul
    IF !errorlevel! EQU 0 (
        set profiles[!count!]=%%G
        set /a count+=1
    )
)
set /a count-=1

::
:: DUMP PASSWORDS
::
for /l %%n in (0,1,%count%) do ( 
    set profile=!profiles[%%n]!
    for /f "tokens=* delims= " %%a in ("!profile!") do set profile=%%a
    call :find_password "!profile!"
)
echo.
goto :eof

:find_password
set c=netsh wlan show profile "%~1" key=clear
FOR /F "tokens=1,2 USEBACKQ delims=:" %%A IN (`!c!`)  DO (
    echo "%%A" | FIND /i "Key Content" >nul
    IF !errorlevel! EQU 0 (
        echo %~1:%%B
    )
)
exit /b 0