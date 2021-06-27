scayacc ada05.y
call gnatchop -w ada05.a
call gnatchop -w ada05_goto.a
sed -e 1d ada05_~2.a > ada05_modified_tokens.a
call gnatchop -w ada05_modified_tokens.a
call gnatchop -w ada05_shift_reduce.a
gcc -c -g -gnat05 ada05_Parser.adb
gcc -c -g -gnat05 ada05_goto.ads
gcc -c -g -gnat05 ada05_tokens.ads
gcc -c -g -gnat05 ada05_shift_reduce.ads
