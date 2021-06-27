scaflex ada95.l
call gnatchop -w ada95.a
call gnatchop -w ada95_io.a
call gnatchop -w ada95_dfa.a
gnatmake -g ada95.adb
