-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
DIGIT            [0-9]
INTEGER         ({DIGIT}*)
EXPONENT         ([eE](\+?|-){DIGIT}+)
DECIMAL_LITERAL  ({INTEGER}\.{DIGIT}{INTEGER}{EXPONENT}?)|({INTEGER}\.?{DIGIT}{INTEGER}{EXPONENT})
CHARACTER     [a-zA-Z]
SYMBOL            [`~!@#$%&*()_-\;:',<.>/?]

%%
[pP][rR][oO][cC][eE][dD][uU][rR][eE] {Current_Column := Current_Column + YYText'Length; return (PROCEDURE_token);}
[bB][eE][gG][iI][nN] {Current_Column := Current_Column + YYText'Length; return (BEGIN_token);}
[iI][fF] {Current_Column := Current_Column + YYText'Length; return (IF_token);}
[tT][hH][eE][nN] {Current_Column := Current_Column + YYText'Length; return (THEN_token);}
[eE][lL][sS][eE] {Current_Column := Current_Column + YYText'Length; return (ELSE_token);}
[wW][hH][iI][lL][eE] {Current_Column := Current_Column + YYText'Length; return (WHILE_token);}
[lL][oO][oO][pP] {Current_Column := Current_Column + YYText'Length; return (LOOP_token);}
[eE][nN][dD] {Current_Column := Current_Column + YYText'Length; return (END_token);}
[cC][oO][nN][sS][tT][aA][nN][tT] {Current_Column := Current_Column + YYText'Length; return (CONSTANT_token);}
[iI][nN][tT][eE][gG][eE][rR] {Current_Column := Current_Column + YYText'Length; return (INTEGER_DECLARE_token);}
[fF][lL][oO][aA][tT] {Current_Column := Current_Column + YYText'Length; return (FLOAT_DECLARE_token);}
[sS][tT][rR][iI][nN][gG] {Current_Column := Current_Column + YYText'Length; return (STRING_DECLARE_token);}
[tT][yY][pP][eE] {Current_Column := Current_Column + YYText'Length; return (TYPE_token);}
[aA][rR][Rr][aA][Yy] {Current_Column := Current_Column + YYText'Length; return (ARRAY_token);}
[iI][sS] {Current_Column := Current_Column + YYText'Length; return (IS_token);}
[rR][aA][nN][gG][eE] {Current_Column := Current_Column + YYText'Length; return (RANGE_KW_token);}
[oO][fF] {Current_Column := Current_Column + YYText'Length; return (OF_token);}
[+] {Current_Column := Current_Column + YYText'Length; return (ADDITION_token);}
[-] {Current_Column := Current_Column + YYText'Length; return (SUBTRACTION_token);}
[*] {Current_Column := Current_Column + YYText'Length; return (MULTIPLICATION_token);}
[/] {Current_Column := Current_Column + YYText'Length; return (DIVISION_token);}
[nN][oO][tT] {Current_Column := Current_Column + YYText'Length; return (NOT_token);}
[oO][rR] {Current_Column := Current_Column + YYText'Length; return (OR_token);}
[aA][nN][dD] {Current_Column := Current_Column + YYText'Length; return (AND_token);}
[=] {Current_Column := Current_Column + YYText'Length; return (EQUAL_token);}
[(] {Current_Column := Current_Column + YYText'Length; return (OPEN_PARN_token);}
[)] {Current_Column := Current_Column + YYText'Length; return (CLOSE_PARN_token);}
[>] {Current_Column := Current_Column + YYText'Length; return (GREATER_token);}
[<] {Current_Column := Current_Column + YYText'Length; return (LESS_token);}
[>][=] {Current_Column := Current_Column + YYText'Length; return (GT_EQUAL_token);}
[<][=] {Current_Column := Current_Column + YYText'Length; return (LS_EQUAL_token);}
[.][.] {Current_Column := Current_Column + YYText'Length; return (RANGE_OP_token);}
[;] {Current_Column := Current_Column + YYText'Length; return (END_LINE_token);}
:= {Current_Column := Current_Column + YYText'Length; return (ASSIGNMENT_token);}
["]([^"]|(["]["]))*["] {Current_Column := Current_Column + YYText'Length; return (STRING_token);}
{INTEGER} {Current_Column := Current_Column + YYText'Length; return (INTEGER_LITERAL_token);}
{DECIMAL_LITERAL} {Current_Column := Current_Column + YYText'Length; return (FLOAT_LITERAL_token);}
{CHARACTER}(_?({CHARACTER}|{DIGIT}))* {Current_Column := Current_Column + YYText'Length; return (NAME_token);}
"--"[^\n]* {Current_Column := Current_Column + YYText'Length;}
[ \t] {Current_Column := Current_Column + 1;}
[\n] {Current_Line := Current_Line + 1; Current_Column := 1;}
%%
package bob is
   Invalid_Character : exception; -- only can handle ASCII 0..127
   type Token is (
      End_Of_Input,
      Error,
      NAME_token,
      FLOAT_LITERAL_token,
      INTEGER_LITERAL_token,
      STRING_token,
      ASSIGNMENT_token,
      END_LINE_token,
      RANGE_OP_token,
      LS_EQUAL_token,
      GT_EQUAL_token,
      LESS_token,
      GREATER_token,
      CLOSE_PARN_token,
      OPEN_PARN_token,
      EQUAL_token,
      AND_token,
      OR_token,
      NOT_token,
      DIVISION_token,
      MULTIPLICATION_token,
      SUBTRACTION_token,
      ADDITION_token,
      OF_token,
      RANGE_KW_token,
      IS_token,
      ARRAY_token,
      TYPE_token,
      STRING_DECLARE_token,
      FLOAT_DECLARE_token,
      INTEGER_DECLARE_token,
      CONSTANT_token,
      END_token,
      LOOP_token,
      WHILE_token,
      ELSE_token,
      THEN_token,
      IF_token,
      BEGIN_token,
      PROCEDURE_token,
      Dummy_Token);

   procedure Reset(Filename : in String);
   function Get_Token return Token;
   function Get_Token_String return String;
   function Get_Current_Line return Natural;
   function Get_Current_Column return Natural;
   procedure Close_Files;
end bob;

with bob_IO;
package body bob is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      bob_IO.Open_Input (Filename);
      bob_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      bob_IO.Close_Input;
      bob_IO.Close_Output;
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

end bob;
