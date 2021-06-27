REM Windows 95
REM COMPILE the scaflex tool

REM Use GNATMAKE
gnatmake scaflex
rm *.o *.ali

REM Show output file
ls -l scaflex.exe
