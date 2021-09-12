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
INTEGER          ({DIGIT}*)
EXPONENT         ([eE](\+?|-){INTEGER})
DECIMAL_LITERAL  {INTEGER}\.{DIGIT}{INTEGER}{EXPONENT}?
IDENTIFIER       [a-zA-Z]((-|"_")?[a-zA-Z0-9])*       
STRING_LITERAL   \"([^"]*(\"\")*)*\" 
CHAR_LITERAL     \'[^\n]\'          

tokens
-- Reserved Words
AND       [aA][nN][dD]                    
ARRAY     [aA][rR][rR][aA][yY]  
BEGIN     [bB][eE][gG][iI][nN]           
BOOLEAN   [bB][oO][oO][lL][eE][aA][nN]   
CLOSE     [cC][lL][oO][sS][eE]           
DO        [dD][oO]                       
ELSE      [eE][lL][sS][eE]               
END       [eE][nN][dD]                   
FUNCTION  [fF][uU][nN][cC][tT][iI][oO][nN]
IF        [iI][fF]
INTEGER   [iI][nN][tT][eE][gG][eE][rR]   
NOT       [nN][oO][tT]                   
OF        [oO][fF]                       
OPEN      [oO][pP][eE][nN]               
OR        [oO][rR]                       
PROCEDURE [pP][rR][oO][cC][eE][dD][uU][rR][eE]
READ      [rR][eE][aA][dD]                    
REAL      [rR][eE][aA][lL]                    
RECORD    [rR][eE][cC][oO][rR][dD]            
THEN      [tT][hH][eE][nN]                    
TYPE      [tT][yY][pP][eE]                    
WHILE     [wW][hH][iI][lL][eE]               
WRITE     [wW][rR][iI][tT][eE]               
-- to ignore
ignore "--"[^\n]*	

grammar
-- testing
%start A
A : A PROCEDURE B | B;
B : B OPEN C | C;
C : WRITE ;
