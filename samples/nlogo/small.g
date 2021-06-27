----------------------------------------------------------------------------
--                  written for use with aflex
----------------------------------------------------------------------------
--/*------------------------------------------------------------------------*/
--/* Lexical input for AFLEX for LALR(1) Grammar for GIL                    */
--/*                                                                        */
--/*               Martin C. Carlisle                                       */
--/*      US Air Force Academy, USAFA, CO                                   */
--/*                  June 2, 1998                                          */
--/*                                                                        */
--/* some material based on SCATCDSK Ada 95 work by Richard Conn            */
--/*                                                                        */
--/*                                                                        */
--/*------------------------------------------------------------------------*/

token_macros
DIGIT            [0-9]
INTEGER          ({DIGIT}+)
EXPONENT         ([eE](\+?|-){INTEGER})
DECIMAL_LITERAL  {INTEGER}\.{DIGIT}{INTEGER}{EXPONENT}?
IDENTIFIER       [a-zA-Z]((-|"_")?[a-zA-Z0-9])*       
STRING_LITERAL   \"([^"]*(\"\")*)*\" 
CHAR_LITERAL     \'[^\n]\'          

tokens
-- Reserved Words
AND       [aA][nN][dD]
ASK       [aA][sS][kK]
CLEARALL [cC][lL][eE][aA][rR][-][aA][lL][lL]
END       [eE][nN][dD]
FORWARD   [fF][oO][rR][wW][aA][rR][dD]
GLOBALS   [gG][lL][oO][bB][aA][lL][sS]
HEADING   [hH][eE][aA][dD][iI][nN][gG]
IF        [iI][fF]
OR        [oO][rR]
OUTPUTPRINT [oO][uU][tT][pP][uU][tT][-][pP][rR][iI][nN][tT]
LBRACK    "["
PCOLOR    [pP][cC][oO][lL][oO][rR]
PXCOR     [pP][xX][cC][oO][rR]
PYCOR     [pP][yY][cC][oO][rR]
RANDOM    [rR][aA][nN][dD][oO][mM]
RANDOMFLT [rR][aA][nN][dD][oO][mM][-][fF][lL][oO][aA][tT]
RBRACK    "]"
SET       [sS][eE][tT]
TO        [tT][oO]
TURTLES   [tT][uU][rR][tT][lL][eE][sS]
NUMBER    [-]?{INTEGER}(\.{INTEGER})?
ID        {IDENTIFIER}
DONE      "@#$#@#$#@"
PLUS      "+"
MINUS     "-"
TIMES     "*"
COMMA     ","
LPAREN    "("
RPAREN    ")"
STRING    \"[^\n]*\"
-- to ignore
ignore ";;"[^\n]*	

grammar
-- testing
%start A
A : A PROCEDURE B | B;
B : B OPEN C | C;
C : WRITE ;
