..\..\adagoop small.g small
scaflex small.l
call gnatchop -w small.a
call gnatchop -w small_io.a
call gnatchop -w small_dfa.a
gnatmake -g lexdrive.adb
