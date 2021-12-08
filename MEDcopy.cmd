@echo off &setlocal enabledelayedexpansion
title Medcopy-drox
::more power to antgsm.com
mode 100,5 >nul
set v=http://www.mediafire.com
set _v=n4y19qg74xt4mg8
:start
color 2f
::created by drox
::for donation gcash 09451034299
title Medcopy-drox [Paste whole link inside the console]  [Enter letter m for manual]
cls     &set __v=
set /p __v="Enter link address here: "
if not defined __v echo Error: No Entry &timeout 3 >Nul &goto start
if %__v%==m goto manual
    for /f "tokens=4 delims=/" %%a in ("%__v%") do set url="%%a"
	  echo %__v% >>logs.txt
cls
echo ====================================================
echo Make sure you are already log-in into your mediafire account 
echo before running this program.
echo ====================================================
CHOICE /C yn /N /M  "Already Log-in? [y/n]: "
if %errorlevel% == 1 goto yes
if %errorlevel% == 2 cls &echo Thank you %username% for using this tool &timeout 5 >nul &exit
:yes
cls
echo.
echo Please wait starting medifire...
::checking for valid link
    	echo %__v% | findstr "http" >nul
    if %errorlevel% NEQ 0 cls &echo Error: Invalid link or link not supported &timeout 4 >nul &goto start
start "" "%v%/?%_v%,%url%"
     msg * Just check the file that you want to ^copy and click ^copy 
       echo finished
   timeout 10 >nul
goto start
:manual
cls
color fc
title MEDcopy Manual Input [Paste part of the url link inside the console] [enter c for cancel]
set /p m="Paste Part of the url address here: "
if %errorlevel% NEQ 0 cls &echo Error: Invalid link or link not supported &timeout 4 >nul &goto start
if %m%==c goto start
cls
echo ====================================================
echo Make sure you are already log-in into your mediafire account 
echo before running this program.
echo ====================================================
CHOICE /C yn /N /M  "Already Log-in? [y/n]: "
if %errorlevel% == 1 goto ok
if %errorlevel% == 2 cls &echo Thank you %username% for using this tool &timeout 5 >nul &exit
:ok
echo Please wait starting mediafire...
start "" "%v%/?%_v%,%m%"
echo "%v%/?%_v%,%m%" >>logs.txt
     msg * Just check the file that you want to ^copy and click ^copy 
       echo finished
   timeout 10 >nul
goto start




