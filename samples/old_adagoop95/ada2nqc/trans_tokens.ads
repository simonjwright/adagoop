

with trans_Model;
use trans_Model;

package trans_tokens is


subtype YYSTYPE is trans_Model.Parseable_Ptr;

    YYLVal, YYVal : YYSType; 
    type Token is
        (End_Of_Input, Error, Char_Literal_Token, String_Literal_Token,
         Based_Literal_Token, Decimal_Literal_Token, Identifier_Token,
         Tick_Token, Bang_Token, Pipe_Token,
         Gt_Token, Eq_Token, Lt_Token,
         Semicolon_Token, Colon_Token, Slash_Token,
         Dot_Token, Minus_Token, Comma_Token,
         Plus_Token, Star_Token, R_Paren_Token,
         L_Paren_Token, Concat_Token, Box_Token,
         Right_Label_Bracket_Token, Left_Label_Bracket_Token, Less_Than_Or_Equal_Token,
         Greater_Than_Or_Equal_Token, Inequality_Token, Assignment_Token,
         Exponent_Token, Double_Dot_Token, Arrow_Token,
         Xor_Token, With_Token, While_Token,
         When_Token, Use_Token, Until_Token,
         Type_Token, Then_Token, Terminate_Token,
         Task_Token, Tagged_Token, Subtype_Token,
         Separate_Token, Select_Token, Reverse_Token,
         Return_Token, Requeue_Token, Renames_Token,
         Rem_Token, Record_Token, Range_Token,
         Raise_Token, Protected_Token, Procedure_Token,
         Private_Token, Pragma_Token, Package_Token,
         Out_Token, Others_Token, Or_Token,
         Of_Token, Null_Token, Not_Token,
         New_Token, Mod_Token, Loop_Token,
         Limited_Token, Is_Token, In_Token,
         If_Token, Goto_Token, Generic_Token,
         Function_Token, For_Token, Exit_Token,
         Exception_Token, Entry_Token, End_Token,
         Elsif_Token, Else_Token, Do_Token,
         Digits_Token, Delta_Token, Delay_Token,
         Declare_Token, Constant_Token, Case_Token,
         Body_Token, Begin_Token, At_Token,
         Array_Token, And_Token, All_Token,
         Aliased_Token, Access_Token, Accept_Token,
         Abstract_Token, Abs_Token, Abort_Token );

    Syntax_Error : exception;

end Trans_Tokens;
