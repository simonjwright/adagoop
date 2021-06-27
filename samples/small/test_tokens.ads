

with test_Model;
use test_Model;

package test_tokens is


subtype YYSTYPE is test_Model.Parseable_Ptr;

    YYLVal, YYVal : YYSType; 
    type Token is
        (End_Of_Input, Error, Write_Token, While_Token,
         Type_Token, Then_Token, Record_Token,
         Real_Token, Read_Token, Procedure_Token,
         Or_Token, Open_Token, Of_Token,
         Not_Token, Integer_Token, If_Token,
         Function_Token, End_Token, Else_Token,
         Do_Token, Close_Token, Boolean_Token,
         Begin_Token, Array_Token, And_Token );

    Syntax_Error : exception;

end Test_Tokens;
