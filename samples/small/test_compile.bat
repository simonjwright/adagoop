scaflex test.l
call gnatchop -w test.a
call gnatchop -w test_io.a
call gnatchop -w test_dfa.a
gnatmake -g test.adb
