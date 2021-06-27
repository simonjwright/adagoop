with Ada.Command_Line;
use Ada.Command_Line;
with ada.text_io;
use ada.text_io;
with test;
procedure Lexer is
   X : Test.Token;
   use type test.token;
begin
   if argument_count /= 1 then
      put_line("usage: lexer filename");
     return;
   end if;
   Test.Reset(Argument(1));
   loop
      X:= Test.Get_Token;
      exit when x=test.End_Of_Input;
      Put_Line(Integer'Image(Test.Get_Current_Line) & ":" & Integer'Image(Test.Get_Current_Column) & " " &
         Test.Token'Image(X));
   end loop;
end lexer;