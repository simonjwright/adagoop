REM For Windows 95 using GNAT 3.09
REM COMPILE the scayacc tool

REM Print warning
REM Do not worry about the warnings in cli2 and parser
REM 2 warnings on cli2.adb:119:17
REM 2 warnings on parser.adb:229:15

REM Use GNATMAKE
gnatmake scayacc
rm *.o *.ali

REM Show output file
ls -l scayacc.exe
