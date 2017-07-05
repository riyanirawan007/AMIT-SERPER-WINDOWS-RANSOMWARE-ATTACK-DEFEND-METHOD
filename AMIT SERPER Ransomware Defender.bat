::
::	*********************************
::  PREVENT RANSOMWARE ATTACK
::	PERFC WINDOWS FILES
::	BATCH SCRIPT
::	*********************************
::
::	*********************************
::	CREDIT GOES TO SECURITY RESEARCHER
::	AMIT SERPER ( Twitter @0xAmit )
::	WHO FOUND THIS METHOD
::	*********************************
::  
::	*********************************
::	I JUST MAKE THIS SIMPLE BATCH SCRIPT
::	@RynEL7
::	*********************************

@echo off
Color 3B
title AMIT SERPER PREVENT RANSOMWARE ATTACK

:MainMenu
cls
echo          -------------------------------------------
echo              AMIT SERPER PREVENT RANSOMWARE ATTACK
echo                      PERFC WINDOWS FILES
echo          !Make Sure This Script Run As Administator!
echo              I JUST MAKE THIS SIMPLE BATCH SCRIPT
echo                           @RynEL7
echo          -------------------------------------------
echo          Credits To : 
echo          RESEARCH BY AMIT SERPER ( Twitter @0xAmit )
echo          WHO FOUND THIS METHOD
echo          -------------------------------------------
echo          1. Make PERFC Windows Files
echo          2. Deleting PERFC Windows Files
echo          3. Check Status PERFC Windows Files
echo          4. Exit
set /p        "menu=>  Choose Your Decision :"
if %menu%==1 goto MakeDefend
if %menu%==2 goto Delete
if %menu%==3 goto Check
if %menu%==4 goto Exit
cls
echo          Incorrect input, please try again !
pause
goto MainMenu 



:MakeDefend
goto MakePerfcFiles


:MakePerfcFiles
echo          -------------------------------------------
echo          Making PERFC Files...
if exist PerfcFiles RMDIR /q PerfcFiles
MKDIR PerfcFiles
echo          ___________________________________________
echo          Make Perfc File
Copy C:\Windows\notepad.exe PerfcFiles\perfc
echo          ___________________________________________
echo          Make Perfc.dat File
Copy C:\Windows\notepad.exe PerfcFiles\perfc.dat
echo          ___________________________________________
echo          Make Perfc.dll File
Copy C:\Windows\notepad.exe PerfcFiles\perfc.dll
echo          ___________________________________________
echo          Setting Permission...
attrib +R PerfcFiles\* /s
echo          DONE MAKING PERFC FILES !
echo          ___________________________________________
goto MoveToWindows

:MoveToWindows
echo          Defending your windows...
if exist C:\Windows\perfc Del /f /q C:\Windows\perfc
if exist C:\Windows\perfc.dat Del /f /q C:\Windows\perfc.dat
if exist C:\Windows\perfc.dll Del /f /q C:\Windows\perfc.dll
Move /Y PerfcFiles\* C:\Windows
echo          DONE DEFENDING YOUR WINDOWS !
RMDIR /q PerfcFiles
echo          -------------------------------------------
pause
goto MainMenu 

:Delete
echo          -------------------------------------------
echo          Deleting PERFC Files...
echo          ___________________________________________
echo          Delete Perfc File
Del /f /q C:\Windows\perfc
echo          ___________________________________________
echo          Delete Perfc.dat File
Del /f /q C:\Windows\perfc.dat
echo          ___________________________________________
echo          Delete Perfc.dll File
Del /f /q C:\Windows\perfc.dll
echo          ___________________________________________
echo          DONE DELETING PERFC FILES !
echo          -------------------------------------------
pause
goto MainMenu 

:Check
echo          -------------------------------------------
echo          Check Status PERFC Files...
echo          ___________________________________________
echo          Check Perfc File
if exist C:\Windows\perfc echo          Perfc File exist !
if not exist C:\Windows\perfc echo          Perfc File not exist !
echo          ___________________________________________
echo          Check Perfc.dat File
if exist C:\Windows\perfc.dat echo          Perfc.dat File exist !
if not exist C:\Windows\perfc.dat echo          Perfc.dat File not exist !
echo          ___________________________________________
echo          Check Perfc.dll File
if exist C:\Windows\perfc.dll echo          Perfc.dll File exist !
if not exist C:\Windows\perfc.dll echo          Perfc.dll File not exist !
echo          ___________________________________________
echo          DONE CHECKING PERFC FILES !
echo          ------------------------------------------- 
pause
goto MainMenu 


:Exit
cls 
echo THANKS, HOPE THIS HELPFULL...
pause
