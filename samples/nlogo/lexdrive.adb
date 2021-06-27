with Ada.Command_Line;
use Ada.Command_Line;
with ada.text_io;
use ada.text_io;
with small;
procedure Lexdrive is
   X : small.Token;
   use type small.token;
   function to_letter(x : in small.token) return character is
      y : integer := small.token'pos(x);
   begin
      case y is
         when 0..9 =>
             return character'val(character'pos('0')+y);
         when 10..35 =>
             return character'val(character'pos('a')+(y-10));
         when 36..61 =>
             return character'val(character'pos('A')+(y-36));
         when others =>
             return '!';
      end case;
   end to_letter;
begin
   if argument_count /= 1 then
      put_line("usage: lexdrive filename");
     return;
   end if;
   Small.Reset(Argument(1));
   loop
      X:= Small.Get_Token;
      exit when x=small.Done_token or x=small.end_of_input; 
      if x/=small.lparen_token and x/=small.rparen_token then
      Put(to_letter(x));
      end if;
   end loop;
   New_Line;
end lexdrive;
