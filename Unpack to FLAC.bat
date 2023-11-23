"Tools\quickbms.exe" "Tools\wavescan.bms" "Game Files" "Tools\Decoding"
FOR %%b IN ("Game Files\*.BNK") DO ("Tools\bnkextr.exe" "%%b" & MOVE *.wav "Tools\Decoding")
FOR %%c IN (Tools\Decoding\*.wem) DO ("Tools\vgmstream-cli.exe" -o "%%c2" "%%c" & REN "%%c2" *.wav)

@echo off 

cls

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

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" --fast & DEL "%%d")

:2

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" -f -2 & DEL "%%d")

:3

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" -f -3 & DEL "%%d")

:4

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" -f -4 & DEL "%%d")

:5

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" -f -5 & DEL "%%d")

:6

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" -f -6 & DEL "%%d")

:7

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" -f -7 & DEL "%%d")

:best

FOR %%d IN (Tools\Decoding\*.WAV) DO ("Tools\flac.exe" "%%d" --best & DEL "%%d")

MOVE Tools\Decoding\*.FLAC "FLAC"

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ((  '####@@!!$$    ))
echo        `#####@@!$$`  ))
echo     ((  '####@!!$:
echo    ((  ,####@!!$:   ))
echo        .###@!!$:
echo        `##@@!$:
echo         `#@!!$
echo   !@#    `#@!$:       @#$
echo    #$     `#@!$:       !@!
echo             '@!$:
echo         '`\   '!$: /`'
echo            '\  '!: /'
echo              '\ : /'
echo   -.'-/\\\-.'//.-'/:'\.'-.JrS'.'-=_\\
echo ' -.'-.\\'-.'//.-'.`-.'_\\-.'.-\'.-//
echo      Watch out, it's the tornado!

echo.
echo -------------------------------------------------------------

echo Unpack finished! Files should be in the 'FLAC' folder

echo -------------------------------------------------------------
echo.

:choice

set /P c=Should I delete BNKs and PCKs from the 'Game Files' folder [Y/N]?
if /I "%c%" EQU "Y" goto :yes
if /I "%c%" EQU "N" goto :hella_no
goto :choice

:yes

FOR %%e IN ("Game Files\*.PCK") DO (DEL "%%e")
FOR %%f IN ("Game Files\*.BNK") DO (DEL "%%f")

echo Files deleted, enjoy your unpacked audio! -/u/Vextil ;)

:hella_no

echo BNKs and PCKs kept, enjoy your unpacked audio! -/u/Vextil ;)



pause
exit

pause
