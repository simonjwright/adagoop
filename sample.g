---------------------------------------------------
--Pex 1: lexifyness.
--Author: C1C Fritts
--shell code to modifiy : provided by Dr. C
--Documentation: Roycroft pointed out that the provided Decimal_Literal wouldn't have only a single . or e.
----------------------------------------------------

token_macros
DIGIT            [0-9]
INTEGER         ({DIGIT}*)
EXPONENT         ([eE](\+?|-){DIGIT}+)
DECIMAL_LITERAL  ({INTEGER}\.{DIGIT}{INTEGER}{EXPONENT}?)|({INTEGER}\.?{DIGIT}{INTEGER}{EXPONENT})
CHARACTER     [a-zA-Z]
SYMBOL            [`~!@#$%&*()_-\;:',<.>/?]

tokens
-- Reserved Words

PROCEDURE [pP][rR][oO][cC][eE][dD][uU][rR][eE]
BEGIN [bB][eE][gG][iI][nN]
IF   [iI][fF]
THEN   [tT][hH][eE][nN]
ELSE    [eE][lL][sS][eE]
WHILE   [wW][hH][iI][lL][eE]
LOOP    [lL][oO][oO][pP]
END   [eE][nN][dD]
CONSTANT   [cC][oO][nN][sS][tT][aA][nN][tT]
INTEGER_DECLARE   [iI][nN][tT][eE][gG][eE][rR]
FLOAT_DECLARE     [fF][lL][oO][aA][tT]
STRING_DECLARE [sS][tT][rR][iI][nN][gG]
TYPE [tT][yY][pP][eE]
ARRAY [aA][rR][Rr][aA][Yy]
IS  [iI][sS]
RANGE_KW [rR][aA][nN][gG][eE]
OF [oO][fF]




--Operators
ADDITION   [+]
SUBTRACTION   [-]
MULTIPLICATION   [*]
DIVISION   [/]
NOT   [nN][oO][tT]
OR   [oO][rR]
AND   [aA][nN][dD]
EQUAL   [=]
OPEN_PARN  [(]
CLOSE_PARN  [)]
GREATER  [>]
LESS  [<]
GT_EQUAL  [>][=]
LS_EQUAL  [<][=]
RANGE_OP [.][.]
END_LINE [;]
ASSIGNMENT :=


--Other
STRING ["]([^"]|(["]["]))*["]
INTEGER_LITERAL {INTEGER}
FLOAT_LITERAL {DECIMAL_LITERAL}
NAME {CHARACTER}(_?({CHARACTER}|{DIGIT}))*

--coments
ignore "--"[^\n]*



grammar
-- This grammar does nothing
%start A
A : RANGE_OP;