del *.ali
..\..\adagoop small.g test
call test_compile
call testp_compile
gnatmake -g -gnat05 tool
