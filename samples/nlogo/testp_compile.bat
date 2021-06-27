scayacc test.y
call gnatchop -w test.a
call gnatchop -w test_goto.a
sed -e 1d test_t~1.a > test_modified_tokens.a
call gnatchop -w test_modified_tokens.a
call gnatchop -w test_shift_reduce.a
gcc -c -g -gnat05 test_Parser.adb
gcc -c -g -gnat05 test_goto.ads
gcc -c -g -gnat05 test_tokens.ads
gcc -c -g -gnat05 test_shift_reduce.ads
