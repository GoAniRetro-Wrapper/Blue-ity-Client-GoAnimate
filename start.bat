echo off



@echo off && cls

title Running Blue'ity Client b0.0.1

TIMEOUT /T 5

:: Important stuff
@echo off && cls
title Blue'ity Client b0.0.1 (Starting)

::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
echo gonna terminate the existing node js apps. so lets get a delay

TIMEOUT /T 2

title Blue'ity Client b0.0.1 (Terminating Existing node apps.)

TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
::  Start Blue'ity Client  ::
:::::::::::::::::::::::::::::

:: Check for installation
@echo GOING TO CHECK FOR 

:start
	title Blue'ity Client b0.0.1 (Checking)

if exist notinstalled (
	echo Blue'ity Client not downloaded! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

::VFProxy installation
:start

title Blue'ity Client b0.0.1 (Installing VFProxy)

echo we need to run the VFProxy

echo Dont worry. we need to delay this batch before we wait to install VFProxy

TIMEOUT /T 5

cd .\VFProxy

start start.bat

cd  ..

echo Starting.

TIMEOUT /T 15

title Blue'ity Client b0.0.1 

@echo Lets clear to make it more good

TIMEOUT /t 5

echo off

@echo off && cls

:: Run npm start
:start
echo Blue'ity client is now starting...

echo Please navigate to http://localhost:1200 on your browser.
npm start
