@echo off
title Batch Game
echo Hello Lets Get Started
pause >nul
goto LoadingState

:LoadingState
cls
echo Loading Game
set /a respect=0
timeout /t 3 >nul /nobreak
goto mainmenustate

:mainmenustate
cls
echo What Would You Like To Do
echo 1.StartNewGame
echo 2.Exit
echo 3.Tutorial Mode
choice /c 123
if %errorlevel% == 1 goto playstate
if %errorlevel% == 2 exit
if %errorlevel% == 3 goto tutorialplaystate

:playstate
cls
echo Welcome To Your House
echo What Would You Like To Do
echo 1. Search For Respect.
echo 2. Go to Main Menu
choice /c 12
if %errorlevel% equ 1 goto searchstate
if %errorlevel% equ 2 goto mainmenustate

:searchstate
cls
set /a rnd=%random% %% 10
echo You Went To Town And Got...
echo %rnd% Respect
pause >nul
goto playstate

:tutorialplaystate
cls
echo Welcome To The Tutorial 
echo WE Are Going To Search For Respect
timeout /t 5 /nobreak >nul
goto Searchtutorial

:Searchtutorial
cls@echo off 
title Batch Game
echo Hello Lets Get Started
pause >nul
goto LoadingState

:LoadingState
cls
echo Loading Game
set /a respect=0
timeout /t 3 >nul /nobreak
goto mainmenustate

:mainmenustate
cls
echo What Would You Like To Do
echo 1.StartNewGame
echo 2.Exit
choice /c 12
if %errorlevel% == 1 goto playstate
if %errorlevel% == 2 exit

:playstate
cls
echo Welcome To Your House
echo What Would You Like To Do
echo 1. Search For Respect.
echo 2. Go to Main Menu
choice /c 12
if %errorlevel% equ 1 goto searchstate
if %errorlevel% equ 2 goto mainmenustate

:searchstate
cls
set /a rnd=%random% %% 10
echo You Went To Town And Got...
echo %rnd% Respect
pause >nul
goto playstate
echo You Went To Town And Got..
echo 10 Respect
Pause >nul
goto tutorialfinish

:tutorialfinish
cls
echo You Have Hit The Cap For Respect Earned 
echo Congrats 
echo Have Fun
timeout /t 5 /nobreak >nul
goto mainmenustate
