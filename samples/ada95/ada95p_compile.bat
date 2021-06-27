scayacc ada95.y
call gnatchop -w ada95.a
call gnatchop -w ada95_goto.a
sed -e 1d ada95_~2.a > ada95_modified_tokens.a
call gnatchop -w ada95_modified_tokens.a
call gnatchop -w ada95_shift_reduce.a
gcc -c -g ada95_Parser.adb
gcc -c -g ada95_goto.ads
gcc -c -g ada95_tokens.ads
gcc -c -g ada95_shift_reduce.ads
