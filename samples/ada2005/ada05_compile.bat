scaflex ada05.l
call gnatchop -w ada05.a
call gnatchop -w ada05_io.a
call gnatchop -w ada05_dfa.a
gnatmake -g ada05.adb
