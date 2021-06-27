-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
DIGIT            [0-9]
INTEGER          ({DIGIT}+)
EXPONENT         ([eE](\+?|-){INTEGER})
DECIMAL_LITERAL  {INTEGER}\.{DIGIT}{INTEGER}{EXPONENT}?
IDENTIFIER       [a-zA-Z]((-|"_")?[a-zA-Z0-9])*       
STRING_LITERAL   \"([^"]*(\"\")*)*\" 
CHAR_LITERAL     \'[^\n]\'          

%%
[aA][nN][dD] {Current_Column := Current_Column + YYText'Length; return (AND_token);}
[aA][sS][kK] {Current_Column := Current_Column + YYText'Length; return (ASK_token);}
[cC][lL][eE][aA][rR][-][aA][lL][lL] {Current_Column := Current_Column + YYText'Length; return (CLEARALL_token);}
[eE][nN][dD] {Current_Column := Current_Column + YYText'Length; return (END_token);}
[fF][oO][rR][wW][aA][rR][dD] {Current_Column := Current_Column + YYText'Length; return (FORWARD_token);}
[gG][lL][oO][bB][aA][lL][sS] {Current_Column := Current_Column + YYText'Length; return (GLOBALS_token);}
[hH][eE][aA][dD][iI][nN][gG] {Current_Column := Current_Column + YYText'Length; return (HEADING_token);}
[iI][fF] {Current_Column := Current_Column + YYText'Length; return (IF_token);}
[oO][rR] {Current_Column := Current_Column + YYText'Length; return (OR_token);}
[oO][uU][tT][pP][uU][tT][-][pP][rR][iI][nN][tT] {Current_Column := Current_Column + YYText'Length; return (OUTPUTPRINT_token);}
"[" {Current_Column := Current_Column + YYText'Length; return (LBRACK_token);}
[pP][cC][oO][lL][oO][rR] {Current_Column := Current_Column + YYText'Length; return (PCOLOR_token);}
[pP][xX][cC][oO][rR] {Current_Column := Current_Column + YYText'Length; return (PXCOR_token);}
[pP][yY][cC][oO][rR] {Current_Column := Current_Column + YYText'Length; return (PYCOR_token);}
[rR][aA][nN][dD][oO][mM] {Current_Column := Current_Column + YYText'Length; return (RANDOM_token);}
[rR][aA][nN][dD][oO][mM][-][fF][lL][oO][aA][tT] {Current_Column := Current_Column + YYText'Length; return (RANDOMFLT_token);}
"]" {Current_Column := Current_Column + YYText'Length; return (RBRACK_token);}
[sS][eE][tT] {Current_Column := Current_Column + YYText'Length; return (SET_token);}
[tT][oO] {Current_Column := Current_Column + YYText'Length; return (TO_token);}
[tT][uU][rR][tT][lL][eE][sS] {Current_Column := Current_Column + YYText'Length; return (TURTLES_token);}
[-]?{INTEGER}(\.{INTEGER})? {Current_Column := Current_Column + YYText'Length; return (NUMBER_token);}
{IDENTIFIER} {Current_Column := Current_Column + YYText'Length; return (ID_token);}
"@#$#@#$#@" {Current_Column := Current_Column + YYText'Length; return (DONE_token);}
"+" {Current_Column := Current_Column + YYText'Length; return (PLUS_token);}
"-" {Current_Column := Current_Column + YYText'Length; return (MINUS_token);}
"*" {Current_Column := Current_Column + YYText'Length; return (TIMES_token);}
"," {Current_Column := Current_Column + YYText'Length; return (COMMA_token);}
"(" {Current_Column := Current_Column + YYText'Length; return (LPAREN_token);}
")" {Current_Column := Current_Column + YYText'Length; return (RPAREN_token);}
\"[^\n]*\" {Current_Column := Current_Column + YYText'Length; return (STRING_token);}
";;"[^\n]*	 {Current_Column := Current_Column + YYText'Length;}
[ \t] {Current_Column := Current_Column + 1;}
[\n] {Current_Line := Current_Line + 1; Current_Column := 1;}
%%
package small is
   Invalid_Character : exception; -- only can handle ASCII 0..127
   type Token is (
      End_Of_Input,
      Error,
      STRING_token,
      RPAREN_token,
      LPAREN_token,
      COMMA_token,
      TIMES_token,
      MINUS_token,
      PLUS_token,
      DONE_token,
      ID_token,
      NUMBER_token,
      TURTLES_token,
      TO_token,
      SET_token,
      RBRACK_token,
      RANDOMFLT_token,
      RANDOM_token,
      PYCOR_token,
      PXCOR_token,
      PCOLOR_token,
      LBRACK_token,
      OUTPUTPRINT_token,
      OR_token,
      IF_token,
      HEADING_token,
      GLOBALS_token,
      FORWARD_token,
      END_token,
      CLEARALL_token,
      ASK_token,
      AND_token,
      Dummy_Token);

   procedure Reset(Filename : in String);
   function Get_Token return Token;
   function Get_Token_String return String;
   function Get_Current_Line return Natural;
   function Get_Current_Column return Natural;
   procedure Close_Files;
end small;

with small_IO;
package body small is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      small_IO.Open_Input (Filename);
      small_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      small_IO.Close_Input;
      small_IO.Close_Output;
   end Close_Files;

##

   function Get_Token return Token is
   begin
      return YYLex;
   exception when Constraint_Error =>
      raise Invalid_Character;
   end Get_Token;

   function Get_Token_String return String is
   begin
      return YYText;
   end Get_Token_String;

   function Get_Current_Line return Natural is
   begin
      return Current_Line;
   end Get_Current_Line;

   function Get_Current_Column return Natural is
   begin
      return Current_Column;
   end Get_Current_Column;

end small;
