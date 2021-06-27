-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
DIGIT            [0-9]
INTEGER          ({DIGIT}*)
EXPONENT         ([eE](\+?|-){INTEGER})
DECIMAL_LITERAL  {INTEGER}\.{DIGIT}{INTEGER}{EXPONENT}?
IDENTIFIER       [a-zA-Z]((-|"_")?[a-zA-Z0-9])*       
STRING_LITERAL   \"([^"]*(\"\")*)*\" 
CHAR_LITERAL     \'[^\n]\'          

%%
[aA][nN][dD]                     {Current_Column := Current_Column + YYText'Length; return (AND_token);}
[aA][rR][rR][aA][yY]   {Current_Column := Current_Column + YYText'Length; return (ARRAY_token);}
[bB][eE][gG][iI][nN]            {Current_Column := Current_Column + YYText'Length; return (BEGIN_token);}
[bB][oO][oO][lL][eE][aA][nN]    {Current_Column := Current_Column + YYText'Length; return (BOOLEAN_token);}
[cC][lL][oO][sS][eE]            {Current_Column := Current_Column + YYText'Length; return (CLOSE_token);}
[dD][oO]                        {Current_Column := Current_Column + YYText'Length; return (DO_token);}
[eE][lL][sS][eE]                {Current_Column := Current_Column + YYText'Length; return (ELSE_token);}
[eE][nN][dD]                    {Current_Column := Current_Column + YYText'Length; return (END_token);}
[fF][uU][nN][cC][tT][iI][oO][nN] {Current_Column := Current_Column + YYText'Length; return (FUNCTION_token);}
[iI][fF] {Current_Column := Current_Column + YYText'Length; return (IF_token);}
[iI][nN][tT][eE][gG][eE][rR]    {Current_Column := Current_Column + YYText'Length; return (INTEGER_token);}
[nN][oO][tT]                    {Current_Column := Current_Column + YYText'Length; return (NOT_token);}
[oO][fF]                        {Current_Column := Current_Column + YYText'Length; return (OF_token);}
[oO][pP][eE][nN]                {Current_Column := Current_Column + YYText'Length; return (OPEN_token);}
[oO][rR]                        {Current_Column := Current_Column + YYText'Length; return (OR_token);}
[pP][rR][oO][cC][eE][dD][uU][rR][eE] {Current_Column := Current_Column + YYText'Length; return (PROCEDURE_token);}
[rR][eE][aA][dD]                     {Current_Column := Current_Column + YYText'Length; return (READ_token);}
[rR][eE][aA][lL]                     {Current_Column := Current_Column + YYText'Length; return (REAL_token);}
[rR][eE][cC][oO][rR][dD]             {Current_Column := Current_Column + YYText'Length; return (RECORD_token);}
[tT][hH][eE][nN]                     {Current_Column := Current_Column + YYText'Length; return (THEN_token);}
[tT][yY][pP][eE]                     {Current_Column := Current_Column + YYText'Length; return (TYPE_token);}
[wW][hH][iI][lL][eE]                {Current_Column := Current_Column + YYText'Length; return (WHILE_token);}
[wW][rR][iI][tT][eE]                {Current_Column := Current_Column + YYText'Length; return (WRITE_token);}
"--"[^\n]*	 {Current_Column := Current_Column + YYText'Length;}
[ \t] {Current_Column := Current_Column + 1;}
[\n] {Current_Line := Current_Line + 1; Current_Column := 1;}
%%
package test is
   Invalid_Character : exception; -- only can handle ASCII 0..127
   type Token is (
      End_Of_Input,
      Error,
      WRITE_token,
      WHILE_token,
      TYPE_token,
      THEN_token,
      RECORD_token,
      REAL_token,
      READ_token,
      PROCEDURE_token,
      OR_token,
      OPEN_token,
      OF_token,
      NOT_token,
      INTEGER_token,
      IF_token,
      FUNCTION_token,
      END_token,
      ELSE_token,
      DO_token,
      CLOSE_token,
      BOOLEAN_token,
      BEGIN_token,
      ARRAY_token,
      AND_token,
      Dummy_Token);

   procedure Reset(Filename : in String);
   function Get_Token return Token;
   function Get_Token_String return String;
   function Get_Current_Line return Natural;
   function Get_Current_Column return Natural;
   procedure Close_Files;
end test;

with test_IO;
package body test is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      test_IO.Open_Input (Filename);
      test_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      test_IO.Close_Input;
      test_IO.Close_Output;
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

end test;
