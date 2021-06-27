-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
DIGIT            [0-9]
EXTENDED_DIGIT   [0-9a-fA-F]
INTEGER          ({DIGIT}(_?{DIGIT})*)
EXPONENT         ([eE](\+?|-){INTEGER})
DECIMAL_LITERAL  {INTEGER}(\.?{INTEGER})?{EXPONENT}?
BASE             {INTEGER}
BASED_INTEGER    {EXTENDED_DIGIT}(_?{EXTENDED_DIGIT})*
BASED_LITERAL    {BASE}#{BASED_INTEGER}(\.{BASED_INTEGER})?#{EXPONENT}?
IDENTIFIER       [a-zA-Z]("_"?[a-zA-Z0-9])*       
STRING_LITERAL   \"([^"]*(\"\")*)*\" 
CHAR_LITERAL     \'[^\n]\'          

%%
[aA][bB][oO][rR][tT]                 {Current_Column := Current_Column + YYText'Length; return (ABORT_token);}
[aA][bB][sS]                         {Current_Column := Current_Column + YYText'Length; return (ABS_token);}
[aA][bB][sS][tT][rR][aA][cC][tT] {Current_Column := Current_Column + YYText'Length; return (ABSTRACT_token);}
[aA][cC][cC][eE][pP][tT]             {Current_Column := Current_Column + YYText'Length; return (ACCEPT_token);}
[aA][cC][cC][eE][sS][sS]             {Current_Column := Current_Column + YYText'Length; return (ACCESS_token);}
[aA][lL][iI][aA][sS][eE][dD]         {Current_Column := Current_Column + YYText'Length; return (ALIASED_token);}
[aA][lL][lL]                         {Current_Column := Current_Column + YYText'Length; return (ALL_token);}
[aA][nN][dD]                         {Current_Column := Current_Column + YYText'Length; return (AND_token);}
[aA][rR][rR][aA][yY]                 {Current_Column := Current_Column + YYText'Length; return (ARRAY_token);}
[aA][tT]                             {Current_Column := Current_Column + YYText'Length; return (AT_token);}
[bB][eE][gG][iI][nN]                 {Current_Column := Current_Column + YYText'Length; return (BEGIN_token);}
[bB][oO][dD][yY]                     {Current_Column := Current_Column + YYText'Length; return (BODY_token);}
[cC][aA][sS][eE]                     {Current_Column := Current_Column + YYText'Length; return (CASE_token);}
[cC][oO][nN][sS][tT][aA][nN][tT]     {Current_Column := Current_Column + YYText'Length; return (CONSTANT_token);}
[dD][eE][cC][lL][aA][rR][eE]         {Current_Column := Current_Column + YYText'Length; return (DECLARE_token);}
[dD][eE][lL][aA][yY]                 {Current_Column := Current_Column + YYText'Length; return (DELAY_token);}
[dD][eE][lL][tT][aA]                 {Current_Column := Current_Column + YYText'Length; return (DELTA_token);}
[dD][iI][gG][iI][tT][sS]            {Current_Column := Current_Column + YYText'Length; return (DIGITS_token);}
[dD][oO]                             {Current_Column := Current_Column + YYText'Length; return (DO_token);}
[eE][lL][sS][eE]                     {Current_Column := Current_Column + YYText'Length; return (ELSE_token);}
[eE][lL][sS][iI][fF]                 {Current_Column := Current_Column + YYText'Length; return (ELSIF_token);}
[eE][nN][dD]                         {Current_Column := Current_Column + YYText'Length; return (END_token);}
[eE][nN][tT][rR][yY]                 {Current_Column := Current_Column + YYText'Length; return (ENTRY_token);}
[eE][xX][cC][eE][pP][tT][iI][oO][nN]  {Current_Column := Current_Column + YYText'Length; return (EXCEPTION_token);}
[eE][xX][iI][tT]                     {Current_Column := Current_Column + YYText'Length; return (EXIT_token);}
[fF][oO][rR]                         {Current_Column := Current_Column + YYText'Length; return (FOR_token);}
[fF][uU][nN][cC][tT][iI][oO][nN]     {Current_Column := Current_Column + YYText'Length; return (FUNCTION_token);}
[gG][eE][nN][eE][rR][iI][cC]         {Current_Column := Current_Column + YYText'Length; return (GENERIC_token);}
[gG][oO][tT][oO]                     {Current_Column := Current_Column + YYText'Length; return (GOTO_token);}
[iI][fF]                             {Current_Column := Current_Column + YYText'Length; return (IF_token);}
[iI][nN]                             {Current_Column := Current_Column + YYText'Length; return (IN_token);}
[iI][nN][tT][eE][rR][fF][aA][cC][eE] {Current_Column := Current_Column + YYText'Length; return (INTERFACE_token);}
[iI][sS]                             {Current_Column := Current_Column + YYText'Length; return (IS_token);}
[lL][iI][mM][iI][tT][eE][dD]         {Current_Column := Current_Column + YYText'Length; return (LIMITED_token);}
[lL][oO][oO][pP]                     {Current_Column := Current_Column + YYText'Length; return (LOOP_token);}
[mM][oO][dD]                         {Current_Column := Current_Column + YYText'Length; return (MOD_token);}
[nN][eE][wW]                         {Current_Column := Current_Column + YYText'Length; return (NEW_token);}
[nN][oO][tT]                         {Current_Column := Current_Column + YYText'Length; return (NOT_token);}
[nN][uU][lL][lL]                     {Current_Column := Current_Column + YYText'Length; return (NULL_token);}
[oO][fF]                             {Current_Column := Current_Column + YYText'Length; return (OF_token);}
[oO][rR]                             {Current_Column := Current_Column + YYText'Length; return (OR_token);}
[oO][tT][hH][eE][rR][sS] {Current_Column := Current_Column + YYText'Length; return (OTHERS_token);}
[oO][vV][eE][rR][rR][iI][dD][iI][nN][gG]             {Current_Column := Current_Column + YYText'Length; return (OVERRIDING_token);}
[oO][uU][tT]                         {Current_Column := Current_Column + YYText'Length; return (OUT_token);}
[pP][aA][cC][kK][aA][gG][eE]         {Current_Column := Current_Column + YYText'Length; return (PACKAGE_token);}
[pP][rR][aA][gG][mM][aA]             {Current_Column := Current_Column + YYText'Length; return (PRAGMA_token);}
[pP][rR][iI][vV][aA][tT][eE]         {Current_Column := Current_Column + YYText'Length; return (PRIVATE_token);}
[pP][rR][oO][cC][eE][dD][uU][rR][eE]  {Current_Column := Current_Column + YYText'Length; return (PROCEDURE_token);}
[pP][rR][oO][tT][eE][cC][tT][eE][dD]  {Current_Column := Current_Column + YYText'Length; return (PROTECTED_token);}
[rR][aA][iI][sS][eE]                 {Current_Column := Current_Column + YYText'Length; return (RAISE_token);}
[rR][aA][nN][gG][eE]                 {Current_Column := Current_Column + YYText'Length; return (RANGE_token);}
[rR][eE][cC][oO][rR][dD]            {Current_Column := Current_Column + YYText'Length; return (RECORD_token);}
[rR][eE][mM]                        {Current_Column := Current_Column + YYText'Length; return (REM_token);}
[rR][eE][nN][aA][mM][eE][sS]         {Current_Column := Current_Column + YYText'Length; return (RENAMES_token);}
[rR][eE][qQ][uU][eE][uU][eE]        {Current_Column := Current_Column + YYText'Length; return (REQUEUE_token);}
[rR][eE][tT][uU][rR][nN]             {Current_Column := Current_Column + YYText'Length; return (RETURN_token);}
[rR][eE][vV][eE][rR][sS][eE]        {Current_Column := Current_Column + YYText'Length; return (REVERSE_token);}
[sS][eE][lL][eE][cC][tT]             {Current_Column := Current_Column + YYText'Length; return (SELECT_token);}
[sS][eE][pP][aA][rR][aA][tT][eE]     {Current_Column := Current_Column + YYText'Length; return (SEPARATE_token);}
[sS][uU][bB][tT][yY][pP][eE]         {Current_Column := Current_Column + YYText'Length; return (SUBTYPE_token);}
[sS][yY][nN][cC][hH][rR][oO][nN][iI][zZ][eE][dD] {Current_Column := Current_Column + YYText'Length; return (SYNCHRONIZED_token);}
[tT][aA][gG][gG][eE][dD]            {Current_Column := Current_Column + YYText'Length; return (TAGGED_token);}
[tT][aA][sS][kK]                     {Current_Column := Current_Column + YYText'Length; return (TASK_token);}
[tT][eE][rR][mM][iI][nN][aA][tT][eE]  {Current_Column := Current_Column + YYText'Length; return (TERMINATE_token);}
[tT][hH][eE][nN]                     {Current_Column := Current_Column + YYText'Length; return (THEN_token);}
[tT][yY][pP][eE]                    {Current_Column := Current_Column + YYText'Length; return (TYPE_token);}
[uU][nN][tT][iI][lL]                 {Current_Column := Current_Column + YYText'Length; return (UNTIL_token);}
[uU][sS][eE]                         {Current_Column := Current_Column + YYText'Length; return (USE_token);}
[wW][hH][eE][nN]                     {Current_Column := Current_Column + YYText'Length; return (WHEN_token);}
[wW][hH][iI][lL][eE]                 {Current_Column := Current_Column + YYText'Length; return (WHILE_token);}
[wW][iI][tT][hH]                     {Current_Column := Current_Column + YYText'Length; return (WITH_token);}
[xX][oO][rR]                        {Current_Column := Current_Column + YYText'Length; return (XOR_token);}
"=>"     {Current_Column := Current_Column + YYText'Length; return (ARROW_token);}
".."     {Current_Column := Current_Column + YYText'Length; return (DOUBLE_DOT_token);}
"**"     {Current_Column := Current_Column + YYText'Length; return (EXPONENT_token);}
":="     {Current_Column := Current_Column + YYText'Length; return (ASSIGNMENT_token);}
"/="     {Current_Column := Current_Column + YYText'Length; return (INEQUALITY_token);}
">="    {Current_Column := Current_Column + YYText'Length; return (GREATER_THAN_OR_EQUAL_token);}
"<="    {Current_Column := Current_Column + YYText'Length; return (LESS_THAN_OR_EQUAL_token);}
"<<"    {Current_Column := Current_Column + YYText'Length; return (LEFT_LABEL_BRACKET_token);}
">>"     {Current_Column := Current_Column + YYText'Length; return (RIGHT_LABEL_BRACKET_token);}
"<>"     {Current_Column := Current_Column + YYText'Length; return (BOX_token);}
"&"     {Current_Column := Current_Column + YYText'Length; return (BIT_AND_token);}
"("      {Current_Column := Current_Column + YYText'Length; return (L_PAREN_token);}
")"      {Current_Column := Current_Column + YYText'Length; return (R_PAREN_token);}
"*"     {Current_Column := Current_Column + YYText'Length; return (STAR_token);}
"+"      {Current_Column := Current_Column + YYText'Length; return (PLUS_token);}
","      {Current_Column := Current_Column + YYText'Length; return (COMMA_token);}
"-"      {Current_Column := Current_Column + YYText'Length; return (MINUS_token);}
"."      {Current_Column := Current_Column + YYText'Length; return (DOT_token);}
"/"      {Current_Column := Current_Column + YYText'Length; return (SLASH_token);}
":"      {Current_Column := Current_Column + YYText'Length; return (COLON_token);}
";"      {Current_Column := Current_Column + YYText'Length; return (SEMICOLON_token);}
"<"      {Current_Column := Current_Column + YYText'Length; return (LT_token);}
"="      {Current_Column := Current_Column + YYText'Length; return (EQ_token);}
">"      {Current_Column := Current_Column + YYText'Length; return (GT_token);}
"|"      {Current_Column := Current_Column + YYText'Length; return (PIPE_token);}
"!"      {Current_Column := Current_Column + YYText'Length; return (BANG_token);}
"'"      {Current_Column := Current_Column + YYText'Length; return (TICK_token);}
{IDENTIFIER}          {Current_Column := Current_Column + YYText'Length; return (IDENTIFIER_token);}
{DECIMAL_LITERAL}      {Current_Column := Current_Column + YYText'Length; return (DECIMAL_LITERAL_token);}
{BASED_LITERAL}       {Current_Column := Current_Column + YYText'Length; return (BASED_LITERAL_token);}
{STRING_LITERAL}       {Current_Column := Current_Column + YYText'Length; return (STRING_LITERAL_token);}
{CHAR_LITERAL}        {Current_Column := Current_Column + YYText'Length; return (CHAR_LITERAL_token);}
"--".*         {Current_Column := Current_Column + YYText'Length;}
[ \t] {Current_Column := Current_Column + 1;}
[\n] {Current_Line := Current_Line + 1; Current_Column := 1;}
%%
package ada05 is
   Invalid_Character : exception; -- only can handle ASCII 0..127
   type Token is (
      End_Of_Input,
      Error,
      CHAR_LITERAL_token,
      STRING_LITERAL_token,
      BASED_LITERAL_token,
      DECIMAL_LITERAL_token,
      IDENTIFIER_token,
      TICK_token,
      BANG_token,
      PIPE_token,
      GT_token,
      EQ_token,
      LT_token,
      SEMICOLON_token,
      COLON_token,
      SLASH_token,
      DOT_token,
      MINUS_token,
      COMMA_token,
      PLUS_token,
      STAR_token,
      R_PAREN_token,
      L_PAREN_token,
      BIT_AND_token,
      BOX_token,
      RIGHT_LABEL_BRACKET_token,
      LEFT_LABEL_BRACKET_token,
      LESS_THAN_OR_EQUAL_token,
      GREATER_THAN_OR_EQUAL_token,
      INEQUALITY_token,
      ASSIGNMENT_token,
      EXPONENT_token,
      DOUBLE_DOT_token,
      ARROW_token,
      XOR_token,
      WITH_token,
      WHILE_token,
      WHEN_token,
      USE_token,
      UNTIL_token,
      TYPE_token,
      THEN_token,
      TERMINATE_token,
      TASK_token,
      TAGGED_token,
      SYNCHRONIZED_token,
      SUBTYPE_token,
      SEPARATE_token,
      SELECT_token,
      REVERSE_token,
      RETURN_token,
      REQUEUE_token,
      RENAMES_token,
      REM_token,
      RECORD_token,
      RANGE_token,
      RAISE_token,
      PROTECTED_token,
      PROCEDURE_token,
      PRIVATE_token,
      PRAGMA_token,
      PACKAGE_token,
      OUT_token,
      OVERRIDING_token,
      OTHERS_token,
      OR_token,
      OF_token,
      NULL_token,
      NOT_token,
      NEW_token,
      MOD_token,
      LOOP_token,
      LIMITED_token,
      IS_token,
      INTERFACE_token,
      IN_token,
      IF_token,
      GOTO_token,
      GENERIC_token,
      FUNCTION_token,
      FOR_token,
      EXIT_token,
      EXCEPTION_token,
      ENTRY_token,
      END_token,
      ELSIF_token,
      ELSE_token,
      DO_token,
      DIGITS_token,
      DELTA_token,
      DELAY_token,
      DECLARE_token,
      CONSTANT_token,
      CASE_token,
      BODY_token,
      BEGIN_token,
      AT_token,
      ARRAY_token,
      AND_token,
      ALL_token,
      ALIASED_token,
      ACCESS_token,
      ACCEPT_token,
      ABSTRACT_token,
      ABS_token,
      ABORT_token,
      Dummy_Token);

   procedure Reset(Filename : in String);
   function Get_Token return Token;
   function Get_Token_String return String;
   function Get_Current_Line return Natural;
   function Get_Current_Column return Natural;
   procedure Close_Files;
end ada05;

with ada05_IO;
package body ada05 is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      ada05_IO.Open_Input (Filename);
      ada05_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      ada05_IO.Close_Input;
      ada05_IO.Close_Output;
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

end ada05;
