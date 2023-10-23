title FLAC encoder w/ compression level By VIPLightning
color 02

@echo off

CLS

echo.
echo.
echo MAKE SURE YOUR AUDIO FILES ARE IN FLAC FOLDER B4 
echo YOU PROCEED
echo.
echo.
echo ---------------------FLAC Level--------------------
echo.
echo -1 (fast Compression)
echo -2
echo -3
echo -4
echo -5
echo -6
echo -7
echo -8 (Best compression) 


:compress

set /P c=Please choose a FLAC compression level 1-8 _

IF /I "%c%" EQU "1" GOTO :fast
IF /I "%c%" EQU "2" GOTO :2
IF /I "%c%" EQU "3" GOTO :3
IF /I "%c%" EQU "4" GOTO :4
IF /I "%c%" EQU "5" GOTO :5
IF /I "%c%" EQU "6" GOTO :6
IF /I "%c%" EQU "7" GOTO :7
IF /I "%c%" EQU "8" GOTO :best


goto :compress

:fast

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f --fast
) ELSE (
  ECHO FLAC not found. exitting
)

:2

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f -2
) ELSE (
  ECHO FLAC not found. exitting
)

:3

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f -3
) ELSE (
  ECHO FLAC not found. exitting
)

:4

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f -4
) ELSE (
  ECHO FLAC not found. exitting
)

:5

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f -5
) ELSE (
  ECHO FLAC not found. exitting
)

:6

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f -6
) ELSE (
  ECHO FLAC not found. exitting
)

:7

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f -7
) ELSE (
  ECHO FLAC not found. exitting
)

:best

IF EXIST "FLAC\*.flac" (
  "Tools\flac.exe" FLAC\*.FLAC -f --best
) ELSE (
  ECHO FLAC not found. exitting
)

pause
exit

pause
