"Tools\quickbms.exe" "Tools\wavescan.bms" "Game Files" "Tools\Decoding"
FOR %%b IN ("Game Files\*.BNK") DO ("Tools\bnkextr.exe" "%%b" & MOVE *.wav "Tools\Decoding")
FOR %%c IN (Tools\Decoding\*.wem) DO ("Tools\vgmstream-cli.exe" -o "%%c2" "%%c" & REN "%%c2" *.wav)
MOVE Tools\Decoding\*.wav "WAV"

@echo off

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

echo Unpack finished! Files should be in the 'WAV' folder

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
pause
exit

:hella_no

echo BNKs and PCKs kept, enjoy your unpacked audio! -/u/Vextil ;)

pause
exit

pause
