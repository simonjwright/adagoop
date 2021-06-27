-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body ada95_DFS is
   procedure Before_NUMERIC_LIT_nonterminal1(
      I : access DFS;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal1'Class) is
   begin
      null;
   end Before_NUMERIC_LIT_nonterminal1;
   procedure After_NUMERIC_LIT_nonterminal1(
      I : access DFS;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal1'Class) is
   begin
      null;
   end After_NUMERIC_LIT_nonterminal1;
   procedure Visit_NUMERIC_LIT_nonterminal1(
         I : access DFS;
         N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_NUMERIC_LIT_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.DECIMAL_LITERAL_part);
      I_Classwide.After_NUMERIC_LIT_nonterminal1(N);
   end Visit_NUMERIC_LIT_nonterminal1;
   procedure Before_NUMERIC_LIT_nonterminal2(
      I : access DFS;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal2'Class) is
   begin
      null;
   end Before_NUMERIC_LIT_nonterminal2;
   procedure After_NUMERIC_LIT_nonterminal2(
      I : access DFS;
      N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal2'Class) is
   begin
      null;
   end After_NUMERIC_LIT_nonterminal2;
   procedure Visit_NUMERIC_LIT_nonterminal2(
         I : access DFS;
         N : access NUMERIC_LIT_Model.NUMERIC_LIT_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_NUMERIC_LIT_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.BASED_LITERAL_part);
      I_Classwide.After_NUMERIC_LIT_nonterminal2(N);
   end Visit_NUMERIC_LIT_nonterminal2;
   procedure Before_CHAR_LIT_nonterminal(
      I : access DFS;
      N : access CHAR_LIT_Model.CHAR_LIT_nonterminal'Class) is
   begin
      null;
   end Before_CHAR_LIT_nonterminal;
   procedure After_CHAR_LIT_nonterminal(
      I : access DFS;
      N : access CHAR_LIT_Model.CHAR_LIT_nonterminal'Class) is
   begin
      null;
   end After_CHAR_LIT_nonterminal;
   procedure Visit_CHAR_LIT_nonterminal(
         I : access DFS;
         N : access CHAR_LIT_Model.CHAR_LIT_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_CHAR_LIT_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.CHAR_LITERAL_part);
      I_Classwide.After_CHAR_LIT_nonterminal(N);
   end Visit_CHAR_LIT_nonterminal;
   procedure Before_GT_GT_nonterminal(
      I : access DFS;
      N : access GT_GT_Model.GT_GT_nonterminal'Class) is
   begin
      null;
   end Before_GT_GT_nonterminal;
   procedure After_GT_GT_nonterminal(
      I : access DFS;
      N : access GT_GT_Model.GT_GT_nonterminal'Class) is
   begin
      null;
   end After_GT_GT_nonterminal;
   procedure Visit_GT_GT_nonterminal(
         I : access DFS;
         N : access GT_GT_Model.GT_GT_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_GT_GT_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.RIGHT_LABEL_BRACKET_part);
      I_Classwide.After_GT_GT_nonterminal(N);
   end Visit_GT_GT_nonterminal;
   procedure Before_LT_LT_nonterminal(
      I : access DFS;
      N : access LT_LT_Model.LT_LT_nonterminal'Class) is
   begin
      null;
   end Before_LT_LT_nonterminal;
   procedure After_LT_LT_nonterminal(
      I : access DFS;
      N : access LT_LT_Model.LT_LT_nonterminal'Class) is
   begin
      null;
   end After_LT_LT_nonterminal;
   procedure Visit_LT_LT_nonterminal(
         I : access DFS;
         N : access LT_LT_Model.LT_LT_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_LT_LT_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.LEFT_LABEL_BRACKET_part);
      I_Classwide.After_LT_LT_nonterminal(N);
   end Visit_LT_LT_nonterminal;
   procedure Before_GE_nonterminal(
      I : access DFS;
      N : access GE_Model.GE_nonterminal'Class) is
   begin
      null;
   end Before_GE_nonterminal;
   procedure After_GE_nonterminal(
      I : access DFS;
      N : access GE_Model.GE_nonterminal'Class) is
   begin
      null;
   end After_GE_nonterminal;
   procedure Visit_GE_nonterminal(
         I : access DFS;
         N : access GE_Model.GE_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_GE_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.GREATER_THAN_OR_EQUAL_part);
      I_Classwide.After_GE_nonterminal(N);
   end Visit_GE_nonterminal;
   procedure Before_LT_EQ_nonterminal(
      I : access DFS;
      N : access LT_EQ_Model.LT_EQ_nonterminal'Class) is
   begin
      null;
   end Before_LT_EQ_nonterminal;
   procedure After_LT_EQ_nonterminal(
      I : access DFS;
      N : access LT_EQ_Model.LT_EQ_nonterminal'Class) is
   begin
      null;
   end After_LT_EQ_nonterminal;
   procedure Visit_LT_EQ_nonterminal(
         I : access DFS;
         N : access LT_EQ_Model.LT_EQ_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_LT_EQ_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.LESS_THAN_OR_EQUAL_part);
      I_Classwide.After_LT_EQ_nonterminal(N);
   end Visit_LT_EQ_nonterminal;
   procedure Before_NE_nonterminal(
      I : access DFS;
      N : access NE_Model.NE_nonterminal'Class) is
   begin
      null;
   end Before_NE_nonterminal;
   procedure After_NE_nonterminal(
      I : access DFS;
      N : access NE_Model.NE_nonterminal'Class) is
   begin
      null;
   end After_NE_nonterminal;
   procedure Visit_NE_nonterminal(
         I : access DFS;
         N : access NE_Model.NE_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_NE_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.INEQUALITY_part);
      I_Classwide.After_NE_nonterminal(N);
   end Visit_NE_nonterminal;
   procedure Before_CHAR_STRING_nonterminal(
      I : access DFS;
      N : access CHAR_STRING_Model.CHAR_STRING_nonterminal'Class) is
   begin
      null;
   end Before_CHAR_STRING_nonterminal;
   procedure After_CHAR_STRING_nonterminal(
      I : access DFS;
      N : access CHAR_STRING_Model.CHAR_STRING_nonterminal'Class) is
   begin
      null;
   end After_CHAR_STRING_nonterminal;
   procedure Visit_CHAR_STRING_nonterminal(
         I : access DFS;
         N : access CHAR_STRING_Model.CHAR_STRING_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_CHAR_STRING_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.STRING_LITERAL_part);
      I_Classwide.After_CHAR_STRING_nonterminal(N);
   end Visit_CHAR_STRING_nonterminal;
   procedure Before_pragma_sym_nonterminal1(
      I : access DFS;
      N : access pragma_sym_Model.pragma_sym_nonterminal1'Class) is
   begin
      null;
   end Before_pragma_sym_nonterminal1;
   procedure After_pragma_sym_nonterminal1(
      I : access DFS;
      N : access pragma_sym_Model.pragma_sym_nonterminal1'Class) is
   begin
      null;
   end After_pragma_sym_nonterminal1;
   procedure Visit_pragma_sym_nonterminal1(
         I : access DFS;
         N : access pragma_sym_Model.pragma_sym_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_sym_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.PRAGMA_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_pragma_sym_nonterminal1(N);
   end Visit_pragma_sym_nonterminal1;
   procedure Before_pragma_sym_nonterminal2(
      I : access DFS;
      N : access pragma_sym_Model.pragma_sym_nonterminal2'Class) is
   begin
      null;
   end Before_pragma_sym_nonterminal2;
   procedure After_pragma_sym_nonterminal2(
      I : access DFS;
      N : access pragma_sym_Model.pragma_sym_nonterminal2'Class) is
   begin
      null;
   end After_pragma_sym_nonterminal2;
   procedure Visit_pragma_sym_nonterminal2(
         I : access DFS;
         N : access pragma_sym_Model.pragma_sym_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_sym_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PRAGMA_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.pragma_arg_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_pragma_sym_nonterminal2(N);
   end Visit_pragma_sym_nonterminal2;
   procedure Before_pragma_arg_s_nonterminal1(
      I : access DFS;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal1'Class) is
   begin
      null;
   end Before_pragma_arg_s_nonterminal1;
   procedure After_pragma_arg_s_nonterminal1(
      I : access DFS;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal1'Class) is
   begin
      null;
   end After_pragma_arg_s_nonterminal1;
   procedure Visit_pragma_arg_s_nonterminal1(
         I : access DFS;
         N : access pragma_arg_s_Model.pragma_arg_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_arg_s_nonterminal1(N);
      N.pragma_arg_part.Acceptor(I);
      I_Classwide.After_pragma_arg_s_nonterminal1(N);
   end Visit_pragma_arg_s_nonterminal1;
   procedure Before_pragma_arg_s_nonterminal2(
      I : access DFS;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal2'Class) is
   begin
      null;
   end Before_pragma_arg_s_nonterminal2;
   procedure After_pragma_arg_s_nonterminal2(
      I : access DFS;
      N : access pragma_arg_s_Model.pragma_arg_s_nonterminal2'Class) is
   begin
      null;
   end After_pragma_arg_s_nonterminal2;
   procedure Visit_pragma_arg_s_nonterminal2(
         I : access DFS;
         N : access pragma_arg_s_Model.pragma_arg_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_arg_s_nonterminal2(N);
      N.pragma_arg_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.pragma_arg_part.Acceptor(I);
      I_Classwide.After_pragma_arg_s_nonterminal2(N);
   end Visit_pragma_arg_s_nonterminal2;
   procedure Before_pragma_arg_nonterminal1(
      I : access DFS;
      N : access pragma_arg_Model.pragma_arg_nonterminal1'Class) is
   begin
      null;
   end Before_pragma_arg_nonterminal1;
   procedure After_pragma_arg_nonterminal1(
      I : access DFS;
      N : access pragma_arg_Model.pragma_arg_nonterminal1'Class) is
   begin
      null;
   end After_pragma_arg_nonterminal1;
   procedure Visit_pragma_arg_nonterminal1(
         I : access DFS;
         N : access pragma_arg_Model.pragma_arg_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_arg_nonterminal1(N);
      N.expression_part.Acceptor(I);
      I_Classwide.After_pragma_arg_nonterminal1(N);
   end Visit_pragma_arg_nonterminal1;
   procedure Before_pragma_arg_nonterminal2(
      I : access DFS;
      N : access pragma_arg_Model.pragma_arg_nonterminal2'Class) is
   begin
      null;
   end Before_pragma_arg_nonterminal2;
   procedure After_pragma_arg_nonterminal2(
      I : access DFS;
      N : access pragma_arg_Model.pragma_arg_nonterminal2'Class) is
   begin
      null;
   end After_pragma_arg_nonterminal2;
   procedure Visit_pragma_arg_nonterminal2(
         I : access DFS;
         N : access pragma_arg_Model.pragma_arg_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_arg_nonterminal2(N);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ARROW_part);
      N.expression_part.Acceptor(I);
      I_Classwide.After_pragma_arg_nonterminal2(N);
   end Visit_pragma_arg_nonterminal2;
   procedure Before_pragma_s_nonterminal1(
      I : access DFS;
      N : access pragma_s_Model.pragma_s_nonterminal1'Class) is
   begin
      null;
   end Before_pragma_s_nonterminal1;
   procedure After_pragma_s_nonterminal1(
      I : access DFS;
      N : access pragma_s_Model.pragma_s_nonterminal1'Class) is
   begin
      null;
   end After_pragma_s_nonterminal1;
   procedure Visit_pragma_s_nonterminal1(
         I : access DFS;
         N : access pragma_s_Model.pragma_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_s_nonterminal1(N);
      I_Classwide.After_pragma_s_nonterminal1(N);
   end Visit_pragma_s_nonterminal1;
   procedure Before_pragma_s_nonterminal2(
      I : access DFS;
      N : access pragma_s_Model.pragma_s_nonterminal2'Class) is
   begin
      null;
   end Before_pragma_s_nonterminal2;
   procedure After_pragma_s_nonterminal2(
      I : access DFS;
      N : access pragma_s_Model.pragma_s_nonterminal2'Class) is
   begin
      null;
   end After_pragma_s_nonterminal2;
   procedure Visit_pragma_s_nonterminal2(
         I : access DFS;
         N : access pragma_s_Model.pragma_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pragma_s_nonterminal2(N);
      N.pragma_s_part.Acceptor(I);
      N.pragma_sym_part.Acceptor(I);
      I_Classwide.After_pragma_s_nonterminal2(N);
   end Visit_pragma_s_nonterminal2;
   procedure Before_decl_nonterminal1(
      I : access DFS;
      N : access decl_Model.decl_nonterminal1'Class) is
   begin
      null;
   end Before_decl_nonterminal1;
   procedure After_decl_nonterminal1(
      I : access DFS;
      N : access decl_Model.decl_nonterminal1'Class) is
   begin
      null;
   end After_decl_nonterminal1;
   procedure Visit_decl_nonterminal1(
         I : access DFS;
         N : access decl_Model.decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal1(N);
      N.object_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal1(N);
   end Visit_decl_nonterminal1;
   procedure Before_decl_nonterminal2(
      I : access DFS;
      N : access decl_Model.decl_nonterminal2'Class) is
   begin
      null;
   end Before_decl_nonterminal2;
   procedure After_decl_nonterminal2(
      I : access DFS;
      N : access decl_Model.decl_nonterminal2'Class) is
   begin
      null;
   end After_decl_nonterminal2;
   procedure Visit_decl_nonterminal2(
         I : access DFS;
         N : access decl_Model.decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal2(N);
      N.number_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal2(N);
   end Visit_decl_nonterminal2;
   procedure Before_decl_nonterminal3(
      I : access DFS;
      N : access decl_Model.decl_nonterminal3'Class) is
   begin
      null;
   end Before_decl_nonterminal3;
   procedure After_decl_nonterminal3(
      I : access DFS;
      N : access decl_Model.decl_nonterminal3'Class) is
   begin
      null;
   end After_decl_nonterminal3;
   procedure Visit_decl_nonterminal3(
         I : access DFS;
         N : access decl_Model.decl_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal3(N);
      N.type_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal3(N);
   end Visit_decl_nonterminal3;
   procedure Before_decl_nonterminal4(
      I : access DFS;
      N : access decl_Model.decl_nonterminal4'Class) is
   begin
      null;
   end Before_decl_nonterminal4;
   procedure After_decl_nonterminal4(
      I : access DFS;
      N : access decl_Model.decl_nonterminal4'Class) is
   begin
      null;
   end After_decl_nonterminal4;
   procedure Visit_decl_nonterminal4(
         I : access DFS;
         N : access decl_Model.decl_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal4(N);
      N.subtype_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal4(N);
   end Visit_decl_nonterminal4;
   procedure Before_decl_nonterminal5(
      I : access DFS;
      N : access decl_Model.decl_nonterminal5'Class) is
   begin
      null;
   end Before_decl_nonterminal5;
   procedure After_decl_nonterminal5(
      I : access DFS;
      N : access decl_Model.decl_nonterminal5'Class) is
   begin
      null;
   end After_decl_nonterminal5;
   procedure Visit_decl_nonterminal5(
         I : access DFS;
         N : access decl_Model.decl_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal5(N);
      N.subprog_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal5(N);
   end Visit_decl_nonterminal5;
   procedure Before_decl_nonterminal6(
      I : access DFS;
      N : access decl_Model.decl_nonterminal6'Class) is
   begin
      null;
   end Before_decl_nonterminal6;
   procedure After_decl_nonterminal6(
      I : access DFS;
      N : access decl_Model.decl_nonterminal6'Class) is
   begin
      null;
   end After_decl_nonterminal6;
   procedure Visit_decl_nonterminal6(
         I : access DFS;
         N : access decl_Model.decl_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal6(N);
      N.pkg_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal6(N);
   end Visit_decl_nonterminal6;
   procedure Before_decl_nonterminal7(
      I : access DFS;
      N : access decl_Model.decl_nonterminal7'Class) is
   begin
      null;
   end Before_decl_nonterminal7;
   procedure After_decl_nonterminal7(
      I : access DFS;
      N : access decl_Model.decl_nonterminal7'Class) is
   begin
      null;
   end After_decl_nonterminal7;
   procedure Visit_decl_nonterminal7(
         I : access DFS;
         N : access decl_Model.decl_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal7(N);
      N.task_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal7(N);
   end Visit_decl_nonterminal7;
   procedure Before_decl_nonterminal8(
      I : access DFS;
      N : access decl_Model.decl_nonterminal8'Class) is
   begin
      null;
   end Before_decl_nonterminal8;
   procedure After_decl_nonterminal8(
      I : access DFS;
      N : access decl_Model.decl_nonterminal8'Class) is
   begin
      null;
   end After_decl_nonterminal8;
   procedure Visit_decl_nonterminal8(
         I : access DFS;
         N : access decl_Model.decl_nonterminal8'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal8(N);
      N.prot_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal8(N);
   end Visit_decl_nonterminal8;
   procedure Before_decl_nonterminal9(
      I : access DFS;
      N : access decl_Model.decl_nonterminal9'Class) is
   begin
      null;
   end Before_decl_nonterminal9;
   procedure After_decl_nonterminal9(
      I : access DFS;
      N : access decl_Model.decl_nonterminal9'Class) is
   begin
      null;
   end After_decl_nonterminal9;
   procedure Visit_decl_nonterminal9(
         I : access DFS;
         N : access decl_Model.decl_nonterminal9'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal9(N);
      N.exception_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal9(N);
   end Visit_decl_nonterminal9;
   procedure Before_decl_nonterminal10(
      I : access DFS;
      N : access decl_Model.decl_nonterminal10'Class) is
   begin
      null;
   end Before_decl_nonterminal10;
   procedure After_decl_nonterminal10(
      I : access DFS;
      N : access decl_Model.decl_nonterminal10'Class) is
   begin
      null;
   end After_decl_nonterminal10;
   procedure Visit_decl_nonterminal10(
         I : access DFS;
         N : access decl_Model.decl_nonterminal10'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal10(N);
      N.rename_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal10(N);
   end Visit_decl_nonterminal10;
   procedure Before_decl_nonterminal11(
      I : access DFS;
      N : access decl_Model.decl_nonterminal11'Class) is
   begin
      null;
   end Before_decl_nonterminal11;
   procedure After_decl_nonterminal11(
      I : access DFS;
      N : access decl_Model.decl_nonterminal11'Class) is
   begin
      null;
   end After_decl_nonterminal11;
   procedure Visit_decl_nonterminal11(
         I : access DFS;
         N : access decl_Model.decl_nonterminal11'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal11(N);
      N.generic_decl_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal11(N);
   end Visit_decl_nonterminal11;
   procedure Before_decl_nonterminal12(
      I : access DFS;
      N : access decl_Model.decl_nonterminal12'Class) is
   begin
      null;
   end Before_decl_nonterminal12;
   procedure After_decl_nonterminal12(
      I : access DFS;
      N : access decl_Model.decl_nonterminal12'Class) is
   begin
      null;
   end After_decl_nonterminal12;
   procedure Visit_decl_nonterminal12(
         I : access DFS;
         N : access decl_Model.decl_nonterminal12'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_nonterminal12(N);
      N.body_stub_part.Acceptor(I);
      I_Classwide.After_decl_nonterminal12(N);
   end Visit_decl_nonterminal12;
   procedure Before_object_decl_nonterminal(
      I : access DFS;
      N : access object_decl_Model.object_decl_nonterminal'Class) is
   begin
      null;
   end Before_object_decl_nonterminal;
   procedure After_object_decl_nonterminal(
      I : access DFS;
      N : access object_decl_Model.object_decl_nonterminal'Class) is
   begin
      null;
   end After_object_decl_nonterminal;
   procedure Visit_object_decl_nonterminal(
         I : access DFS;
         N : access object_decl_Model.object_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_object_decl_nonterminal(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      N.object_qualifier_opt_part.Acceptor(I);
      N.object_subtype_def_part.Acceptor(I);
      N.init_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_object_decl_nonterminal(N);
   end Visit_object_decl_nonterminal;
   procedure Before_def_id_s_nonterminal1(
      I : access DFS;
      N : access def_id_s_Model.def_id_s_nonterminal1'Class) is
   begin
      null;
   end Before_def_id_s_nonterminal1;
   procedure After_def_id_s_nonterminal1(
      I : access DFS;
      N : access def_id_s_Model.def_id_s_nonterminal1'Class) is
   begin
      null;
   end After_def_id_s_nonterminal1;
   procedure Visit_def_id_s_nonterminal1(
         I : access DFS;
         N : access def_id_s_Model.def_id_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_def_id_s_nonterminal1(N);
      N.def_id_part.Acceptor(I);
      I_Classwide.After_def_id_s_nonterminal1(N);
   end Visit_def_id_s_nonterminal1;
   procedure Before_def_id_s_nonterminal2(
      I : access DFS;
      N : access def_id_s_Model.def_id_s_nonterminal2'Class) is
   begin
      null;
   end Before_def_id_s_nonterminal2;
   procedure After_def_id_s_nonterminal2(
      I : access DFS;
      N : access def_id_s_Model.def_id_s_nonterminal2'Class) is
   begin
      null;
   end After_def_id_s_nonterminal2;
   procedure Visit_def_id_s_nonterminal2(
         I : access DFS;
         N : access def_id_s_Model.def_id_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_def_id_s_nonterminal2(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.def_id_part.Acceptor(I);
      I_Classwide.After_def_id_s_nonterminal2(N);
   end Visit_def_id_s_nonterminal2;
   procedure Before_def_id_nonterminal(
      I : access DFS;
      N : access def_id_Model.def_id_nonterminal'Class) is
   begin
      null;
   end Before_def_id_nonterminal;
   procedure After_def_id_nonterminal(
      I : access DFS;
      N : access def_id_Model.def_id_nonterminal'Class) is
   begin
      null;
   end After_def_id_nonterminal;
   procedure Visit_def_id_nonterminal(
         I : access DFS;
         N : access def_id_Model.def_id_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_def_id_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.After_def_id_nonterminal(N);
   end Visit_def_id_nonterminal;
   procedure Before_object_qualifier_opt_nonterminal1(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal1'Class) is
   begin
      null;
   end Before_object_qualifier_opt_nonterminal1;
   procedure After_object_qualifier_opt_nonterminal1(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal1'Class) is
   begin
      null;
   end After_object_qualifier_opt_nonterminal1;
   procedure Visit_object_qualifier_opt_nonterminal1(
         I : access DFS;
         N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_object_qualifier_opt_nonterminal1(N);
      I_Classwide.After_object_qualifier_opt_nonterminal1(N);
   end Visit_object_qualifier_opt_nonterminal1;
   procedure Before_object_qualifier_opt_nonterminal2(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal2'Class) is
   begin
      null;
   end Before_object_qualifier_opt_nonterminal2;
   procedure After_object_qualifier_opt_nonterminal2(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal2'Class) is
   begin
      null;
   end After_object_qualifier_opt_nonterminal2;
   procedure Visit_object_qualifier_opt_nonterminal2(
         I : access DFS;
         N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_object_qualifier_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.aliased_part);
      I_Classwide.After_object_qualifier_opt_nonterminal2(N);
   end Visit_object_qualifier_opt_nonterminal2;
   procedure Before_object_qualifier_opt_nonterminal3(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal3'Class) is
   begin
      null;
   end Before_object_qualifier_opt_nonterminal3;
   procedure After_object_qualifier_opt_nonterminal3(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal3'Class) is
   begin
      null;
   end After_object_qualifier_opt_nonterminal3;
   procedure Visit_object_qualifier_opt_nonterminal3(
         I : access DFS;
         N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_object_qualifier_opt_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.CONSTANT_part);
      I_Classwide.After_object_qualifier_opt_nonterminal3(N);
   end Visit_object_qualifier_opt_nonterminal3;
   procedure Before_object_qualifier_opt_nonterminal4(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal4'Class) is
   begin
      null;
   end Before_object_qualifier_opt_nonterminal4;
   procedure After_object_qualifier_opt_nonterminal4(
      I : access DFS;
      N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal4'Class) is
   begin
      null;
   end After_object_qualifier_opt_nonterminal4;
   procedure Visit_object_qualifier_opt_nonterminal4(
         I : access DFS;
         N : access object_qualifier_opt_Model.object_qualifier_opt_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_object_qualifier_opt_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.aliased_part);
      I_Classwide.Visit_Parseable_Token(N.CONSTANT_part);
      I_Classwide.After_object_qualifier_opt_nonterminal4(N);
   end Visit_object_qualifier_opt_nonterminal4;
   procedure Before_object_subtype_def_nonterminal1(
      I : access DFS;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal1'Class) is
   begin
      null;
   end Before_object_subtype_def_nonterminal1;
   procedure After_object_subtype_def_nonterminal1(
      I : access DFS;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal1'Class) is
   begin
      null;
   end After_object_subtype_def_nonterminal1;
   procedure Visit_object_subtype_def_nonterminal1(
         I : access DFS;
         N : access object_subtype_def_Model.object_subtype_def_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_object_subtype_def_nonterminal1(N);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.After_object_subtype_def_nonterminal1(N);
   end Visit_object_subtype_def_nonterminal1;
   procedure Before_object_subtype_def_nonterminal2(
      I : access DFS;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal2'Class) is
   begin
      null;
   end Before_object_subtype_def_nonterminal2;
   procedure After_object_subtype_def_nonterminal2(
      I : access DFS;
      N : access object_subtype_def_Model.object_subtype_def_nonterminal2'Class) is
   begin
      null;
   end After_object_subtype_def_nonterminal2;
   procedure Visit_object_subtype_def_nonterminal2(
         I : access DFS;
         N : access object_subtype_def_Model.object_subtype_def_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_object_subtype_def_nonterminal2(N);
      N.array_type_part.Acceptor(I);
      I_Classwide.After_object_subtype_def_nonterminal2(N);
   end Visit_object_subtype_def_nonterminal2;
   procedure Before_init_opt_nonterminal1(
      I : access DFS;
      N : access init_opt_Model.init_opt_nonterminal1'Class) is
   begin
      null;
   end Before_init_opt_nonterminal1;
   procedure After_init_opt_nonterminal1(
      I : access DFS;
      N : access init_opt_Model.init_opt_nonterminal1'Class) is
   begin
      null;
   end After_init_opt_nonterminal1;
   procedure Visit_init_opt_nonterminal1(
         I : access DFS;
         N : access init_opt_Model.init_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_init_opt_nonterminal1(N);
      I_Classwide.After_init_opt_nonterminal1(N);
   end Visit_init_opt_nonterminal1;
   procedure Before_init_opt_nonterminal2(
      I : access DFS;
      N : access init_opt_Model.init_opt_nonterminal2'Class) is
   begin
      null;
   end Before_init_opt_nonterminal2;
   procedure After_init_opt_nonterminal2(
      I : access DFS;
      N : access init_opt_Model.init_opt_nonterminal2'Class) is
   begin
      null;
   end After_init_opt_nonterminal2;
   procedure Visit_init_opt_nonterminal2(
         I : access DFS;
         N : access init_opt_Model.init_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_init_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.ASSIGNMENT_part);
      N.expression_part.Acceptor(I);
      I_Classwide.After_init_opt_nonterminal2(N);
   end Visit_init_opt_nonterminal2;
   procedure Before_number_decl_nonterminal(
      I : access DFS;
      N : access number_decl_Model.number_decl_nonterminal'Class) is
   begin
      null;
   end Before_number_decl_nonterminal;
   procedure After_number_decl_nonterminal(
      I : access DFS;
      N : access number_decl_Model.number_decl_nonterminal'Class) is
   begin
      null;
   end After_number_decl_nonterminal;
   procedure Visit_number_decl_nonterminal(
         I : access DFS;
         N : access number_decl_Model.number_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_number_decl_nonterminal(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      I_Classwide.Visit_Parseable_Token(N.CONSTANT_part);
      I_Classwide.Visit_Parseable_Token(N.ASSIGNMENT_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_number_decl_nonterminal(N);
   end Visit_number_decl_nonterminal;
   procedure Before_type_decl_nonterminal(
      I : access DFS;
      N : access type_decl_Model.type_decl_nonterminal'Class) is
   begin
      null;
   end Before_type_decl_nonterminal;
   procedure After_type_decl_nonterminal(
      I : access DFS;
      N : access type_decl_Model.type_decl_nonterminal'Class) is
   begin
      null;
   end After_type_decl_nonterminal;
   procedure Visit_type_decl_nonterminal(
         I : access DFS;
         N : access type_decl_Model.type_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_decl_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.TYPE_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      N.discrim_part_opt_part.Acceptor(I);
      N.type_completion_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_type_decl_nonterminal(N);
   end Visit_type_decl_nonterminal;
   procedure Before_discrim_part_opt_nonterminal1(
      I : access DFS;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal1'Class) is
   begin
      null;
   end Before_discrim_part_opt_nonterminal1;
   procedure After_discrim_part_opt_nonterminal1(
      I : access DFS;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal1'Class) is
   begin
      null;
   end After_discrim_part_opt_nonterminal1;
   procedure Visit_discrim_part_opt_nonterminal1(
         I : access DFS;
         N : access discrim_part_opt_Model.discrim_part_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrim_part_opt_nonterminal1(N);
      I_Classwide.After_discrim_part_opt_nonterminal1(N);
   end Visit_discrim_part_opt_nonterminal1;
   procedure Before_discrim_part_opt_nonterminal2(
      I : access DFS;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal2'Class) is
   begin
      null;
   end Before_discrim_part_opt_nonterminal2;
   procedure After_discrim_part_opt_nonterminal2(
      I : access DFS;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal2'Class) is
   begin
      null;
   end After_discrim_part_opt_nonterminal2;
   procedure Visit_discrim_part_opt_nonterminal2(
         I : access DFS;
         N : access discrim_part_opt_Model.discrim_part_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrim_part_opt_nonterminal2(N);
      N.discrim_part_part.Acceptor(I);
      I_Classwide.After_discrim_part_opt_nonterminal2(N);
   end Visit_discrim_part_opt_nonterminal2;
   procedure Before_discrim_part_opt_nonterminal3(
      I : access DFS;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal3'Class) is
   begin
      null;
   end Before_discrim_part_opt_nonterminal3;
   procedure After_discrim_part_opt_nonterminal3(
      I : access DFS;
      N : access discrim_part_opt_Model.discrim_part_opt_nonterminal3'Class) is
   begin
      null;
   end After_discrim_part_opt_nonterminal3;
   procedure Visit_discrim_part_opt_nonterminal3(
         I : access DFS;
         N : access discrim_part_opt_Model.discrim_part_opt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrim_part_opt_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_discrim_part_opt_nonterminal3(N);
   end Visit_discrim_part_opt_nonterminal3;
   procedure Before_type_completion_nonterminal1(
      I : access DFS;
      N : access type_completion_Model.type_completion_nonterminal1'Class) is
   begin
      null;
   end Before_type_completion_nonterminal1;
   procedure After_type_completion_nonterminal1(
      I : access DFS;
      N : access type_completion_Model.type_completion_nonterminal1'Class) is
   begin
      null;
   end After_type_completion_nonterminal1;
   procedure Visit_type_completion_nonterminal1(
         I : access DFS;
         N : access type_completion_Model.type_completion_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_completion_nonterminal1(N);
      I_Classwide.After_type_completion_nonterminal1(N);
   end Visit_type_completion_nonterminal1;
   procedure Before_type_completion_nonterminal2(
      I : access DFS;
      N : access type_completion_Model.type_completion_nonterminal2'Class) is
   begin
      null;
   end Before_type_completion_nonterminal2;
   procedure After_type_completion_nonterminal2(
      I : access DFS;
      N : access type_completion_Model.type_completion_nonterminal2'Class) is
   begin
      null;
   end After_type_completion_nonterminal2;
   procedure Visit_type_completion_nonterminal2(
         I : access DFS;
         N : access type_completion_Model.type_completion_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_completion_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.type_def_part.Acceptor(I);
      I_Classwide.After_type_completion_nonterminal2(N);
   end Visit_type_completion_nonterminal2;
   procedure Before_type_def_nonterminal1(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal1'Class) is
   begin
      null;
   end Before_type_def_nonterminal1;
   procedure After_type_def_nonterminal1(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal1'Class) is
   begin
      null;
   end After_type_def_nonterminal1;
   procedure Visit_type_def_nonterminal1(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal1(N);
      N.enumeration_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal1(N);
   end Visit_type_def_nonterminal1;
   procedure Before_type_def_nonterminal2(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal2'Class) is
   begin
      null;
   end Before_type_def_nonterminal2;
   procedure After_type_def_nonterminal2(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal2'Class) is
   begin
      null;
   end After_type_def_nonterminal2;
   procedure Visit_type_def_nonterminal2(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal2(N);
      N.integer_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal2(N);
   end Visit_type_def_nonterminal2;
   procedure Before_type_def_nonterminal3(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal3'Class) is
   begin
      null;
   end Before_type_def_nonterminal3;
   procedure After_type_def_nonterminal3(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal3'Class) is
   begin
      null;
   end After_type_def_nonterminal3;
   procedure Visit_type_def_nonterminal3(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal3(N);
      N.real_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal3(N);
   end Visit_type_def_nonterminal3;
   procedure Before_type_def_nonterminal4(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal4'Class) is
   begin
      null;
   end Before_type_def_nonterminal4;
   procedure After_type_def_nonterminal4(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal4'Class) is
   begin
      null;
   end After_type_def_nonterminal4;
   procedure Visit_type_def_nonterminal4(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal4(N);
      N.array_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal4(N);
   end Visit_type_def_nonterminal4;
   procedure Before_type_def_nonterminal5(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal5'Class) is
   begin
      null;
   end Before_type_def_nonterminal5;
   procedure After_type_def_nonterminal5(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal5'Class) is
   begin
      null;
   end After_type_def_nonterminal5;
   procedure Visit_type_def_nonterminal5(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal5(N);
      N.record_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal5(N);
   end Visit_type_def_nonterminal5;
   procedure Before_type_def_nonterminal6(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal6'Class) is
   begin
      null;
   end Before_type_def_nonterminal6;
   procedure After_type_def_nonterminal6(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal6'Class) is
   begin
      null;
   end After_type_def_nonterminal6;
   procedure Visit_type_def_nonterminal6(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal6(N);
      N.access_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal6(N);
   end Visit_type_def_nonterminal6;
   procedure Before_type_def_nonterminal7(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal7'Class) is
   begin
      null;
   end Before_type_def_nonterminal7;
   procedure After_type_def_nonterminal7(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal7'Class) is
   begin
      null;
   end After_type_def_nonterminal7;
   procedure Visit_type_def_nonterminal7(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal7(N);
      N.derived_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal7(N);
   end Visit_type_def_nonterminal7;
   procedure Before_type_def_nonterminal8(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal8'Class) is
   begin
      null;
   end Before_type_def_nonterminal8;
   procedure After_type_def_nonterminal8(
      I : access DFS;
      N : access type_def_Model.type_def_nonterminal8'Class) is
   begin
      null;
   end After_type_def_nonterminal8;
   procedure Visit_type_def_nonterminal8(
         I : access DFS;
         N : access type_def_Model.type_def_nonterminal8'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_type_def_nonterminal8(N);
      N.private_type_part.Acceptor(I);
      I_Classwide.After_type_def_nonterminal8(N);
   end Visit_type_def_nonterminal8;
   procedure Before_subtype_decl_nonterminal(
      I : access DFS;
      N : access subtype_decl_Model.subtype_decl_nonterminal'Class) is
   begin
      null;
   end Before_subtype_decl_nonterminal;
   procedure After_subtype_decl_nonterminal(
      I : access DFS;
      N : access subtype_decl_Model.subtype_decl_nonterminal'Class) is
   begin
      null;
   end After_subtype_decl_nonterminal;
   procedure Visit_subtype_decl_nonterminal(
         I : access DFS;
         N : access subtype_decl_Model.subtype_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subtype_decl_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.SUBTYPE_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_subtype_decl_nonterminal(N);
   end Visit_subtype_decl_nonterminal;
   procedure Before_subtype_ind_nonterminal1(
      I : access DFS;
      N : access subtype_ind_Model.subtype_ind_nonterminal1'Class) is
   begin
      null;
   end Before_subtype_ind_nonterminal1;
   procedure After_subtype_ind_nonterminal1(
      I : access DFS;
      N : access subtype_ind_Model.subtype_ind_nonterminal1'Class) is
   begin
      null;
   end After_subtype_ind_nonterminal1;
   procedure Visit_subtype_ind_nonterminal1(
         I : access DFS;
         N : access subtype_ind_Model.subtype_ind_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subtype_ind_nonterminal1(N);
      N.name_part.Acceptor(I);
      N.constraint_part.Acceptor(I);
      I_Classwide.After_subtype_ind_nonterminal1(N);
   end Visit_subtype_ind_nonterminal1;
   procedure Before_subtype_ind_nonterminal2(
      I : access DFS;
      N : access subtype_ind_Model.subtype_ind_nonterminal2'Class) is
   begin
      null;
   end Before_subtype_ind_nonterminal2;
   procedure After_subtype_ind_nonterminal2(
      I : access DFS;
      N : access subtype_ind_Model.subtype_ind_nonterminal2'Class) is
   begin
      null;
   end After_subtype_ind_nonterminal2;
   procedure Visit_subtype_ind_nonterminal2(
         I : access DFS;
         N : access subtype_ind_Model.subtype_ind_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subtype_ind_nonterminal2(N);
      N.name_part.Acceptor(I);
      I_Classwide.After_subtype_ind_nonterminal2(N);
   end Visit_subtype_ind_nonterminal2;
   procedure Before_constraint_nonterminal1(
      I : access DFS;
      N : access constraint_Model.constraint_nonterminal1'Class) is
   begin
      null;
   end Before_constraint_nonterminal1;
   procedure After_constraint_nonterminal1(
      I : access DFS;
      N : access constraint_Model.constraint_nonterminal1'Class) is
   begin
      null;
   end After_constraint_nonterminal1;
   procedure Visit_constraint_nonterminal1(
         I : access DFS;
         N : access constraint_Model.constraint_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_constraint_nonterminal1(N);
      N.range_constraint_part.Acceptor(I);
      I_Classwide.After_constraint_nonterminal1(N);
   end Visit_constraint_nonterminal1;
   procedure Before_constraint_nonterminal2(
      I : access DFS;
      N : access constraint_Model.constraint_nonterminal2'Class) is
   begin
      null;
   end Before_constraint_nonterminal2;
   procedure After_constraint_nonterminal2(
      I : access DFS;
      N : access constraint_Model.constraint_nonterminal2'Class) is
   begin
      null;
   end After_constraint_nonterminal2;
   procedure Visit_constraint_nonterminal2(
         I : access DFS;
         N : access constraint_Model.constraint_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_constraint_nonterminal2(N);
      N.decimal_digits_constraint_part.Acceptor(I);
      I_Classwide.After_constraint_nonterminal2(N);
   end Visit_constraint_nonterminal2;
   procedure Before_decimal_digits_constraint_nonterminal(
      I : access DFS;
      N : access decimal_digits_constraint_Model.decimal_digits_constraint_nonterminal'Class) is
   begin
      null;
   end Before_decimal_digits_constraint_nonterminal;
   procedure After_decimal_digits_constraint_nonterminal(
      I : access DFS;
      N : access decimal_digits_constraint_Model.decimal_digits_constraint_nonterminal'Class) is
   begin
      null;
   end After_decimal_digits_constraint_nonterminal;
   procedure Visit_decimal_digits_constraint_nonterminal(
         I : access DFS;
         N : access decimal_digits_constraint_Model.decimal_digits_constraint_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decimal_digits_constraint_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.DIGITS_part);
      N.expression_part.Acceptor(I);
      N.range_constr_opt_part.Acceptor(I);
      I_Classwide.After_decimal_digits_constraint_nonterminal(N);
   end Visit_decimal_digits_constraint_nonterminal;
   procedure Before_derived_type_nonterminal1(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal1'Class) is
   begin
      null;
   end Before_derived_type_nonterminal1;
   procedure After_derived_type_nonterminal1(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal1'Class) is
   begin
      null;
   end After_derived_type_nonterminal1;
   procedure Visit_derived_type_nonterminal1(
         I : access DFS;
         N : access derived_type_Model.derived_type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_derived_type_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.After_derived_type_nonterminal1(N);
   end Visit_derived_type_nonterminal1;
   procedure Before_derived_type_nonterminal2(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal2'Class) is
   begin
      null;
   end Before_derived_type_nonterminal2;
   procedure After_derived_type_nonterminal2(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal2'Class) is
   begin
      null;
   end After_derived_type_nonterminal2;
   procedure Visit_derived_type_nonterminal2(
         I : access DFS;
         N : access derived_type_Model.derived_type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_derived_type_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      I_Classwide.After_derived_type_nonterminal2(N);
   end Visit_derived_type_nonterminal2;
   procedure Before_derived_type_nonterminal3(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal3'Class) is
   begin
      null;
   end Before_derived_type_nonterminal3;
   procedure After_derived_type_nonterminal3(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal3'Class) is
   begin
      null;
   end After_derived_type_nonterminal3;
   procedure Visit_derived_type_nonterminal3(
         I : access DFS;
         N : access derived_type_Model.derived_type_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_derived_type_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      N.record_def_part.Acceptor(I);
      I_Classwide.After_derived_type_nonterminal3(N);
   end Visit_derived_type_nonterminal3;
   procedure Before_derived_type_nonterminal4(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal4'Class) is
   begin
      null;
   end Before_derived_type_nonterminal4;
   procedure After_derived_type_nonterminal4(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal4'Class) is
   begin
      null;
   end After_derived_type_nonterminal4;
   procedure Visit_derived_type_nonterminal4(
         I : access DFS;
         N : access derived_type_Model.derived_type_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_derived_type_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.abstract_part);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      I_Classwide.After_derived_type_nonterminal4(N);
   end Visit_derived_type_nonterminal4;
   procedure Before_derived_type_nonterminal5(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal5'Class) is
   begin
      null;
   end Before_derived_type_nonterminal5;
   procedure After_derived_type_nonterminal5(
      I : access DFS;
      N : access derived_type_Model.derived_type_nonterminal5'Class) is
   begin
      null;
   end After_derived_type_nonterminal5;
   procedure Visit_derived_type_nonterminal5(
         I : access DFS;
         N : access derived_type_Model.derived_type_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_derived_type_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.abstract_part);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      N.record_def_part.Acceptor(I);
      I_Classwide.After_derived_type_nonterminal5(N);
   end Visit_derived_type_nonterminal5;
   procedure Before_range_constraint_nonterminal(
      I : access DFS;
      N : access range_constraint_Model.range_constraint_nonterminal'Class) is
   begin
      null;
   end Before_range_constraint_nonterminal;
   procedure After_range_constraint_nonterminal(
      I : access DFS;
      N : access range_constraint_Model.range_constraint_nonterminal'Class) is
   begin
      null;
   end After_range_constraint_nonterminal;
   procedure Visit_range_constraint_nonterminal(
         I : access DFS;
         N : access range_constraint_Model.range_constraint_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_constraint_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.RANGE_part);
      N.range_sym_part.Acceptor(I);
      I_Classwide.After_range_constraint_nonterminal(N);
   end Visit_range_constraint_nonterminal;
   procedure Before_range_sym_nonterminal1(
      I : access DFS;
      N : access range_sym_Model.range_sym_nonterminal1'Class) is
   begin
      null;
   end Before_range_sym_nonterminal1;
   procedure After_range_sym_nonterminal1(
      I : access DFS;
      N : access range_sym_Model.range_sym_nonterminal1'Class) is
   begin
      null;
   end After_range_sym_nonterminal1;
   procedure Visit_range_sym_nonterminal1(
         I : access DFS;
         N : access range_sym_Model.range_sym_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_sym_nonterminal1(N);
      N.simple_expression_part1.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOUBLE_DOT_part);
      N.simple_expression_part2.Acceptor(I);
      I_Classwide.After_range_sym_nonterminal1(N);
   end Visit_range_sym_nonterminal1;
   procedure Before_range_sym_nonterminal2(
      I : access DFS;
      N : access range_sym_Model.range_sym_nonterminal2'Class) is
   begin
      null;
   end Before_range_sym_nonterminal2;
   procedure After_range_sym_nonterminal2(
      I : access DFS;
      N : access range_sym_Model.range_sym_nonterminal2'Class) is
   begin
      null;
   end After_range_sym_nonterminal2;
   procedure Visit_range_sym_nonterminal2(
         I : access DFS;
         N : access range_sym_Model.range_sym_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_sym_nonterminal2(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.TICK_part);
      I_Classwide.Visit_Parseable_Token(N.RANGE_part);
      I_Classwide.After_range_sym_nonterminal2(N);
   end Visit_range_sym_nonterminal2;
   procedure Before_range_sym_nonterminal3(
      I : access DFS;
      N : access range_sym_Model.range_sym_nonterminal3'Class) is
   begin
      null;
   end Before_range_sym_nonterminal3;
   procedure After_range_sym_nonterminal3(
      I : access DFS;
      N : access range_sym_Model.range_sym_nonterminal3'Class) is
   begin
      null;
   end After_range_sym_nonterminal3;
   procedure Visit_range_sym_nonterminal3(
         I : access DFS;
         N : access range_sym_Model.range_sym_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_sym_nonterminal3(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.TICK_part);
      I_Classwide.Visit_Parseable_Token(N.RANGE_part);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_range_sym_nonterminal3(N);
   end Visit_range_sym_nonterminal3;
   procedure Before_enumeration_type_nonterminal(
      I : access DFS;
      N : access enumeration_type_Model.enumeration_type_nonterminal'Class) is
   begin
      null;
   end Before_enumeration_type_nonterminal;
   procedure After_enumeration_type_nonterminal(
      I : access DFS;
      N : access enumeration_type_Model.enumeration_type_nonterminal'Class) is
   begin
      null;
   end After_enumeration_type_nonterminal;
   procedure Visit_enumeration_type_nonterminal(
         I : access DFS;
         N : access enumeration_type_Model.enumeration_type_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_enumeration_type_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.enum_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_enumeration_type_nonterminal(N);
   end Visit_enumeration_type_nonterminal;
   procedure Before_enum_id_s_nonterminal1(
      I : access DFS;
      N : access enum_id_s_Model.enum_id_s_nonterminal1'Class) is
   begin
      null;
   end Before_enum_id_s_nonterminal1;
   procedure After_enum_id_s_nonterminal1(
      I : access DFS;
      N : access enum_id_s_Model.enum_id_s_nonterminal1'Class) is
   begin
      null;
   end After_enum_id_s_nonterminal1;
   procedure Visit_enum_id_s_nonterminal1(
         I : access DFS;
         N : access enum_id_s_Model.enum_id_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_enum_id_s_nonterminal1(N);
      N.enum_id_part.Acceptor(I);
      I_Classwide.After_enum_id_s_nonterminal1(N);
   end Visit_enum_id_s_nonterminal1;
   procedure Before_enum_id_s_nonterminal2(
      I : access DFS;
      N : access enum_id_s_Model.enum_id_s_nonterminal2'Class) is
   begin
      null;
   end Before_enum_id_s_nonterminal2;
   procedure After_enum_id_s_nonterminal2(
      I : access DFS;
      N : access enum_id_s_Model.enum_id_s_nonterminal2'Class) is
   begin
      null;
   end After_enum_id_s_nonterminal2;
   procedure Visit_enum_id_s_nonterminal2(
         I : access DFS;
         N : access enum_id_s_Model.enum_id_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_enum_id_s_nonterminal2(N);
      N.enum_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.enum_id_part.Acceptor(I);
      I_Classwide.After_enum_id_s_nonterminal2(N);
   end Visit_enum_id_s_nonterminal2;
   procedure Before_enum_id_nonterminal1(
      I : access DFS;
      N : access enum_id_Model.enum_id_nonterminal1'Class) is
   begin
      null;
   end Before_enum_id_nonterminal1;
   procedure After_enum_id_nonterminal1(
      I : access DFS;
      N : access enum_id_Model.enum_id_nonterminal1'Class) is
   begin
      null;
   end After_enum_id_nonterminal1;
   procedure Visit_enum_id_nonterminal1(
         I : access DFS;
         N : access enum_id_Model.enum_id_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_enum_id_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.After_enum_id_nonterminal1(N);
   end Visit_enum_id_nonterminal1;
   procedure Before_enum_id_nonterminal2(
      I : access DFS;
      N : access enum_id_Model.enum_id_nonterminal2'Class) is
   begin
      null;
   end Before_enum_id_nonterminal2;
   procedure After_enum_id_nonterminal2(
      I : access DFS;
      N : access enum_id_Model.enum_id_nonterminal2'Class) is
   begin
      null;
   end After_enum_id_nonterminal2;
   procedure Visit_enum_id_nonterminal2(
         I : access DFS;
         N : access enum_id_Model.enum_id_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_enum_id_nonterminal2(N);
      N.char_lit_part.Acceptor(I);
      I_Classwide.After_enum_id_nonterminal2(N);
   end Visit_enum_id_nonterminal2;
   procedure Before_integer_type_nonterminal1(
      I : access DFS;
      N : access integer_type_Model.integer_type_nonterminal1'Class) is
   begin
      null;
   end Before_integer_type_nonterminal1;
   procedure After_integer_type_nonterminal1(
      I : access DFS;
      N : access integer_type_Model.integer_type_nonterminal1'Class) is
   begin
      null;
   end After_integer_type_nonterminal1;
   procedure Visit_integer_type_nonterminal1(
         I : access DFS;
         N : access integer_type_Model.integer_type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_integer_type_nonterminal1(N);
      N.range_spec_part.Acceptor(I);
      I_Classwide.After_integer_type_nonterminal1(N);
   end Visit_integer_type_nonterminal1;
   procedure Before_integer_type_nonterminal2(
      I : access DFS;
      N : access integer_type_Model.integer_type_nonterminal2'Class) is
   begin
      null;
   end Before_integer_type_nonterminal2;
   procedure After_integer_type_nonterminal2(
      I : access DFS;
      N : access integer_type_Model.integer_type_nonterminal2'Class) is
   begin
      null;
   end After_integer_type_nonterminal2;
   procedure Visit_integer_type_nonterminal2(
         I : access DFS;
         N : access integer_type_Model.integer_type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_integer_type_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.MOD_part);
      N.expression_part.Acceptor(I);
      I_Classwide.After_integer_type_nonterminal2(N);
   end Visit_integer_type_nonterminal2;
   procedure Before_range_spec_nonterminal(
      I : access DFS;
      N : access range_spec_Model.range_spec_nonterminal'Class) is
   begin
      null;
   end Before_range_spec_nonterminal;
   procedure After_range_spec_nonterminal(
      I : access DFS;
      N : access range_spec_Model.range_spec_nonterminal'Class) is
   begin
      null;
   end After_range_spec_nonterminal;
   procedure Visit_range_spec_nonterminal(
         I : access DFS;
         N : access range_spec_Model.range_spec_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_spec_nonterminal(N);
      N.range_constraint_part.Acceptor(I);
      I_Classwide.After_range_spec_nonterminal(N);
   end Visit_range_spec_nonterminal;
   procedure Before_range_spec_opt_nonterminal1(
      I : access DFS;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal1'Class) is
   begin
      null;
   end Before_range_spec_opt_nonterminal1;
   procedure After_range_spec_opt_nonterminal1(
      I : access DFS;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal1'Class) is
   begin
      null;
   end After_range_spec_opt_nonterminal1;
   procedure Visit_range_spec_opt_nonterminal1(
         I : access DFS;
         N : access range_spec_opt_Model.range_spec_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_spec_opt_nonterminal1(N);
      I_Classwide.After_range_spec_opt_nonterminal1(N);
   end Visit_range_spec_opt_nonterminal1;
   procedure Before_range_spec_opt_nonterminal2(
      I : access DFS;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal2'Class) is
   begin
      null;
   end Before_range_spec_opt_nonterminal2;
   procedure After_range_spec_opt_nonterminal2(
      I : access DFS;
      N : access range_spec_opt_Model.range_spec_opt_nonterminal2'Class) is
   begin
      null;
   end After_range_spec_opt_nonterminal2;
   procedure Visit_range_spec_opt_nonterminal2(
         I : access DFS;
         N : access range_spec_opt_Model.range_spec_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_spec_opt_nonterminal2(N);
      N.range_spec_part.Acceptor(I);
      I_Classwide.After_range_spec_opt_nonterminal2(N);
   end Visit_range_spec_opt_nonterminal2;
   procedure Before_real_type_nonterminal1(
      I : access DFS;
      N : access real_type_Model.real_type_nonterminal1'Class) is
   begin
      null;
   end Before_real_type_nonterminal1;
   procedure After_real_type_nonterminal1(
      I : access DFS;
      N : access real_type_Model.real_type_nonterminal1'Class) is
   begin
      null;
   end After_real_type_nonterminal1;
   procedure Visit_real_type_nonterminal1(
         I : access DFS;
         N : access real_type_Model.real_type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_real_type_nonterminal1(N);
      N.float_type_part.Acceptor(I);
      I_Classwide.After_real_type_nonterminal1(N);
   end Visit_real_type_nonterminal1;
   procedure Before_real_type_nonterminal2(
      I : access DFS;
      N : access real_type_Model.real_type_nonterminal2'Class) is
   begin
      null;
   end Before_real_type_nonterminal2;
   procedure After_real_type_nonterminal2(
      I : access DFS;
      N : access real_type_Model.real_type_nonterminal2'Class) is
   begin
      null;
   end After_real_type_nonterminal2;
   procedure Visit_real_type_nonterminal2(
         I : access DFS;
         N : access real_type_Model.real_type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_real_type_nonterminal2(N);
      N.fixed_type_part.Acceptor(I);
      I_Classwide.After_real_type_nonterminal2(N);
   end Visit_real_type_nonterminal2;
   procedure Before_float_type_nonterminal(
      I : access DFS;
      N : access float_type_Model.float_type_nonterminal'Class) is
   begin
      null;
   end Before_float_type_nonterminal;
   procedure After_float_type_nonterminal(
      I : access DFS;
      N : access float_type_Model.float_type_nonterminal'Class) is
   begin
      null;
   end After_float_type_nonterminal;
   procedure Visit_float_type_nonterminal(
         I : access DFS;
         N : access float_type_Model.float_type_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_float_type_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.DIGITS_part);
      N.expression_part.Acceptor(I);
      N.range_spec_opt_part.Acceptor(I);
      I_Classwide.After_float_type_nonterminal(N);
   end Visit_float_type_nonterminal;
   procedure Before_fixed_type_nonterminal1(
      I : access DFS;
      N : access fixed_type_Model.fixed_type_nonterminal1'Class) is
   begin
      null;
   end Before_fixed_type_nonterminal1;
   procedure After_fixed_type_nonterminal1(
      I : access DFS;
      N : access fixed_type_Model.fixed_type_nonterminal1'Class) is
   begin
      null;
   end After_fixed_type_nonterminal1;
   procedure Visit_fixed_type_nonterminal1(
         I : access DFS;
         N : access fixed_type_Model.fixed_type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_fixed_type_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.DELTA_part);
      N.expression_part.Acceptor(I);
      N.range_spec_part.Acceptor(I);
      I_Classwide.After_fixed_type_nonterminal1(N);
   end Visit_fixed_type_nonterminal1;
   procedure Before_fixed_type_nonterminal2(
      I : access DFS;
      N : access fixed_type_Model.fixed_type_nonterminal2'Class) is
   begin
      null;
   end Before_fixed_type_nonterminal2;
   procedure After_fixed_type_nonterminal2(
      I : access DFS;
      N : access fixed_type_Model.fixed_type_nonterminal2'Class) is
   begin
      null;
   end After_fixed_type_nonterminal2;
   procedure Visit_fixed_type_nonterminal2(
         I : access DFS;
         N : access fixed_type_Model.fixed_type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_fixed_type_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.DELTA_part);
      N.expression_part1.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DIGITS_part);
      N.expression_part2.Acceptor(I);
      N.range_spec_opt_part.Acceptor(I);
      I_Classwide.After_fixed_type_nonterminal2(N);
   end Visit_fixed_type_nonterminal2;
   procedure Before_array_type_nonterminal1(
      I : access DFS;
      N : access array_type_Model.array_type_nonterminal1'Class) is
   begin
      null;
   end Before_array_type_nonterminal1;
   procedure After_array_type_nonterminal1(
      I : access DFS;
      N : access array_type_Model.array_type_nonterminal1'Class) is
   begin
      null;
   end After_array_type_nonterminal1;
   procedure Visit_array_type_nonterminal1(
         I : access DFS;
         N : access array_type_Model.array_type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_array_type_nonterminal1(N);
      N.unconstr_array_type_part.Acceptor(I);
      I_Classwide.After_array_type_nonterminal1(N);
   end Visit_array_type_nonterminal1;
   procedure Before_array_type_nonterminal2(
      I : access DFS;
      N : access array_type_Model.array_type_nonterminal2'Class) is
   begin
      null;
   end Before_array_type_nonterminal2;
   procedure After_array_type_nonterminal2(
      I : access DFS;
      N : access array_type_Model.array_type_nonterminal2'Class) is
   begin
      null;
   end After_array_type_nonterminal2;
   procedure Visit_array_type_nonterminal2(
         I : access DFS;
         N : access array_type_Model.array_type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_array_type_nonterminal2(N);
      N.constr_array_type_part.Acceptor(I);
      I_Classwide.After_array_type_nonterminal2(N);
   end Visit_array_type_nonterminal2;
   procedure Before_unconstr_array_type_nonterminal(
      I : access DFS;
      N : access unconstr_array_type_Model.unconstr_array_type_nonterminal'Class) is
   begin
      null;
   end Before_unconstr_array_type_nonterminal;
   procedure After_unconstr_array_type_nonterminal(
      I : access DFS;
      N : access unconstr_array_type_Model.unconstr_array_type_nonterminal'Class) is
   begin
      null;
   end After_unconstr_array_type_nonterminal;
   procedure Visit_unconstr_array_type_nonterminal(
         I : access DFS;
         N : access unconstr_array_type_Model.unconstr_array_type_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unconstr_array_type_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.ARRAY_part);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.index_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.OF_part);
      N.component_subtype_def_part.Acceptor(I);
      I_Classwide.After_unconstr_array_type_nonterminal(N);
   end Visit_unconstr_array_type_nonterminal;
   procedure Before_constr_array_type_nonterminal(
      I : access DFS;
      N : access constr_array_type_Model.constr_array_type_nonterminal'Class) is
   begin
      null;
   end Before_constr_array_type_nonterminal;
   procedure After_constr_array_type_nonterminal(
      I : access DFS;
      N : access constr_array_type_Model.constr_array_type_nonterminal'Class) is
   begin
      null;
   end After_constr_array_type_nonterminal;
   procedure Visit_constr_array_type_nonterminal(
         I : access DFS;
         N : access constr_array_type_Model.constr_array_type_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_constr_array_type_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.ARRAY_part);
      N.iter_index_constraint_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.OF_part);
      N.component_subtype_def_part.Acceptor(I);
      I_Classwide.After_constr_array_type_nonterminal(N);
   end Visit_constr_array_type_nonterminal;
   procedure Before_component_subtype_def_nonterminal(
      I : access DFS;
      N : access component_subtype_def_Model.component_subtype_def_nonterminal'Class) is
   begin
      null;
   end Before_component_subtype_def_nonterminal;
   procedure After_component_subtype_def_nonterminal(
      I : access DFS;
      N : access component_subtype_def_Model.component_subtype_def_nonterminal'Class) is
   begin
      null;
   end After_component_subtype_def_nonterminal;
   procedure Visit_component_subtype_def_nonterminal(
         I : access DFS;
         N : access component_subtype_def_Model.component_subtype_def_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_component_subtype_def_nonterminal(N);
      N.aliased_opt_part.Acceptor(I);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.After_component_subtype_def_nonterminal(N);
   end Visit_component_subtype_def_nonterminal;
   procedure Before_aliased_opt_nonterminal1(
      I : access DFS;
      N : access aliased_opt_Model.aliased_opt_nonterminal1'Class) is
   begin
      null;
   end Before_aliased_opt_nonterminal1;
   procedure After_aliased_opt_nonterminal1(
      I : access DFS;
      N : access aliased_opt_Model.aliased_opt_nonterminal1'Class) is
   begin
      null;
   end After_aliased_opt_nonterminal1;
   procedure Visit_aliased_opt_nonterminal1(
         I : access DFS;
         N : access aliased_opt_Model.aliased_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_aliased_opt_nonterminal1(N);
      I_Classwide.After_aliased_opt_nonterminal1(N);
   end Visit_aliased_opt_nonterminal1;
   procedure Before_aliased_opt_nonterminal2(
      I : access DFS;
      N : access aliased_opt_Model.aliased_opt_nonterminal2'Class) is
   begin
      null;
   end Before_aliased_opt_nonterminal2;
   procedure After_aliased_opt_nonterminal2(
      I : access DFS;
      N : access aliased_opt_Model.aliased_opt_nonterminal2'Class) is
   begin
      null;
   end After_aliased_opt_nonterminal2;
   procedure Visit_aliased_opt_nonterminal2(
         I : access DFS;
         N : access aliased_opt_Model.aliased_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_aliased_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.aliased_part);
      I_Classwide.After_aliased_opt_nonterminal2(N);
   end Visit_aliased_opt_nonterminal2;
   procedure Before_index_s_nonterminal1(
      I : access DFS;
      N : access index_s_Model.index_s_nonterminal1'Class) is
   begin
      null;
   end Before_index_s_nonterminal1;
   procedure After_index_s_nonterminal1(
      I : access DFS;
      N : access index_s_Model.index_s_nonterminal1'Class) is
   begin
      null;
   end After_index_s_nonterminal1;
   procedure Visit_index_s_nonterminal1(
         I : access DFS;
         N : access index_s_Model.index_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_index_s_nonterminal1(N);
      N.index_part.Acceptor(I);
      I_Classwide.After_index_s_nonterminal1(N);
   end Visit_index_s_nonterminal1;
   procedure Before_index_s_nonterminal2(
      I : access DFS;
      N : access index_s_Model.index_s_nonterminal2'Class) is
   begin
      null;
   end Before_index_s_nonterminal2;
   procedure After_index_s_nonterminal2(
      I : access DFS;
      N : access index_s_Model.index_s_nonterminal2'Class) is
   begin
      null;
   end After_index_s_nonterminal2;
   procedure Visit_index_s_nonterminal2(
         I : access DFS;
         N : access index_s_Model.index_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_index_s_nonterminal2(N);
      N.index_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.index_part.Acceptor(I);
      I_Classwide.After_index_s_nonterminal2(N);
   end Visit_index_s_nonterminal2;
   procedure Before_index_nonterminal(
      I : access DFS;
      N : access index_Model.index_nonterminal'Class) is
   begin
      null;
   end Before_index_nonterminal;
   procedure After_index_nonterminal(
      I : access DFS;
      N : access index_Model.index_nonterminal'Class) is
   begin
      null;
   end After_index_nonterminal;
   procedure Visit_index_nonterminal(
         I : access DFS;
         N : access index_Model.index_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_index_nonterminal(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.RANGE_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.After_index_nonterminal(N);
   end Visit_index_nonterminal;
   procedure Before_iter_index_constraint_nonterminal(
      I : access DFS;
      N : access iter_index_constraint_Model.iter_index_constraint_nonterminal'Class) is
   begin
      null;
   end Before_iter_index_constraint_nonterminal;
   procedure After_iter_index_constraint_nonterminal(
      I : access DFS;
      N : access iter_index_constraint_Model.iter_index_constraint_nonterminal'Class) is
   begin
      null;
   end After_iter_index_constraint_nonterminal;
   procedure Visit_iter_index_constraint_nonterminal(
         I : access DFS;
         N : access iter_index_constraint_Model.iter_index_constraint_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_iter_index_constraint_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.iter_discrete_range_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_iter_index_constraint_nonterminal(N);
   end Visit_iter_index_constraint_nonterminal;
   procedure Before_iter_discrete_range_s_nonterminal1(
      I : access DFS;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal1'Class) is
   begin
      null;
   end Before_iter_discrete_range_s_nonterminal1;
   procedure After_iter_discrete_range_s_nonterminal1(
      I : access DFS;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal1'Class) is
   begin
      null;
   end After_iter_discrete_range_s_nonterminal1;
   procedure Visit_iter_discrete_range_s_nonterminal1(
         I : access DFS;
         N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_iter_discrete_range_s_nonterminal1(N);
      N.discrete_range_part.Acceptor(I);
      I_Classwide.After_iter_discrete_range_s_nonterminal1(N);
   end Visit_iter_discrete_range_s_nonterminal1;
   procedure Before_iter_discrete_range_s_nonterminal2(
      I : access DFS;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal2'Class) is
   begin
      null;
   end Before_iter_discrete_range_s_nonterminal2;
   procedure After_iter_discrete_range_s_nonterminal2(
      I : access DFS;
      N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal2'Class) is
   begin
      null;
   end After_iter_discrete_range_s_nonterminal2;
   procedure Visit_iter_discrete_range_s_nonterminal2(
         I : access DFS;
         N : access iter_discrete_range_s_Model.iter_discrete_range_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_iter_discrete_range_s_nonterminal2(N);
      N.iter_discrete_range_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.discrete_range_part.Acceptor(I);
      I_Classwide.After_iter_discrete_range_s_nonterminal2(N);
   end Visit_iter_discrete_range_s_nonterminal2;
   procedure Before_discrete_range_nonterminal1(
      I : access DFS;
      N : access discrete_range_Model.discrete_range_nonterminal1'Class) is
   begin
      null;
   end Before_discrete_range_nonterminal1;
   procedure After_discrete_range_nonterminal1(
      I : access DFS;
      N : access discrete_range_Model.discrete_range_nonterminal1'Class) is
   begin
      null;
   end After_discrete_range_nonterminal1;
   procedure Visit_discrete_range_nonterminal1(
         I : access DFS;
         N : access discrete_range_Model.discrete_range_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrete_range_nonterminal1(N);
      N.name_part.Acceptor(I);
      N.range_constr_opt_part.Acceptor(I);
      I_Classwide.After_discrete_range_nonterminal1(N);
   end Visit_discrete_range_nonterminal1;
   procedure Before_discrete_range_nonterminal2(
      I : access DFS;
      N : access discrete_range_Model.discrete_range_nonterminal2'Class) is
   begin
      null;
   end Before_discrete_range_nonterminal2;
   procedure After_discrete_range_nonterminal2(
      I : access DFS;
      N : access discrete_range_Model.discrete_range_nonterminal2'Class) is
   begin
      null;
   end After_discrete_range_nonterminal2;
   procedure Visit_discrete_range_nonterminal2(
         I : access DFS;
         N : access discrete_range_Model.discrete_range_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrete_range_nonterminal2(N);
      N.range_sym_part.Acceptor(I);
      I_Classwide.After_discrete_range_nonterminal2(N);
   end Visit_discrete_range_nonterminal2;
   procedure Before_range_constr_opt_nonterminal1(
      I : access DFS;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal1'Class) is
   begin
      null;
   end Before_range_constr_opt_nonterminal1;
   procedure After_range_constr_opt_nonterminal1(
      I : access DFS;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal1'Class) is
   begin
      null;
   end After_range_constr_opt_nonterminal1;
   procedure Visit_range_constr_opt_nonterminal1(
         I : access DFS;
         N : access range_constr_opt_Model.range_constr_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_constr_opt_nonterminal1(N);
      I_Classwide.After_range_constr_opt_nonterminal1(N);
   end Visit_range_constr_opt_nonterminal1;
   procedure Before_range_constr_opt_nonterminal2(
      I : access DFS;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal2'Class) is
   begin
      null;
   end Before_range_constr_opt_nonterminal2;
   procedure After_range_constr_opt_nonterminal2(
      I : access DFS;
      N : access range_constr_opt_Model.range_constr_opt_nonterminal2'Class) is
   begin
      null;
   end After_range_constr_opt_nonterminal2;
   procedure Visit_range_constr_opt_nonterminal2(
         I : access DFS;
         N : access range_constr_opt_Model.range_constr_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_range_constr_opt_nonterminal2(N);
      N.range_constraint_part.Acceptor(I);
      I_Classwide.After_range_constr_opt_nonterminal2(N);
   end Visit_range_constr_opt_nonterminal2;
   procedure Before_record_type_nonterminal(
      I : access DFS;
      N : access record_type_Model.record_type_nonterminal'Class) is
   begin
      null;
   end Before_record_type_nonterminal;
   procedure After_record_type_nonterminal(
      I : access DFS;
      N : access record_type_Model.record_type_nonterminal'Class) is
   begin
      null;
   end After_record_type_nonterminal;
   procedure Visit_record_type_nonterminal(
         I : access DFS;
         N : access record_type_Model.record_type_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_record_type_nonterminal(N);
      N.tagged_opt_part.Acceptor(I);
      N.limited_opt_part.Acceptor(I);
      N.record_def_part.Acceptor(I);
      I_Classwide.After_record_type_nonterminal(N);
   end Visit_record_type_nonterminal;
   procedure Before_record_def_nonterminal1(
      I : access DFS;
      N : access record_def_Model.record_def_nonterminal1'Class) is
   begin
      null;
   end Before_record_def_nonterminal1;
   procedure After_record_def_nonterminal1(
      I : access DFS;
      N : access record_def_Model.record_def_nonterminal1'Class) is
   begin
      null;
   end After_record_def_nonterminal1;
   procedure Visit_record_def_nonterminal1(
         I : access DFS;
         N : access record_def_Model.record_def_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_record_def_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.RECORD_part1);
      N.pragma_s_part.Acceptor(I);
      N.comp_list_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.RECORD_part2);
      I_Classwide.After_record_def_nonterminal1(N);
   end Visit_record_def_nonterminal1;
   procedure Before_record_def_nonterminal2(
      I : access DFS;
      N : access record_def_Model.record_def_nonterminal2'Class) is
   begin
      null;
   end Before_record_def_nonterminal2;
   procedure After_record_def_nonterminal2(
      I : access DFS;
      N : access record_def_Model.record_def_nonterminal2'Class) is
   begin
      null;
   end After_record_def_nonterminal2;
   procedure Visit_record_def_nonterminal2(
         I : access DFS;
         N : access record_def_Model.record_def_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_record_def_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.NULL_part);
      I_Classwide.Visit_Parseable_Token(N.RECORD_part);
      I_Classwide.After_record_def_nonterminal2(N);
   end Visit_record_def_nonterminal2;
   procedure Before_tagged_opt_nonterminal1(
      I : access DFS;
      N : access tagged_opt_Model.tagged_opt_nonterminal1'Class) is
   begin
      null;
   end Before_tagged_opt_nonterminal1;
   procedure After_tagged_opt_nonterminal1(
      I : access DFS;
      N : access tagged_opt_Model.tagged_opt_nonterminal1'Class) is
   begin
      null;
   end After_tagged_opt_nonterminal1;
   procedure Visit_tagged_opt_nonterminal1(
         I : access DFS;
         N : access tagged_opt_Model.tagged_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_tagged_opt_nonterminal1(N);
      I_Classwide.After_tagged_opt_nonterminal1(N);
   end Visit_tagged_opt_nonterminal1;
   procedure Before_tagged_opt_nonterminal2(
      I : access DFS;
      N : access tagged_opt_Model.tagged_opt_nonterminal2'Class) is
   begin
      null;
   end Before_tagged_opt_nonterminal2;
   procedure After_tagged_opt_nonterminal2(
      I : access DFS;
      N : access tagged_opt_Model.tagged_opt_nonterminal2'Class) is
   begin
      null;
   end After_tagged_opt_nonterminal2;
   procedure Visit_tagged_opt_nonterminal2(
         I : access DFS;
         N : access tagged_opt_Model.tagged_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_tagged_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.TAGGED_part);
      I_Classwide.After_tagged_opt_nonterminal2(N);
   end Visit_tagged_opt_nonterminal2;
   procedure Before_tagged_opt_nonterminal3(
      I : access DFS;
      N : access tagged_opt_Model.tagged_opt_nonterminal3'Class) is
   begin
      null;
   end Before_tagged_opt_nonterminal3;
   procedure After_tagged_opt_nonterminal3(
      I : access DFS;
      N : access tagged_opt_Model.tagged_opt_nonterminal3'Class) is
   begin
      null;
   end After_tagged_opt_nonterminal3;
   procedure Visit_tagged_opt_nonterminal3(
         I : access DFS;
         N : access tagged_opt_Model.tagged_opt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_tagged_opt_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.abstract_part);
      I_Classwide.Visit_Parseable_Token(N.TAGGED_part);
      I_Classwide.After_tagged_opt_nonterminal3(N);
   end Visit_tagged_opt_nonterminal3;
   procedure Before_comp_list_nonterminal1(
      I : access DFS;
      N : access comp_list_Model.comp_list_nonterminal1'Class) is
   begin
      null;
   end Before_comp_list_nonterminal1;
   procedure After_comp_list_nonterminal1(
      I : access DFS;
      N : access comp_list_Model.comp_list_nonterminal1'Class) is
   begin
      null;
   end After_comp_list_nonterminal1;
   procedure Visit_comp_list_nonterminal1(
         I : access DFS;
         N : access comp_list_Model.comp_list_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_list_nonterminal1(N);
      N.comp_decl_s_part.Acceptor(I);
      N.variant_part_opt_part.Acceptor(I);
      I_Classwide.After_comp_list_nonterminal1(N);
   end Visit_comp_list_nonterminal1;
   procedure Before_comp_list_nonterminal2(
      I : access DFS;
      N : access comp_list_Model.comp_list_nonterminal2'Class) is
   begin
      null;
   end Before_comp_list_nonterminal2;
   procedure After_comp_list_nonterminal2(
      I : access DFS;
      N : access comp_list_Model.comp_list_nonterminal2'Class) is
   begin
      null;
   end After_comp_list_nonterminal2;
   procedure Visit_comp_list_nonterminal2(
         I : access DFS;
         N : access comp_list_Model.comp_list_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_list_nonterminal2(N);
      N.variant_part_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_comp_list_nonterminal2(N);
   end Visit_comp_list_nonterminal2;
   procedure Before_comp_list_nonterminal3(
      I : access DFS;
      N : access comp_list_Model.comp_list_nonterminal3'Class) is
   begin
      null;
   end Before_comp_list_nonterminal3;
   procedure After_comp_list_nonterminal3(
      I : access DFS;
      N : access comp_list_Model.comp_list_nonterminal3'Class) is
   begin
      null;
   end After_comp_list_nonterminal3;
   procedure Visit_comp_list_nonterminal3(
         I : access DFS;
         N : access comp_list_Model.comp_list_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_list_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.NULL_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_comp_list_nonterminal3(N);
   end Visit_comp_list_nonterminal3;
   procedure Before_comp_decl_s_nonterminal1(
      I : access DFS;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal1'Class) is
   begin
      null;
   end Before_comp_decl_s_nonterminal1;
   procedure After_comp_decl_s_nonterminal1(
      I : access DFS;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal1'Class) is
   begin
      null;
   end After_comp_decl_s_nonterminal1;
   procedure Visit_comp_decl_s_nonterminal1(
         I : access DFS;
         N : access comp_decl_s_Model.comp_decl_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_decl_s_nonterminal1(N);
      N.comp_decl_part.Acceptor(I);
      I_Classwide.After_comp_decl_s_nonterminal1(N);
   end Visit_comp_decl_s_nonterminal1;
   procedure Before_comp_decl_s_nonterminal2(
      I : access DFS;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal2'Class) is
   begin
      null;
   end Before_comp_decl_s_nonterminal2;
   procedure After_comp_decl_s_nonterminal2(
      I : access DFS;
      N : access comp_decl_s_Model.comp_decl_s_nonterminal2'Class) is
   begin
      null;
   end After_comp_decl_s_nonterminal2;
   procedure Visit_comp_decl_s_nonterminal2(
         I : access DFS;
         N : access comp_decl_s_Model.comp_decl_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_decl_s_nonterminal2(N);
      N.comp_decl_s_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      N.comp_decl_part.Acceptor(I);
      I_Classwide.After_comp_decl_s_nonterminal2(N);
   end Visit_comp_decl_s_nonterminal2;
   procedure Before_variant_part_opt_nonterminal1(
      I : access DFS;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal1'Class) is
   begin
      null;
   end Before_variant_part_opt_nonterminal1;
   procedure After_variant_part_opt_nonterminal1(
      I : access DFS;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal1'Class) is
   begin
      null;
   end After_variant_part_opt_nonterminal1;
   procedure Visit_variant_part_opt_nonterminal1(
         I : access DFS;
         N : access variant_part_opt_Model.variant_part_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_variant_part_opt_nonterminal1(N);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_variant_part_opt_nonterminal1(N);
   end Visit_variant_part_opt_nonterminal1;
   procedure Before_variant_part_opt_nonterminal2(
      I : access DFS;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal2'Class) is
   begin
      null;
   end Before_variant_part_opt_nonterminal2;
   procedure After_variant_part_opt_nonterminal2(
      I : access DFS;
      N : access variant_part_opt_Model.variant_part_opt_nonterminal2'Class) is
   begin
      null;
   end After_variant_part_opt_nonterminal2;
   procedure Visit_variant_part_opt_nonterminal2(
         I : access DFS;
         N : access variant_part_opt_Model.variant_part_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_variant_part_opt_nonterminal2(N);
      N.pragma_s_part1.Acceptor(I);
      N.variant_part_part.Acceptor(I);
      N.pragma_s_part2.Acceptor(I);
      I_Classwide.After_variant_part_opt_nonterminal2(N);
   end Visit_variant_part_opt_nonterminal2;
   procedure Before_comp_decl_nonterminal(
      I : access DFS;
      N : access comp_decl_Model.comp_decl_nonterminal'Class) is
   begin
      null;
   end Before_comp_decl_nonterminal;
   procedure After_comp_decl_nonterminal(
      I : access DFS;
      N : access comp_decl_Model.comp_decl_nonterminal'Class) is
   begin
      null;
   end After_comp_decl_nonterminal;
   procedure Visit_comp_decl_nonterminal(
         I : access DFS;
         N : access comp_decl_Model.comp_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_decl_nonterminal(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      N.component_subtype_def_part.Acceptor(I);
      N.init_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_comp_decl_nonterminal(N);
   end Visit_comp_decl_nonterminal;
   procedure Before_discrim_part_nonterminal(
      I : access DFS;
      N : access discrim_part_Model.discrim_part_nonterminal'Class) is
   begin
      null;
   end Before_discrim_part_nonterminal;
   procedure After_discrim_part_nonterminal(
      I : access DFS;
      N : access discrim_part_Model.discrim_part_nonterminal'Class) is
   begin
      null;
   end After_discrim_part_nonterminal;
   procedure Visit_discrim_part_nonterminal(
         I : access DFS;
         N : access discrim_part_Model.discrim_part_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrim_part_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.discrim_spec_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_discrim_part_nonterminal(N);
   end Visit_discrim_part_nonterminal;
   procedure Before_discrim_spec_s_nonterminal1(
      I : access DFS;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal1'Class) is
   begin
      null;
   end Before_discrim_spec_s_nonterminal1;
   procedure After_discrim_spec_s_nonterminal1(
      I : access DFS;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal1'Class) is
   begin
      null;
   end After_discrim_spec_s_nonterminal1;
   procedure Visit_discrim_spec_s_nonterminal1(
         I : access DFS;
         N : access discrim_spec_s_Model.discrim_spec_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrim_spec_s_nonterminal1(N);
      N.discrim_spec_part.Acceptor(I);
      I_Classwide.After_discrim_spec_s_nonterminal1(N);
   end Visit_discrim_spec_s_nonterminal1;
   procedure Before_discrim_spec_s_nonterminal2(
      I : access DFS;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal2'Class) is
   begin
      null;
   end Before_discrim_spec_s_nonterminal2;
   procedure After_discrim_spec_s_nonterminal2(
      I : access DFS;
      N : access discrim_spec_s_Model.discrim_spec_s_nonterminal2'Class) is
   begin
      null;
   end After_discrim_spec_s_nonterminal2;
   procedure Visit_discrim_spec_s_nonterminal2(
         I : access DFS;
         N : access discrim_spec_s_Model.discrim_spec_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrim_spec_s_nonterminal2(N);
      N.discrim_spec_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      N.discrim_spec_part.Acceptor(I);
      I_Classwide.After_discrim_spec_s_nonterminal2(N);
   end Visit_discrim_spec_s_nonterminal2;
   procedure Before_discrim_spec_nonterminal(
      I : access DFS;
      N : access discrim_spec_Model.discrim_spec_nonterminal'Class) is
   begin
      null;
   end Before_discrim_spec_nonterminal;
   procedure After_discrim_spec_nonterminal(
      I : access DFS;
      N : access discrim_spec_Model.discrim_spec_nonterminal'Class) is
   begin
      null;
   end After_discrim_spec_nonterminal;
   procedure Visit_discrim_spec_nonterminal(
         I : access DFS;
         N : access discrim_spec_Model.discrim_spec_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrim_spec_nonterminal(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      N.access_opt_part.Acceptor(I);
      N.mark_part.Acceptor(I);
      N.init_opt_part.Acceptor(I);
      I_Classwide.After_discrim_spec_nonterminal(N);
   end Visit_discrim_spec_nonterminal;
   procedure Before_access_opt_nonterminal1(
      I : access DFS;
      N : access access_opt_Model.access_opt_nonterminal1'Class) is
   begin
      null;
   end Before_access_opt_nonterminal1;
   procedure After_access_opt_nonterminal1(
      I : access DFS;
      N : access access_opt_Model.access_opt_nonterminal1'Class) is
   begin
      null;
   end After_access_opt_nonterminal1;
   procedure Visit_access_opt_nonterminal1(
         I : access DFS;
         N : access access_opt_Model.access_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_access_opt_nonterminal1(N);
      I_Classwide.After_access_opt_nonterminal1(N);
   end Visit_access_opt_nonterminal1;
   procedure Before_access_opt_nonterminal2(
      I : access DFS;
      N : access access_opt_Model.access_opt_nonterminal2'Class) is
   begin
      null;
   end Before_access_opt_nonterminal2;
   procedure After_access_opt_nonterminal2(
      I : access DFS;
      N : access access_opt_Model.access_opt_nonterminal2'Class) is
   begin
      null;
   end After_access_opt_nonterminal2;
   procedure Visit_access_opt_nonterminal2(
         I : access DFS;
         N : access access_opt_Model.access_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_access_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      I_Classwide.After_access_opt_nonterminal2(N);
   end Visit_access_opt_nonterminal2;
   procedure Before_variant_part_nonterminal(
      I : access DFS;
      N : access variant_part_Model.variant_part_nonterminal'Class) is
   begin
      null;
   end Before_variant_part_nonterminal;
   procedure After_variant_part_nonterminal(
      I : access DFS;
      N : access variant_part_Model.variant_part_nonterminal'Class) is
   begin
      null;
   end After_variant_part_nonterminal;
   procedure Visit_variant_part_nonterminal(
         I : access DFS;
         N : access variant_part_Model.variant_part_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_variant_part_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.CASE_part1);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.pragma_s_part.Acceptor(I);
      N.variant_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.CASE_part2);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_variant_part_nonterminal(N);
   end Visit_variant_part_nonterminal;
   procedure Before_variant_s_nonterminal1(
      I : access DFS;
      N : access variant_s_Model.variant_s_nonterminal1'Class) is
   begin
      null;
   end Before_variant_s_nonterminal1;
   procedure After_variant_s_nonterminal1(
      I : access DFS;
      N : access variant_s_Model.variant_s_nonterminal1'Class) is
   begin
      null;
   end After_variant_s_nonterminal1;
   procedure Visit_variant_s_nonterminal1(
         I : access DFS;
         N : access variant_s_Model.variant_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_variant_s_nonterminal1(N);
      N.variant_part.Acceptor(I);
      I_Classwide.After_variant_s_nonterminal1(N);
   end Visit_variant_s_nonterminal1;
   procedure Before_variant_s_nonterminal2(
      I : access DFS;
      N : access variant_s_Model.variant_s_nonterminal2'Class) is
   begin
      null;
   end Before_variant_s_nonterminal2;
   procedure After_variant_s_nonterminal2(
      I : access DFS;
      N : access variant_s_Model.variant_s_nonterminal2'Class) is
   begin
      null;
   end After_variant_s_nonterminal2;
   procedure Visit_variant_s_nonterminal2(
         I : access DFS;
         N : access variant_s_Model.variant_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_variant_s_nonterminal2(N);
      N.variant_s_part.Acceptor(I);
      N.variant_part.Acceptor(I);
      I_Classwide.After_variant_s_nonterminal2(N);
   end Visit_variant_s_nonterminal2;
   procedure Before_variant_nonterminal(
      I : access DFS;
      N : access variant_Model.variant_nonterminal'Class) is
   begin
      null;
   end Before_variant_nonterminal;
   procedure After_variant_nonterminal(
      I : access DFS;
      N : access variant_Model.variant_nonterminal'Class) is
   begin
      null;
   end After_variant_nonterminal;
   procedure Visit_variant_nonterminal(
         I : access DFS;
         N : access variant_Model.variant_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_variant_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      N.choice_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ARROW_part);
      N.pragma_s_part.Acceptor(I);
      N.comp_list_part.Acceptor(I);
      I_Classwide.After_variant_nonterminal(N);
   end Visit_variant_nonterminal;
   procedure Before_choice_s_nonterminal1(
      I : access DFS;
      N : access choice_s_Model.choice_s_nonterminal1'Class) is
   begin
      null;
   end Before_choice_s_nonterminal1;
   procedure After_choice_s_nonterminal1(
      I : access DFS;
      N : access choice_s_Model.choice_s_nonterminal1'Class) is
   begin
      null;
   end After_choice_s_nonterminal1;
   procedure Visit_choice_s_nonterminal1(
         I : access DFS;
         N : access choice_s_Model.choice_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_choice_s_nonterminal1(N);
      N.choice_part.Acceptor(I);
      I_Classwide.After_choice_s_nonterminal1(N);
   end Visit_choice_s_nonterminal1;
   procedure Before_choice_s_nonterminal2(
      I : access DFS;
      N : access choice_s_Model.choice_s_nonterminal2'Class) is
   begin
      null;
   end Before_choice_s_nonterminal2;
   procedure After_choice_s_nonterminal2(
      I : access DFS;
      N : access choice_s_Model.choice_s_nonterminal2'Class) is
   begin
      null;
   end After_choice_s_nonterminal2;
   procedure Visit_choice_s_nonterminal2(
         I : access DFS;
         N : access choice_s_Model.choice_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_choice_s_nonterminal2(N);
      N.choice_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PIPE_part);
      N.choice_part.Acceptor(I);
      I_Classwide.After_choice_s_nonterminal2(N);
   end Visit_choice_s_nonterminal2;
   procedure Before_choice_nonterminal1(
      I : access DFS;
      N : access choice_Model.choice_nonterminal1'Class) is
   begin
      null;
   end Before_choice_nonterminal1;
   procedure After_choice_nonterminal1(
      I : access DFS;
      N : access choice_Model.choice_nonterminal1'Class) is
   begin
      null;
   end After_choice_nonterminal1;
   procedure Visit_choice_nonterminal1(
         I : access DFS;
         N : access choice_Model.choice_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_choice_nonterminal1(N);
      N.expression_part.Acceptor(I);
      I_Classwide.After_choice_nonterminal1(N);
   end Visit_choice_nonterminal1;
   procedure Before_choice_nonterminal2(
      I : access DFS;
      N : access choice_Model.choice_nonterminal2'Class) is
   begin
      null;
   end Before_choice_nonterminal2;
   procedure After_choice_nonterminal2(
      I : access DFS;
      N : access choice_Model.choice_nonterminal2'Class) is
   begin
      null;
   end After_choice_nonterminal2;
   procedure Visit_choice_nonterminal2(
         I : access DFS;
         N : access choice_Model.choice_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_choice_nonterminal2(N);
      N.discrete_with_range_part.Acceptor(I);
      I_Classwide.After_choice_nonterminal2(N);
   end Visit_choice_nonterminal2;
   procedure Before_choice_nonterminal3(
      I : access DFS;
      N : access choice_Model.choice_nonterminal3'Class) is
   begin
      null;
   end Before_choice_nonterminal3;
   procedure After_choice_nonterminal3(
      I : access DFS;
      N : access choice_Model.choice_nonterminal3'Class) is
   begin
      null;
   end After_choice_nonterminal3;
   procedure Visit_choice_nonterminal3(
         I : access DFS;
         N : access choice_Model.choice_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_choice_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.OTHERS_part);
      I_Classwide.After_choice_nonterminal3(N);
   end Visit_choice_nonterminal3;
   procedure Before_discrete_with_range_nonterminal1(
      I : access DFS;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal1'Class) is
   begin
      null;
   end Before_discrete_with_range_nonterminal1;
   procedure After_discrete_with_range_nonterminal1(
      I : access DFS;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal1'Class) is
   begin
      null;
   end After_discrete_with_range_nonterminal1;
   procedure Visit_discrete_with_range_nonterminal1(
         I : access DFS;
         N : access discrete_with_range_Model.discrete_with_range_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrete_with_range_nonterminal1(N);
      N.name_part.Acceptor(I);
      N.range_constraint_part.Acceptor(I);
      I_Classwide.After_discrete_with_range_nonterminal1(N);
   end Visit_discrete_with_range_nonterminal1;
   procedure Before_discrete_with_range_nonterminal2(
      I : access DFS;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal2'Class) is
   begin
      null;
   end Before_discrete_with_range_nonterminal2;
   procedure After_discrete_with_range_nonterminal2(
      I : access DFS;
      N : access discrete_with_range_Model.discrete_with_range_nonterminal2'Class) is
   begin
      null;
   end After_discrete_with_range_nonterminal2;
   procedure Visit_discrete_with_range_nonterminal2(
         I : access DFS;
         N : access discrete_with_range_Model.discrete_with_range_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_discrete_with_range_nonterminal2(N);
      N.range_sym_part.Acceptor(I);
      I_Classwide.After_discrete_with_range_nonterminal2(N);
   end Visit_discrete_with_range_nonterminal2;
   procedure Before_access_type_nonterminal1(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal1'Class) is
   begin
      null;
   end Before_access_type_nonterminal1;
   procedure After_access_type_nonterminal1(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal1'Class) is
   begin
      null;
   end After_access_type_nonterminal1;
   procedure Visit_access_type_nonterminal1(
         I : access DFS;
         N : access access_type_Model.access_type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_access_type_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.After_access_type_nonterminal1(N);
   end Visit_access_type_nonterminal1;
   procedure Before_access_type_nonterminal2(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal2'Class) is
   begin
      null;
   end Before_access_type_nonterminal2;
   procedure After_access_type_nonterminal2(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal2'Class) is
   begin
      null;
   end After_access_type_nonterminal2;
   procedure Visit_access_type_nonterminal2(
         I : access DFS;
         N : access access_type_Model.access_type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_access_type_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      I_Classwide.Visit_Parseable_Token(N.CONSTANT_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.After_access_type_nonterminal2(N);
   end Visit_access_type_nonterminal2;
   procedure Before_access_type_nonterminal3(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal3'Class) is
   begin
      null;
   end Before_access_type_nonterminal3;
   procedure After_access_type_nonterminal3(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal3'Class) is
   begin
      null;
   end After_access_type_nonterminal3;
   procedure Visit_access_type_nonterminal3(
         I : access DFS;
         N : access access_type_Model.access_type_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_access_type_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      I_Classwide.Visit_Parseable_Token(N.all_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.After_access_type_nonterminal3(N);
   end Visit_access_type_nonterminal3;
   procedure Before_access_type_nonterminal4(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal4'Class) is
   begin
      null;
   end Before_access_type_nonterminal4;
   procedure After_access_type_nonterminal4(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal4'Class) is
   begin
      null;
   end After_access_type_nonterminal4;
   procedure Visit_access_type_nonterminal4(
         I : access DFS;
         N : access access_type_Model.access_type_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_access_type_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      N.prot_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PROCEDURE_part);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.After_access_type_nonterminal4(N);
   end Visit_access_type_nonterminal4;
   procedure Before_access_type_nonterminal5(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal5'Class) is
   begin
      null;
   end Before_access_type_nonterminal5;
   procedure After_access_type_nonterminal5(
      I : access DFS;
      N : access access_type_Model.access_type_nonterminal5'Class) is
   begin
      null;
   end After_access_type_nonterminal5;
   procedure Visit_access_type_nonterminal5(
         I : access DFS;
         N : access access_type_Model.access_type_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_access_type_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      N.prot_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.FUNCTION_part);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.RETURN_part);
      N.mark_part.Acceptor(I);
      I_Classwide.After_access_type_nonterminal5(N);
   end Visit_access_type_nonterminal5;
   procedure Before_prot_opt_nonterminal1(
      I : access DFS;
      N : access prot_opt_Model.prot_opt_nonterminal1'Class) is
   begin
      null;
   end Before_prot_opt_nonterminal1;
   procedure After_prot_opt_nonterminal1(
      I : access DFS;
      N : access prot_opt_Model.prot_opt_nonterminal1'Class) is
   begin
      null;
   end After_prot_opt_nonterminal1;
   procedure Visit_prot_opt_nonterminal1(
         I : access DFS;
         N : access prot_opt_Model.prot_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_opt_nonterminal1(N);
      I_Classwide.After_prot_opt_nonterminal1(N);
   end Visit_prot_opt_nonterminal1;
   procedure Before_prot_opt_nonterminal2(
      I : access DFS;
      N : access prot_opt_Model.prot_opt_nonterminal2'Class) is
   begin
      null;
   end Before_prot_opt_nonterminal2;
   procedure After_prot_opt_nonterminal2(
      I : access DFS;
      N : access prot_opt_Model.prot_opt_nonterminal2'Class) is
   begin
      null;
   end After_prot_opt_nonterminal2;
   procedure Visit_prot_opt_nonterminal2(
         I : access DFS;
         N : access prot_opt_Model.prot_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PROTECTED_part);
      I_Classwide.After_prot_opt_nonterminal2(N);
   end Visit_prot_opt_nonterminal2;
   procedure Before_decl_part_nonterminal1(
      I : access DFS;
      N : access decl_part_Model.decl_part_nonterminal1'Class) is
   begin
      null;
   end Before_decl_part_nonterminal1;
   procedure After_decl_part_nonterminal1(
      I : access DFS;
      N : access decl_part_Model.decl_part_nonterminal1'Class) is
   begin
      null;
   end After_decl_part_nonterminal1;
   procedure Visit_decl_part_nonterminal1(
         I : access DFS;
         N : access decl_part_Model.decl_part_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_part_nonterminal1(N);
      I_Classwide.After_decl_part_nonterminal1(N);
   end Visit_decl_part_nonterminal1;
   procedure Before_decl_part_nonterminal2(
      I : access DFS;
      N : access decl_part_Model.decl_part_nonterminal2'Class) is
   begin
      null;
   end Before_decl_part_nonterminal2;
   procedure After_decl_part_nonterminal2(
      I : access DFS;
      N : access decl_part_Model.decl_part_nonterminal2'Class) is
   begin
      null;
   end After_decl_part_nonterminal2;
   procedure Visit_decl_part_nonterminal2(
         I : access DFS;
         N : access decl_part_Model.decl_part_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_part_nonterminal2(N);
      N.decl_item_or_body_s1_part.Acceptor(I);
      I_Classwide.After_decl_part_nonterminal2(N);
   end Visit_decl_part_nonterminal2;
   procedure Before_decl_item_s_nonterminal1(
      I : access DFS;
      N : access decl_item_s_Model.decl_item_s_nonterminal1'Class) is
   begin
      null;
   end Before_decl_item_s_nonterminal1;
   procedure After_decl_item_s_nonterminal1(
      I : access DFS;
      N : access decl_item_s_Model.decl_item_s_nonterminal1'Class) is
   begin
      null;
   end After_decl_item_s_nonterminal1;
   procedure Visit_decl_item_s_nonterminal1(
         I : access DFS;
         N : access decl_item_s_Model.decl_item_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_s_nonterminal1(N);
      I_Classwide.After_decl_item_s_nonterminal1(N);
   end Visit_decl_item_s_nonterminal1;
   procedure Before_decl_item_s_nonterminal2(
      I : access DFS;
      N : access decl_item_s_Model.decl_item_s_nonterminal2'Class) is
   begin
      null;
   end Before_decl_item_s_nonterminal2;
   procedure After_decl_item_s_nonterminal2(
      I : access DFS;
      N : access decl_item_s_Model.decl_item_s_nonterminal2'Class) is
   begin
      null;
   end After_decl_item_s_nonterminal2;
   procedure Visit_decl_item_s_nonterminal2(
         I : access DFS;
         N : access decl_item_s_Model.decl_item_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_s_nonterminal2(N);
      N.decl_item_s1_part.Acceptor(I);
      I_Classwide.After_decl_item_s_nonterminal2(N);
   end Visit_decl_item_s_nonterminal2;
   procedure Before_decl_item_s1_nonterminal1(
      I : access DFS;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal1'Class) is
   begin
      null;
   end Before_decl_item_s1_nonterminal1;
   procedure After_decl_item_s1_nonterminal1(
      I : access DFS;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal1'Class) is
   begin
      null;
   end After_decl_item_s1_nonterminal1;
   procedure Visit_decl_item_s1_nonterminal1(
         I : access DFS;
         N : access decl_item_s1_Model.decl_item_s1_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_s1_nonterminal1(N);
      N.decl_item_part.Acceptor(I);
      I_Classwide.After_decl_item_s1_nonterminal1(N);
   end Visit_decl_item_s1_nonterminal1;
   procedure Before_decl_item_s1_nonterminal2(
      I : access DFS;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal2'Class) is
   begin
      null;
   end Before_decl_item_s1_nonterminal2;
   procedure After_decl_item_s1_nonterminal2(
      I : access DFS;
      N : access decl_item_s1_Model.decl_item_s1_nonterminal2'Class) is
   begin
      null;
   end After_decl_item_s1_nonterminal2;
   procedure Visit_decl_item_s1_nonterminal2(
         I : access DFS;
         N : access decl_item_s1_Model.decl_item_s1_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_s1_nonterminal2(N);
      N.decl_item_s1_part.Acceptor(I);
      N.decl_item_part.Acceptor(I);
      I_Classwide.After_decl_item_s1_nonterminal2(N);
   end Visit_decl_item_s1_nonterminal2;
   procedure Before_decl_item_nonterminal1(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal1'Class) is
   begin
      null;
   end Before_decl_item_nonterminal1;
   procedure After_decl_item_nonterminal1(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal1'Class) is
   begin
      null;
   end After_decl_item_nonterminal1;
   procedure Visit_decl_item_nonterminal1(
         I : access DFS;
         N : access decl_item_Model.decl_item_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_nonterminal1(N);
      N.decl_part.Acceptor(I);
      I_Classwide.After_decl_item_nonterminal1(N);
   end Visit_decl_item_nonterminal1;
   procedure Before_decl_item_nonterminal2(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal2'Class) is
   begin
      null;
   end Before_decl_item_nonterminal2;
   procedure After_decl_item_nonterminal2(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal2'Class) is
   begin
      null;
   end After_decl_item_nonterminal2;
   procedure Visit_decl_item_nonterminal2(
         I : access DFS;
         N : access decl_item_Model.decl_item_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_nonterminal2(N);
      N.use_clause_part.Acceptor(I);
      I_Classwide.After_decl_item_nonterminal2(N);
   end Visit_decl_item_nonterminal2;
   procedure Before_decl_item_nonterminal3(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal3'Class) is
   begin
      null;
   end Before_decl_item_nonterminal3;
   procedure After_decl_item_nonterminal3(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal3'Class) is
   begin
      null;
   end After_decl_item_nonterminal3;
   procedure Visit_decl_item_nonterminal3(
         I : access DFS;
         N : access decl_item_Model.decl_item_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_nonterminal3(N);
      N.rep_spec_part.Acceptor(I);
      I_Classwide.After_decl_item_nonterminal3(N);
   end Visit_decl_item_nonterminal3;
   procedure Before_decl_item_nonterminal4(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal4'Class) is
   begin
      null;
   end Before_decl_item_nonterminal4;
   procedure After_decl_item_nonterminal4(
      I : access DFS;
      N : access decl_item_Model.decl_item_nonterminal4'Class) is
   begin
      null;
   end After_decl_item_nonterminal4;
   procedure Visit_decl_item_nonterminal4(
         I : access DFS;
         N : access decl_item_Model.decl_item_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_nonterminal4(N);
      N.pragma_sym_part.Acceptor(I);
      I_Classwide.After_decl_item_nonterminal4(N);
   end Visit_decl_item_nonterminal4;
   procedure Before_decl_item_or_body_s1_nonterminal1(
      I : access DFS;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal1'Class) is
   begin
      null;
   end Before_decl_item_or_body_s1_nonterminal1;
   procedure After_decl_item_or_body_s1_nonterminal1(
      I : access DFS;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal1'Class) is
   begin
      null;
   end After_decl_item_or_body_s1_nonterminal1;
   procedure Visit_decl_item_or_body_s1_nonterminal1(
         I : access DFS;
         N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_or_body_s1_nonterminal1(N);
      N.decl_item_or_body_part.Acceptor(I);
      I_Classwide.After_decl_item_or_body_s1_nonterminal1(N);
   end Visit_decl_item_or_body_s1_nonterminal1;
   procedure Before_decl_item_or_body_s1_nonterminal2(
      I : access DFS;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal2'Class) is
   begin
      null;
   end Before_decl_item_or_body_s1_nonterminal2;
   procedure After_decl_item_or_body_s1_nonterminal2(
      I : access DFS;
      N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal2'Class) is
   begin
      null;
   end After_decl_item_or_body_s1_nonterminal2;
   procedure Visit_decl_item_or_body_s1_nonterminal2(
         I : access DFS;
         N : access decl_item_or_body_s1_Model.decl_item_or_body_s1_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_or_body_s1_nonterminal2(N);
      N.decl_item_or_body_s1_part.Acceptor(I);
      N.decl_item_or_body_part.Acceptor(I);
      I_Classwide.After_decl_item_or_body_s1_nonterminal2(N);
   end Visit_decl_item_or_body_s1_nonterminal2;
   procedure Before_decl_item_or_body_nonterminal1(
      I : access DFS;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal1'Class) is
   begin
      null;
   end Before_decl_item_or_body_nonterminal1;
   procedure After_decl_item_or_body_nonterminal1(
      I : access DFS;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal1'Class) is
   begin
      null;
   end After_decl_item_or_body_nonterminal1;
   procedure Visit_decl_item_or_body_nonterminal1(
         I : access DFS;
         N : access decl_item_or_body_Model.decl_item_or_body_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_or_body_nonterminal1(N);
      N.body_nt_part.Acceptor(I);
      I_Classwide.After_decl_item_or_body_nonterminal1(N);
   end Visit_decl_item_or_body_nonterminal1;
   procedure Before_decl_item_or_body_nonterminal2(
      I : access DFS;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal2'Class) is
   begin
      null;
   end Before_decl_item_or_body_nonterminal2;
   procedure After_decl_item_or_body_nonterminal2(
      I : access DFS;
      N : access decl_item_or_body_Model.decl_item_or_body_nonterminal2'Class) is
   begin
      null;
   end After_decl_item_or_body_nonterminal2;
   procedure Visit_decl_item_or_body_nonterminal2(
         I : access DFS;
         N : access decl_item_or_body_Model.decl_item_or_body_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_decl_item_or_body_nonterminal2(N);
      N.decl_item_part.Acceptor(I);
      I_Classwide.After_decl_item_or_body_nonterminal2(N);
   end Visit_decl_item_or_body_nonterminal2;
   procedure Before_body_nt_nonterminal1(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal1'Class) is
   begin
      null;
   end Before_body_nt_nonterminal1;
   procedure After_body_nt_nonterminal1(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal1'Class) is
   begin
      null;
   end After_body_nt_nonterminal1;
   procedure Visit_body_nt_nonterminal1(
         I : access DFS;
         N : access body_nt_Model.body_nt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_nt_nonterminal1(N);
      N.subprog_body_part.Acceptor(I);
      I_Classwide.After_body_nt_nonterminal1(N);
   end Visit_body_nt_nonterminal1;
   procedure Before_body_nt_nonterminal2(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal2'Class) is
   begin
      null;
   end Before_body_nt_nonterminal2;
   procedure After_body_nt_nonterminal2(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal2'Class) is
   begin
      null;
   end After_body_nt_nonterminal2;
   procedure Visit_body_nt_nonterminal2(
         I : access DFS;
         N : access body_nt_Model.body_nt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_nt_nonterminal2(N);
      N.pkg_body_part.Acceptor(I);
      I_Classwide.After_body_nt_nonterminal2(N);
   end Visit_body_nt_nonterminal2;
   procedure Before_body_nt_nonterminal3(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal3'Class) is
   begin
      null;
   end Before_body_nt_nonterminal3;
   procedure After_body_nt_nonterminal3(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal3'Class) is
   begin
      null;
   end After_body_nt_nonterminal3;
   procedure Visit_body_nt_nonterminal3(
         I : access DFS;
         N : access body_nt_Model.body_nt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_nt_nonterminal3(N);
      N.task_body_part.Acceptor(I);
      I_Classwide.After_body_nt_nonterminal3(N);
   end Visit_body_nt_nonterminal3;
   procedure Before_body_nt_nonterminal4(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal4'Class) is
   begin
      null;
   end Before_body_nt_nonterminal4;
   procedure After_body_nt_nonterminal4(
      I : access DFS;
      N : access body_nt_Model.body_nt_nonterminal4'Class) is
   begin
      null;
   end After_body_nt_nonterminal4;
   procedure Visit_body_nt_nonterminal4(
         I : access DFS;
         N : access body_nt_Model.body_nt_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_nt_nonterminal4(N);
      N.prot_body_part.Acceptor(I);
      I_Classwide.After_body_nt_nonterminal4(N);
   end Visit_body_nt_nonterminal4;
   procedure Before_name_nonterminal1(
      I : access DFS;
      N : access name_Model.name_nonterminal1'Class) is
   begin
      null;
   end Before_name_nonterminal1;
   procedure After_name_nonterminal1(
      I : access DFS;
      N : access name_Model.name_nonterminal1'Class) is
   begin
      null;
   end After_name_nonterminal1;
   procedure Visit_name_nonterminal1(
         I : access DFS;
         N : access name_Model.name_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_nonterminal1(N);
      N.simple_name_part.Acceptor(I);
      I_Classwide.After_name_nonterminal1(N);
   end Visit_name_nonterminal1;
   procedure Before_name_nonterminal2(
      I : access DFS;
      N : access name_Model.name_nonterminal2'Class) is
   begin
      null;
   end Before_name_nonterminal2;
   procedure After_name_nonterminal2(
      I : access DFS;
      N : access name_Model.name_nonterminal2'Class) is
   begin
      null;
   end After_name_nonterminal2;
   procedure Visit_name_nonterminal2(
         I : access DFS;
         N : access name_Model.name_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_nonterminal2(N);
      N.indexed_comp_part.Acceptor(I);
      I_Classwide.After_name_nonterminal2(N);
   end Visit_name_nonterminal2;
   procedure Before_name_nonterminal3(
      I : access DFS;
      N : access name_Model.name_nonterminal3'Class) is
   begin
      null;
   end Before_name_nonterminal3;
   procedure After_name_nonterminal3(
      I : access DFS;
      N : access name_Model.name_nonterminal3'Class) is
   begin
      null;
   end After_name_nonterminal3;
   procedure Visit_name_nonterminal3(
         I : access DFS;
         N : access name_Model.name_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_nonterminal3(N);
      N.selected_comp_part.Acceptor(I);
      I_Classwide.After_name_nonterminal3(N);
   end Visit_name_nonterminal3;
   procedure Before_name_nonterminal4(
      I : access DFS;
      N : access name_Model.name_nonterminal4'Class) is
   begin
      null;
   end Before_name_nonterminal4;
   procedure After_name_nonterminal4(
      I : access DFS;
      N : access name_Model.name_nonterminal4'Class) is
   begin
      null;
   end After_name_nonterminal4;
   procedure Visit_name_nonterminal4(
         I : access DFS;
         N : access name_Model.name_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_nonterminal4(N);
      N.attribute_part.Acceptor(I);
      I_Classwide.After_name_nonterminal4(N);
   end Visit_name_nonterminal4;
   procedure Before_name_nonterminal5(
      I : access DFS;
      N : access name_Model.name_nonterminal5'Class) is
   begin
      null;
   end Before_name_nonterminal5;
   procedure After_name_nonterminal5(
      I : access DFS;
      N : access name_Model.name_nonterminal5'Class) is
   begin
      null;
   end After_name_nonterminal5;
   procedure Visit_name_nonterminal5(
         I : access DFS;
         N : access name_Model.name_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_nonterminal5(N);
      N.operator_symbol_part.Acceptor(I);
      I_Classwide.After_name_nonterminal5(N);
   end Visit_name_nonterminal5;
   procedure Before_mark_nonterminal1(
      I : access DFS;
      N : access mark_Model.mark_nonterminal1'Class) is
   begin
      null;
   end Before_mark_nonterminal1;
   procedure After_mark_nonterminal1(
      I : access DFS;
      N : access mark_Model.mark_nonterminal1'Class) is
   begin
      null;
   end After_mark_nonterminal1;
   procedure Visit_mark_nonterminal1(
         I : access DFS;
         N : access mark_Model.mark_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mark_nonterminal1(N);
      N.simple_name_part.Acceptor(I);
      I_Classwide.After_mark_nonterminal1(N);
   end Visit_mark_nonterminal1;
   procedure Before_mark_nonterminal2(
      I : access DFS;
      N : access mark_Model.mark_nonterminal2'Class) is
   begin
      null;
   end Before_mark_nonterminal2;
   procedure After_mark_nonterminal2(
      I : access DFS;
      N : access mark_Model.mark_nonterminal2'Class) is
   begin
      null;
   end After_mark_nonterminal2;
   procedure Visit_mark_nonterminal2(
         I : access DFS;
         N : access mark_Model.mark_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mark_nonterminal2(N);
      N.mark_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.TICK_part);
      N.attribute_id_part.Acceptor(I);
      I_Classwide.After_mark_nonterminal2(N);
   end Visit_mark_nonterminal2;
   procedure Before_mark_nonterminal3(
      I : access DFS;
      N : access mark_Model.mark_nonterminal3'Class) is
   begin
      null;
   end Before_mark_nonterminal3;
   procedure After_mark_nonterminal3(
      I : access DFS;
      N : access mark_Model.mark_nonterminal3'Class) is
   begin
      null;
   end After_mark_nonterminal3;
   procedure Visit_mark_nonterminal3(
         I : access DFS;
         N : access mark_Model.mark_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mark_nonterminal3(N);
      N.mark_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOT_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.After_mark_nonterminal3(N);
   end Visit_mark_nonterminal3;
   procedure Before_simple_name_nonterminal(
      I : access DFS;
      N : access simple_name_Model.simple_name_nonterminal'Class) is
   begin
      null;
   end Before_simple_name_nonterminal;
   procedure After_simple_name_nonterminal(
      I : access DFS;
      N : access simple_name_Model.simple_name_nonterminal'Class) is
   begin
      null;
   end After_simple_name_nonterminal;
   procedure Visit_simple_name_nonterminal(
         I : access DFS;
         N : access simple_name_Model.simple_name_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_name_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.After_simple_name_nonterminal(N);
   end Visit_simple_name_nonterminal;
   procedure Before_compound_name_nonterminal1(
      I : access DFS;
      N : access compound_name_Model.compound_name_nonterminal1'Class) is
   begin
      null;
   end Before_compound_name_nonterminal1;
   procedure After_compound_name_nonterminal1(
      I : access DFS;
      N : access compound_name_Model.compound_name_nonterminal1'Class) is
   begin
      null;
   end After_compound_name_nonterminal1;
   procedure Visit_compound_name_nonterminal1(
         I : access DFS;
         N : access compound_name_Model.compound_name_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_name_nonterminal1(N);
      N.simple_name_part.Acceptor(I);
      I_Classwide.After_compound_name_nonterminal1(N);
   end Visit_compound_name_nonterminal1;
   procedure Before_compound_name_nonterminal2(
      I : access DFS;
      N : access compound_name_Model.compound_name_nonterminal2'Class) is
   begin
      null;
   end Before_compound_name_nonterminal2;
   procedure After_compound_name_nonterminal2(
      I : access DFS;
      N : access compound_name_Model.compound_name_nonterminal2'Class) is
   begin
      null;
   end After_compound_name_nonterminal2;
   procedure Visit_compound_name_nonterminal2(
         I : access DFS;
         N : access compound_name_Model.compound_name_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_name_nonterminal2(N);
      N.compound_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOT_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.After_compound_name_nonterminal2(N);
   end Visit_compound_name_nonterminal2;
   procedure Before_c_name_list_nonterminal1(
      I : access DFS;
      N : access c_name_list_Model.c_name_list_nonterminal1'Class) is
   begin
      null;
   end Before_c_name_list_nonterminal1;
   procedure After_c_name_list_nonterminal1(
      I : access DFS;
      N : access c_name_list_Model.c_name_list_nonterminal1'Class) is
   begin
      null;
   end After_c_name_list_nonterminal1;
   procedure Visit_c_name_list_nonterminal1(
         I : access DFS;
         N : access c_name_list_Model.c_name_list_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_c_name_list_nonterminal1(N);
      N.compound_name_part.Acceptor(I);
      I_Classwide.After_c_name_list_nonterminal1(N);
   end Visit_c_name_list_nonterminal1;
   procedure Before_c_name_list_nonterminal2(
      I : access DFS;
      N : access c_name_list_Model.c_name_list_nonterminal2'Class) is
   begin
      null;
   end Before_c_name_list_nonterminal2;
   procedure After_c_name_list_nonterminal2(
      I : access DFS;
      N : access c_name_list_Model.c_name_list_nonterminal2'Class) is
   begin
      null;
   end After_c_name_list_nonterminal2;
   procedure Visit_c_name_list_nonterminal2(
         I : access DFS;
         N : access c_name_list_Model.c_name_list_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_c_name_list_nonterminal2(N);
      N.c_name_list_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.compound_name_part.Acceptor(I);
      I_Classwide.After_c_name_list_nonterminal2(N);
   end Visit_c_name_list_nonterminal2;
   procedure Before_used_char_nonterminal(
      I : access DFS;
      N : access used_char_Model.used_char_nonterminal'Class) is
   begin
      null;
   end Before_used_char_nonterminal;
   procedure After_used_char_nonterminal(
      I : access DFS;
      N : access used_char_Model.used_char_nonterminal'Class) is
   begin
      null;
   end After_used_char_nonterminal;
   procedure Visit_used_char_nonterminal(
         I : access DFS;
         N : access used_char_Model.used_char_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_used_char_nonterminal(N);
      N.char_lit_part.Acceptor(I);
      I_Classwide.After_used_char_nonterminal(N);
   end Visit_used_char_nonterminal;
   procedure Before_operator_symbol_nonterminal(
      I : access DFS;
      N : access operator_symbol_Model.operator_symbol_nonterminal'Class) is
   begin
      null;
   end Before_operator_symbol_nonterminal;
   procedure After_operator_symbol_nonterminal(
      I : access DFS;
      N : access operator_symbol_Model.operator_symbol_nonterminal'Class) is
   begin
      null;
   end After_operator_symbol_nonterminal;
   procedure Visit_operator_symbol_nonterminal(
         I : access DFS;
         N : access operator_symbol_Model.operator_symbol_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_operator_symbol_nonterminal(N);
      N.char_string_part.Acceptor(I);
      I_Classwide.After_operator_symbol_nonterminal(N);
   end Visit_operator_symbol_nonterminal;
   procedure Before_indexed_comp_nonterminal(
      I : access DFS;
      N : access indexed_comp_Model.indexed_comp_nonterminal'Class) is
   begin
      null;
   end Before_indexed_comp_nonterminal;
   procedure After_indexed_comp_nonterminal(
      I : access DFS;
      N : access indexed_comp_Model.indexed_comp_nonterminal'Class) is
   begin
      null;
   end After_indexed_comp_nonterminal;
   procedure Visit_indexed_comp_nonterminal(
         I : access DFS;
         N : access indexed_comp_Model.indexed_comp_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_indexed_comp_nonterminal(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.value_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_indexed_comp_nonterminal(N);
   end Visit_indexed_comp_nonterminal;
   procedure Before_value_s_nonterminal1(
      I : access DFS;
      N : access value_s_Model.value_s_nonterminal1'Class) is
   begin
      null;
   end Before_value_s_nonterminal1;
   procedure After_value_s_nonterminal1(
      I : access DFS;
      N : access value_s_Model.value_s_nonterminal1'Class) is
   begin
      null;
   end After_value_s_nonterminal1;
   procedure Visit_value_s_nonterminal1(
         I : access DFS;
         N : access value_s_Model.value_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_value_s_nonterminal1(N);
      N.value_part.Acceptor(I);
      I_Classwide.After_value_s_nonterminal1(N);
   end Visit_value_s_nonterminal1;
   procedure Before_value_s_nonterminal2(
      I : access DFS;
      N : access value_s_Model.value_s_nonterminal2'Class) is
   begin
      null;
   end Before_value_s_nonterminal2;
   procedure After_value_s_nonterminal2(
      I : access DFS;
      N : access value_s_Model.value_s_nonterminal2'Class) is
   begin
      null;
   end After_value_s_nonterminal2;
   procedure Visit_value_s_nonterminal2(
         I : access DFS;
         N : access value_s_Model.value_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_value_s_nonterminal2(N);
      N.value_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.value_part.Acceptor(I);
      I_Classwide.After_value_s_nonterminal2(N);
   end Visit_value_s_nonterminal2;
   procedure Before_value_nonterminal1(
      I : access DFS;
      N : access value_Model.value_nonterminal1'Class) is
   begin
      null;
   end Before_value_nonterminal1;
   procedure After_value_nonterminal1(
      I : access DFS;
      N : access value_Model.value_nonterminal1'Class) is
   begin
      null;
   end After_value_nonterminal1;
   procedure Visit_value_nonterminal1(
         I : access DFS;
         N : access value_Model.value_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_value_nonterminal1(N);
      N.expression_part.Acceptor(I);
      I_Classwide.After_value_nonterminal1(N);
   end Visit_value_nonterminal1;
   procedure Before_value_nonterminal2(
      I : access DFS;
      N : access value_Model.value_nonterminal2'Class) is
   begin
      null;
   end Before_value_nonterminal2;
   procedure After_value_nonterminal2(
      I : access DFS;
      N : access value_Model.value_nonterminal2'Class) is
   begin
      null;
   end After_value_nonterminal2;
   procedure Visit_value_nonterminal2(
         I : access DFS;
         N : access value_Model.value_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_value_nonterminal2(N);
      N.comp_assoc_part.Acceptor(I);
      I_Classwide.After_value_nonterminal2(N);
   end Visit_value_nonterminal2;
   procedure Before_value_nonterminal3(
      I : access DFS;
      N : access value_Model.value_nonterminal3'Class) is
   begin
      null;
   end Before_value_nonterminal3;
   procedure After_value_nonterminal3(
      I : access DFS;
      N : access value_Model.value_nonterminal3'Class) is
   begin
      null;
   end After_value_nonterminal3;
   procedure Visit_value_nonterminal3(
         I : access DFS;
         N : access value_Model.value_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_value_nonterminal3(N);
      N.discrete_with_range_part.Acceptor(I);
      I_Classwide.After_value_nonterminal3(N);
   end Visit_value_nonterminal3;
   procedure Before_selected_comp_nonterminal1(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal1'Class) is
   begin
      null;
   end Before_selected_comp_nonterminal1;
   procedure After_selected_comp_nonterminal1(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal1'Class) is
   begin
      null;
   end After_selected_comp_nonterminal1;
   procedure Visit_selected_comp_nonterminal1(
         I : access DFS;
         N : access selected_comp_Model.selected_comp_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_selected_comp_nonterminal1(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOT_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.After_selected_comp_nonterminal1(N);
   end Visit_selected_comp_nonterminal1;
   procedure Before_selected_comp_nonterminal2(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal2'Class) is
   begin
      null;
   end Before_selected_comp_nonterminal2;
   procedure After_selected_comp_nonterminal2(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal2'Class) is
   begin
      null;
   end After_selected_comp_nonterminal2;
   procedure Visit_selected_comp_nonterminal2(
         I : access DFS;
         N : access selected_comp_Model.selected_comp_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_selected_comp_nonterminal2(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOT_part);
      N.used_char_part.Acceptor(I);
      I_Classwide.After_selected_comp_nonterminal2(N);
   end Visit_selected_comp_nonterminal2;
   procedure Before_selected_comp_nonterminal3(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal3'Class) is
   begin
      null;
   end Before_selected_comp_nonterminal3;
   procedure After_selected_comp_nonterminal3(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal3'Class) is
   begin
      null;
   end After_selected_comp_nonterminal3;
   procedure Visit_selected_comp_nonterminal3(
         I : access DFS;
         N : access selected_comp_Model.selected_comp_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_selected_comp_nonterminal3(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOT_part);
      N.operator_symbol_part.Acceptor(I);
      I_Classwide.After_selected_comp_nonterminal3(N);
   end Visit_selected_comp_nonterminal3;
   procedure Before_selected_comp_nonterminal4(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal4'Class) is
   begin
      null;
   end Before_selected_comp_nonterminal4;
   procedure After_selected_comp_nonterminal4(
      I : access DFS;
      N : access selected_comp_Model.selected_comp_nonterminal4'Class) is
   begin
      null;
   end After_selected_comp_nonterminal4;
   procedure Visit_selected_comp_nonterminal4(
         I : access DFS;
         N : access selected_comp_Model.selected_comp_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_selected_comp_nonterminal4(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DOT_part);
      I_Classwide.Visit_Parseable_Token(N.all_part);
      I_Classwide.After_selected_comp_nonterminal4(N);
   end Visit_selected_comp_nonterminal4;
   procedure Before_attribute_nonterminal(
      I : access DFS;
      N : access attribute_Model.attribute_nonterminal'Class) is
   begin
      null;
   end Before_attribute_nonterminal;
   procedure After_attribute_nonterminal(
      I : access DFS;
      N : access attribute_Model.attribute_nonterminal'Class) is
   begin
      null;
   end After_attribute_nonterminal;
   procedure Visit_attribute_nonterminal(
         I : access DFS;
         N : access attribute_Model.attribute_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_attribute_nonterminal(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.TICK_part);
      N.attribute_id_part.Acceptor(I);
      I_Classwide.After_attribute_nonterminal(N);
   end Visit_attribute_nonterminal;
   procedure Before_attribute_id_nonterminal1(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal1'Class) is
   begin
      null;
   end Before_attribute_id_nonterminal1;
   procedure After_attribute_id_nonterminal1(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal1'Class) is
   begin
      null;
   end After_attribute_id_nonterminal1;
   procedure Visit_attribute_id_nonterminal1(
         I : access DFS;
         N : access attribute_id_Model.attribute_id_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_attribute_id_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.After_attribute_id_nonterminal1(N);
   end Visit_attribute_id_nonterminal1;
   procedure Before_attribute_id_nonterminal2(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal2'Class) is
   begin
      null;
   end Before_attribute_id_nonterminal2;
   procedure After_attribute_id_nonterminal2(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal2'Class) is
   begin
      null;
   end After_attribute_id_nonterminal2;
   procedure Visit_attribute_id_nonterminal2(
         I : access DFS;
         N : access attribute_id_Model.attribute_id_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_attribute_id_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.DIGITS_part);
      I_Classwide.After_attribute_id_nonterminal2(N);
   end Visit_attribute_id_nonterminal2;
   procedure Before_attribute_id_nonterminal3(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal3'Class) is
   begin
      null;
   end Before_attribute_id_nonterminal3;
   procedure After_attribute_id_nonterminal3(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal3'Class) is
   begin
      null;
   end After_attribute_id_nonterminal3;
   procedure Visit_attribute_id_nonterminal3(
         I : access DFS;
         N : access attribute_id_Model.attribute_id_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_attribute_id_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.DELTA_part);
      I_Classwide.After_attribute_id_nonterminal3(N);
   end Visit_attribute_id_nonterminal3;
   procedure Before_attribute_id_nonterminal4(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal4'Class) is
   begin
      null;
   end Before_attribute_id_nonterminal4;
   procedure After_attribute_id_nonterminal4(
      I : access DFS;
      N : access attribute_id_Model.attribute_id_nonterminal4'Class) is
   begin
      null;
   end After_attribute_id_nonterminal4;
   procedure Visit_attribute_id_nonterminal4(
         I : access DFS;
         N : access attribute_id_Model.attribute_id_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_attribute_id_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      I_Classwide.After_attribute_id_nonterminal4(N);
   end Visit_attribute_id_nonterminal4;
   procedure Before_literal_nonterminal1(
      I : access DFS;
      N : access literal_Model.literal_nonterminal1'Class) is
   begin
      null;
   end Before_literal_nonterminal1;
   procedure After_literal_nonterminal1(
      I : access DFS;
      N : access literal_Model.literal_nonterminal1'Class) is
   begin
      null;
   end After_literal_nonterminal1;
   procedure Visit_literal_nonterminal1(
         I : access DFS;
         N : access literal_Model.literal_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_literal_nonterminal1(N);
      N.numeric_lit_part.Acceptor(I);
      I_Classwide.After_literal_nonterminal1(N);
   end Visit_literal_nonterminal1;
   procedure Before_literal_nonterminal2(
      I : access DFS;
      N : access literal_Model.literal_nonterminal2'Class) is
   begin
      null;
   end Before_literal_nonterminal2;
   procedure After_literal_nonterminal2(
      I : access DFS;
      N : access literal_Model.literal_nonterminal2'Class) is
   begin
      null;
   end After_literal_nonterminal2;
   procedure Visit_literal_nonterminal2(
         I : access DFS;
         N : access literal_Model.literal_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_literal_nonterminal2(N);
      N.used_char_part.Acceptor(I);
      I_Classwide.After_literal_nonterminal2(N);
   end Visit_literal_nonterminal2;
   procedure Before_literal_nonterminal3(
      I : access DFS;
      N : access literal_Model.literal_nonterminal3'Class) is
   begin
      null;
   end Before_literal_nonterminal3;
   procedure After_literal_nonterminal3(
      I : access DFS;
      N : access literal_Model.literal_nonterminal3'Class) is
   begin
      null;
   end After_literal_nonterminal3;
   procedure Visit_literal_nonterminal3(
         I : access DFS;
         N : access literal_Model.literal_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_literal_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.NULL_part);
      I_Classwide.After_literal_nonterminal3(N);
   end Visit_literal_nonterminal3;
   procedure Before_aggregate_nonterminal1(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal1'Class) is
   begin
      null;
   end Before_aggregate_nonterminal1;
   procedure After_aggregate_nonterminal1(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal1'Class) is
   begin
      null;
   end After_aggregate_nonterminal1;
   procedure Visit_aggregate_nonterminal1(
         I : access DFS;
         N : access aggregate_Model.aggregate_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_aggregate_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.comp_assoc_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_aggregate_nonterminal1(N);
   end Visit_aggregate_nonterminal1;
   procedure Before_aggregate_nonterminal2(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal2'Class) is
   begin
      null;
   end Before_aggregate_nonterminal2;
   procedure After_aggregate_nonterminal2(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal2'Class) is
   begin
      null;
   end After_aggregate_nonterminal2;
   procedure Visit_aggregate_nonterminal2(
         I : access DFS;
         N : access aggregate_Model.aggregate_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_aggregate_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.value_s_2_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_aggregate_nonterminal2(N);
   end Visit_aggregate_nonterminal2;
   procedure Before_aggregate_nonterminal3(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal3'Class) is
   begin
      null;
   end Before_aggregate_nonterminal3;
   procedure After_aggregate_nonterminal3(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal3'Class) is
   begin
      null;
   end After_aggregate_nonterminal3;
   procedure Visit_aggregate_nonterminal3(
         I : access DFS;
         N : access aggregate_Model.aggregate_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_aggregate_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      N.value_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_aggregate_nonterminal3(N);
   end Visit_aggregate_nonterminal3;
   procedure Before_aggregate_nonterminal4(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal4'Class) is
   begin
      null;
   end Before_aggregate_nonterminal4;
   procedure After_aggregate_nonterminal4(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal4'Class) is
   begin
      null;
   end After_aggregate_nonterminal4;
   procedure Visit_aggregate_nonterminal4(
         I : access DFS;
         N : access aggregate_Model.aggregate_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_aggregate_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.NULL_part);
      I_Classwide.Visit_Parseable_Token(N.RECORD_part);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_aggregate_nonterminal4(N);
   end Visit_aggregate_nonterminal4;
   procedure Before_aggregate_nonterminal5(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal5'Class) is
   begin
      null;
   end Before_aggregate_nonterminal5;
   procedure After_aggregate_nonterminal5(
      I : access DFS;
      N : access aggregate_Model.aggregate_nonterminal5'Class) is
   begin
      null;
   end After_aggregate_nonterminal5;
   procedure Visit_aggregate_nonterminal5(
         I : access DFS;
         N : access aggregate_Model.aggregate_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_aggregate_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.NULL_part);
      I_Classwide.Visit_Parseable_Token(N.RECORD_part);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_aggregate_nonterminal5(N);
   end Visit_aggregate_nonterminal5;
   procedure Before_value_s_2_nonterminal1(
      I : access DFS;
      N : access value_s_2_Model.value_s_2_nonterminal1'Class) is
   begin
      null;
   end Before_value_s_2_nonterminal1;
   procedure After_value_s_2_nonterminal1(
      I : access DFS;
      N : access value_s_2_Model.value_s_2_nonterminal1'Class) is
   begin
      null;
   end After_value_s_2_nonterminal1;
   procedure Visit_value_s_2_nonterminal1(
         I : access DFS;
         N : access value_s_2_Model.value_s_2_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_value_s_2_nonterminal1(N);
      N.value_part1.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.value_part2.Acceptor(I);
      I_Classwide.After_value_s_2_nonterminal1(N);
   end Visit_value_s_2_nonterminal1;
   procedure Before_value_s_2_nonterminal2(
      I : access DFS;
      N : access value_s_2_Model.value_s_2_nonterminal2'Class) is
   begin
      null;
   end Before_value_s_2_nonterminal2;
   procedure After_value_s_2_nonterminal2(
      I : access DFS;
      N : access value_s_2_Model.value_s_2_nonterminal2'Class) is
   begin
      null;
   end After_value_s_2_nonterminal2;
   procedure Visit_value_s_2_nonterminal2(
         I : access DFS;
         N : access value_s_2_Model.value_s_2_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_value_s_2_nonterminal2(N);
      N.value_s_2_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.value_part.Acceptor(I);
      I_Classwide.After_value_s_2_nonterminal2(N);
   end Visit_value_s_2_nonterminal2;
   procedure Before_comp_assoc_nonterminal(
      I : access DFS;
      N : access comp_assoc_Model.comp_assoc_nonterminal'Class) is
   begin
      null;
   end Before_comp_assoc_nonterminal;
   procedure After_comp_assoc_nonterminal(
      I : access DFS;
      N : access comp_assoc_Model.comp_assoc_nonterminal'Class) is
   begin
      null;
   end After_comp_assoc_nonterminal;
   procedure Visit_comp_assoc_nonterminal(
         I : access DFS;
         N : access comp_assoc_Model.comp_assoc_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_assoc_nonterminal(N);
      N.choice_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ARROW_part);
      N.expression_part.Acceptor(I);
      I_Classwide.After_comp_assoc_nonterminal(N);
   end Visit_comp_assoc_nonterminal;
   procedure Before_expression_nonterminal1(
      I : access DFS;
      N : access expression_Model.expression_nonterminal1'Class) is
   begin
      null;
   end Before_expression_nonterminal1;
   procedure After_expression_nonterminal1(
      I : access DFS;
      N : access expression_Model.expression_nonterminal1'Class) is
   begin
      null;
   end After_expression_nonterminal1;
   procedure Visit_expression_nonterminal1(
         I : access DFS;
         N : access expression_Model.expression_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_expression_nonterminal1(N);
      N.relation_part.Acceptor(I);
      I_Classwide.After_expression_nonterminal1(N);
   end Visit_expression_nonterminal1;
   procedure Before_expression_nonterminal2(
      I : access DFS;
      N : access expression_Model.expression_nonterminal2'Class) is
   begin
      null;
   end Before_expression_nonterminal2;
   procedure After_expression_nonterminal2(
      I : access DFS;
      N : access expression_Model.expression_nonterminal2'Class) is
   begin
      null;
   end After_expression_nonterminal2;
   procedure Visit_expression_nonterminal2(
         I : access DFS;
         N : access expression_Model.expression_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_expression_nonterminal2(N);
      N.expression_part.Acceptor(I);
      N.logical_part.Acceptor(I);
      N.relation_part.Acceptor(I);
      I_Classwide.After_expression_nonterminal2(N);
   end Visit_expression_nonterminal2;
   procedure Before_expression_nonterminal3(
      I : access DFS;
      N : access expression_Model.expression_nonterminal3'Class) is
   begin
      null;
   end Before_expression_nonterminal3;
   procedure After_expression_nonterminal3(
      I : access DFS;
      N : access expression_Model.expression_nonterminal3'Class) is
   begin
      null;
   end After_expression_nonterminal3;
   procedure Visit_expression_nonterminal3(
         I : access DFS;
         N : access expression_Model.expression_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_expression_nonterminal3(N);
      N.expression_part.Acceptor(I);
      N.short_circuit_part.Acceptor(I);
      N.relation_part.Acceptor(I);
      I_Classwide.After_expression_nonterminal3(N);
   end Visit_expression_nonterminal3;
   procedure Before_logical_nonterminal1(
      I : access DFS;
      N : access logical_Model.logical_nonterminal1'Class) is
   begin
      null;
   end Before_logical_nonterminal1;
   procedure After_logical_nonterminal1(
      I : access DFS;
      N : access logical_Model.logical_nonterminal1'Class) is
   begin
      null;
   end After_logical_nonterminal1;
   procedure Visit_logical_nonterminal1(
         I : access DFS;
         N : access logical_Model.logical_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_logical_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.and_part);
      I_Classwide.After_logical_nonterminal1(N);
   end Visit_logical_nonterminal1;
   procedure Before_logical_nonterminal2(
      I : access DFS;
      N : access logical_Model.logical_nonterminal2'Class) is
   begin
      null;
   end Before_logical_nonterminal2;
   procedure After_logical_nonterminal2(
      I : access DFS;
      N : access logical_Model.logical_nonterminal2'Class) is
   begin
      null;
   end After_logical_nonterminal2;
   procedure Visit_logical_nonterminal2(
         I : access DFS;
         N : access logical_Model.logical_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_logical_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.OR_part);
      I_Classwide.After_logical_nonterminal2(N);
   end Visit_logical_nonterminal2;
   procedure Before_logical_nonterminal3(
      I : access DFS;
      N : access logical_Model.logical_nonterminal3'Class) is
   begin
      null;
   end Before_logical_nonterminal3;
   procedure After_logical_nonterminal3(
      I : access DFS;
      N : access logical_Model.logical_nonterminal3'Class) is
   begin
      null;
   end After_logical_nonterminal3;
   procedure Visit_logical_nonterminal3(
         I : access DFS;
         N : access logical_Model.logical_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_logical_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.XOR_part);
      I_Classwide.After_logical_nonterminal3(N);
   end Visit_logical_nonterminal3;
   procedure Before_short_circuit_nonterminal1(
      I : access DFS;
      N : access short_circuit_Model.short_circuit_nonterminal1'Class) is
   begin
      null;
   end Before_short_circuit_nonterminal1;
   procedure After_short_circuit_nonterminal1(
      I : access DFS;
      N : access short_circuit_Model.short_circuit_nonterminal1'Class) is
   begin
      null;
   end After_short_circuit_nonterminal1;
   procedure Visit_short_circuit_nonterminal1(
         I : access DFS;
         N : access short_circuit_Model.short_circuit_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_short_circuit_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.and_part);
      I_Classwide.Visit_Parseable_Token(N.THEN_part);
      I_Classwide.After_short_circuit_nonterminal1(N);
   end Visit_short_circuit_nonterminal1;
   procedure Before_short_circuit_nonterminal2(
      I : access DFS;
      N : access short_circuit_Model.short_circuit_nonterminal2'Class) is
   begin
      null;
   end Before_short_circuit_nonterminal2;
   procedure After_short_circuit_nonterminal2(
      I : access DFS;
      N : access short_circuit_Model.short_circuit_nonterminal2'Class) is
   begin
      null;
   end After_short_circuit_nonterminal2;
   procedure Visit_short_circuit_nonterminal2(
         I : access DFS;
         N : access short_circuit_Model.short_circuit_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_short_circuit_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.OR_part);
      I_Classwide.Visit_Parseable_Token(N.ELSE_part);
      I_Classwide.After_short_circuit_nonterminal2(N);
   end Visit_short_circuit_nonterminal2;
   procedure Before_relation_nonterminal1(
      I : access DFS;
      N : access relation_Model.relation_nonterminal1'Class) is
   begin
      null;
   end Before_relation_nonterminal1;
   procedure After_relation_nonterminal1(
      I : access DFS;
      N : access relation_Model.relation_nonterminal1'Class) is
   begin
      null;
   end After_relation_nonterminal1;
   procedure Visit_relation_nonterminal1(
         I : access DFS;
         N : access relation_Model.relation_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relation_nonterminal1(N);
      N.simple_expression_part.Acceptor(I);
      I_Classwide.After_relation_nonterminal1(N);
   end Visit_relation_nonterminal1;
   procedure Before_relation_nonterminal2(
      I : access DFS;
      N : access relation_Model.relation_nonterminal2'Class) is
   begin
      null;
   end Before_relation_nonterminal2;
   procedure After_relation_nonterminal2(
      I : access DFS;
      N : access relation_Model.relation_nonterminal2'Class) is
   begin
      null;
   end After_relation_nonterminal2;
   procedure Visit_relation_nonterminal2(
         I : access DFS;
         N : access relation_Model.relation_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relation_nonterminal2(N);
      N.simple_expression_part1.Acceptor(I);
      N.relational_part.Acceptor(I);
      N.simple_expression_part2.Acceptor(I);
      I_Classwide.After_relation_nonterminal2(N);
   end Visit_relation_nonterminal2;
   procedure Before_relation_nonterminal3(
      I : access DFS;
      N : access relation_Model.relation_nonterminal3'Class) is
   begin
      null;
   end Before_relation_nonterminal3;
   procedure After_relation_nonterminal3(
      I : access DFS;
      N : access relation_Model.relation_nonterminal3'Class) is
   begin
      null;
   end After_relation_nonterminal3;
   procedure Visit_relation_nonterminal3(
         I : access DFS;
         N : access relation_Model.relation_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relation_nonterminal3(N);
      N.simple_expression_part.Acceptor(I);
      N.membership_part.Acceptor(I);
      N.range_sym_part.Acceptor(I);
      I_Classwide.After_relation_nonterminal3(N);
   end Visit_relation_nonterminal3;
   procedure Before_relation_nonterminal4(
      I : access DFS;
      N : access relation_Model.relation_nonterminal4'Class) is
   begin
      null;
   end Before_relation_nonterminal4;
   procedure After_relation_nonterminal4(
      I : access DFS;
      N : access relation_Model.relation_nonterminal4'Class) is
   begin
      null;
   end After_relation_nonterminal4;
   procedure Visit_relation_nonterminal4(
         I : access DFS;
         N : access relation_Model.relation_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relation_nonterminal4(N);
      N.simple_expression_part.Acceptor(I);
      N.membership_part.Acceptor(I);
      N.name_part.Acceptor(I);
      I_Classwide.After_relation_nonterminal4(N);
   end Visit_relation_nonterminal4;
   procedure Before_relational_nonterminal1(
      I : access DFS;
      N : access relational_Model.relational_nonterminal1'Class) is
   begin
      null;
   end Before_relational_nonterminal1;
   procedure After_relational_nonterminal1(
      I : access DFS;
      N : access relational_Model.relational_nonterminal1'Class) is
   begin
      null;
   end After_relational_nonterminal1;
   procedure Visit_relational_nonterminal1(
         I : access DFS;
         N : access relational_Model.relational_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relational_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.EQ_part);
      I_Classwide.After_relational_nonterminal1(N);
   end Visit_relational_nonterminal1;
   procedure Before_relational_nonterminal2(
      I : access DFS;
      N : access relational_Model.relational_nonterminal2'Class) is
   begin
      null;
   end Before_relational_nonterminal2;
   procedure After_relational_nonterminal2(
      I : access DFS;
      N : access relational_Model.relational_nonterminal2'Class) is
   begin
      null;
   end After_relational_nonterminal2;
   procedure Visit_relational_nonterminal2(
         I : access DFS;
         N : access relational_Model.relational_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relational_nonterminal2(N);
      N.NE_part.Acceptor(I);
      I_Classwide.After_relational_nonterminal2(N);
   end Visit_relational_nonterminal2;
   procedure Before_relational_nonterminal3(
      I : access DFS;
      N : access relational_Model.relational_nonterminal3'Class) is
   begin
      null;
   end Before_relational_nonterminal3;
   procedure After_relational_nonterminal3(
      I : access DFS;
      N : access relational_Model.relational_nonterminal3'Class) is
   begin
      null;
   end After_relational_nonterminal3;
   procedure Visit_relational_nonterminal3(
         I : access DFS;
         N : access relational_Model.relational_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relational_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.LT_part);
      I_Classwide.After_relational_nonterminal3(N);
   end Visit_relational_nonterminal3;
   procedure Before_relational_nonterminal4(
      I : access DFS;
      N : access relational_Model.relational_nonterminal4'Class) is
   begin
      null;
   end Before_relational_nonterminal4;
   procedure After_relational_nonterminal4(
      I : access DFS;
      N : access relational_Model.relational_nonterminal4'Class) is
   begin
      null;
   end After_relational_nonterminal4;
   procedure Visit_relational_nonterminal4(
         I : access DFS;
         N : access relational_Model.relational_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relational_nonterminal4(N);
      N.LT_EQ_part.Acceptor(I);
      I_Classwide.After_relational_nonterminal4(N);
   end Visit_relational_nonterminal4;
   procedure Before_relational_nonterminal5(
      I : access DFS;
      N : access relational_Model.relational_nonterminal5'Class) is
   begin
      null;
   end Before_relational_nonterminal5;
   procedure After_relational_nonterminal5(
      I : access DFS;
      N : access relational_Model.relational_nonterminal5'Class) is
   begin
      null;
   end After_relational_nonterminal5;
   procedure Visit_relational_nonterminal5(
         I : access DFS;
         N : access relational_Model.relational_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relational_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.GT_part);
      I_Classwide.After_relational_nonterminal5(N);
   end Visit_relational_nonterminal5;
   procedure Before_relational_nonterminal6(
      I : access DFS;
      N : access relational_Model.relational_nonterminal6'Class) is
   begin
      null;
   end Before_relational_nonterminal6;
   procedure After_relational_nonterminal6(
      I : access DFS;
      N : access relational_Model.relational_nonterminal6'Class) is
   begin
      null;
   end After_relational_nonterminal6;
   procedure Visit_relational_nonterminal6(
         I : access DFS;
         N : access relational_Model.relational_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_relational_nonterminal6(N);
      N.GE_part.Acceptor(I);
      I_Classwide.After_relational_nonterminal6(N);
   end Visit_relational_nonterminal6;
   procedure Before_membership_nonterminal1(
      I : access DFS;
      N : access membership_Model.membership_nonterminal1'Class) is
   begin
      null;
   end Before_membership_nonterminal1;
   procedure After_membership_nonterminal1(
      I : access DFS;
      N : access membership_Model.membership_nonterminal1'Class) is
   begin
      null;
   end After_membership_nonterminal1;
   procedure Visit_membership_nonterminal1(
         I : access DFS;
         N : access membership_Model.membership_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_membership_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.IN_part);
      I_Classwide.After_membership_nonterminal1(N);
   end Visit_membership_nonterminal1;
   procedure Before_membership_nonterminal2(
      I : access DFS;
      N : access membership_Model.membership_nonterminal2'Class) is
   begin
      null;
   end Before_membership_nonterminal2;
   procedure After_membership_nonterminal2(
      I : access DFS;
      N : access membership_Model.membership_nonterminal2'Class) is
   begin
      null;
   end After_membership_nonterminal2;
   procedure Visit_membership_nonterminal2(
         I : access DFS;
         N : access membership_Model.membership_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_membership_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.NOT_part);
      I_Classwide.Visit_Parseable_Token(N.IN_part);
      I_Classwide.After_membership_nonterminal2(N);
   end Visit_membership_nonterminal2;
   procedure Before_simple_expression_nonterminal1(
      I : access DFS;
      N : access simple_expression_Model.simple_expression_nonterminal1'Class) is
   begin
      null;
   end Before_simple_expression_nonterminal1;
   procedure After_simple_expression_nonterminal1(
      I : access DFS;
      N : access simple_expression_Model.simple_expression_nonterminal1'Class) is
   begin
      null;
   end After_simple_expression_nonterminal1;
   procedure Visit_simple_expression_nonterminal1(
         I : access DFS;
         N : access simple_expression_Model.simple_expression_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_expression_nonterminal1(N);
      N.unary_part.Acceptor(I);
      N.term_part.Acceptor(I);
      I_Classwide.After_simple_expression_nonterminal1(N);
   end Visit_simple_expression_nonterminal1;
   procedure Before_simple_expression_nonterminal2(
      I : access DFS;
      N : access simple_expression_Model.simple_expression_nonterminal2'Class) is
   begin
      null;
   end Before_simple_expression_nonterminal2;
   procedure After_simple_expression_nonterminal2(
      I : access DFS;
      N : access simple_expression_Model.simple_expression_nonterminal2'Class) is
   begin
      null;
   end After_simple_expression_nonterminal2;
   procedure Visit_simple_expression_nonterminal2(
         I : access DFS;
         N : access simple_expression_Model.simple_expression_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_expression_nonterminal2(N);
      N.term_part.Acceptor(I);
      I_Classwide.After_simple_expression_nonterminal2(N);
   end Visit_simple_expression_nonterminal2;
   procedure Before_simple_expression_nonterminal3(
      I : access DFS;
      N : access simple_expression_Model.simple_expression_nonterminal3'Class) is
   begin
      null;
   end Before_simple_expression_nonterminal3;
   procedure After_simple_expression_nonterminal3(
      I : access DFS;
      N : access simple_expression_Model.simple_expression_nonterminal3'Class) is
   begin
      null;
   end After_simple_expression_nonterminal3;
   procedure Visit_simple_expression_nonterminal3(
         I : access DFS;
         N : access simple_expression_Model.simple_expression_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_expression_nonterminal3(N);
      N.simple_expression_part.Acceptor(I);
      N.adding_part.Acceptor(I);
      N.term_part.Acceptor(I);
      I_Classwide.After_simple_expression_nonterminal3(N);
   end Visit_simple_expression_nonterminal3;
   procedure Before_unary_nonterminal1(
      I : access DFS;
      N : access unary_Model.unary_nonterminal1'Class) is
   begin
      null;
   end Before_unary_nonterminal1;
   procedure After_unary_nonterminal1(
      I : access DFS;
      N : access unary_Model.unary_nonterminal1'Class) is
   begin
      null;
   end After_unary_nonterminal1;
   procedure Visit_unary_nonterminal1(
         I : access DFS;
         N : access unary_Model.unary_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unary_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.PLUS_part);
      I_Classwide.After_unary_nonterminal1(N);
   end Visit_unary_nonterminal1;
   procedure Before_unary_nonterminal2(
      I : access DFS;
      N : access unary_Model.unary_nonterminal2'Class) is
   begin
      null;
   end Before_unary_nonterminal2;
   procedure After_unary_nonterminal2(
      I : access DFS;
      N : access unary_Model.unary_nonterminal2'Class) is
   begin
      null;
   end After_unary_nonterminal2;
   procedure Visit_unary_nonterminal2(
         I : access DFS;
         N : access unary_Model.unary_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unary_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.MINUS_part);
      I_Classwide.After_unary_nonterminal2(N);
   end Visit_unary_nonterminal2;
   procedure Before_adding_nonterminal1(
      I : access DFS;
      N : access adding_Model.adding_nonterminal1'Class) is
   begin
      null;
   end Before_adding_nonterminal1;
   procedure After_adding_nonterminal1(
      I : access DFS;
      N : access adding_Model.adding_nonterminal1'Class) is
   begin
      null;
   end After_adding_nonterminal1;
   procedure Visit_adding_nonterminal1(
         I : access DFS;
         N : access adding_Model.adding_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_adding_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.PLUS_part);
      I_Classwide.After_adding_nonterminal1(N);
   end Visit_adding_nonterminal1;
   procedure Before_adding_nonterminal2(
      I : access DFS;
      N : access adding_Model.adding_nonterminal2'Class) is
   begin
      null;
   end Before_adding_nonterminal2;
   procedure After_adding_nonterminal2(
      I : access DFS;
      N : access adding_Model.adding_nonterminal2'Class) is
   begin
      null;
   end After_adding_nonterminal2;
   procedure Visit_adding_nonterminal2(
         I : access DFS;
         N : access adding_Model.adding_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_adding_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.MINUS_part);
      I_Classwide.After_adding_nonterminal2(N);
   end Visit_adding_nonterminal2;
   procedure Before_adding_nonterminal3(
      I : access DFS;
      N : access adding_Model.adding_nonterminal3'Class) is
   begin
      null;
   end Before_adding_nonterminal3;
   procedure After_adding_nonterminal3(
      I : access DFS;
      N : access adding_Model.adding_nonterminal3'Class) is
   begin
      null;
   end After_adding_nonterminal3;
   procedure Visit_adding_nonterminal3(
         I : access DFS;
         N : access adding_Model.adding_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_adding_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.BIT_AND_part);
      I_Classwide.After_adding_nonterminal3(N);
   end Visit_adding_nonterminal3;
   procedure Before_term_nonterminal1(
      I : access DFS;
      N : access term_Model.term_nonterminal1'Class) is
   begin
      null;
   end Before_term_nonterminal1;
   procedure After_term_nonterminal1(
      I : access DFS;
      N : access term_Model.term_nonterminal1'Class) is
   begin
      null;
   end After_term_nonterminal1;
   procedure Visit_term_nonterminal1(
         I : access DFS;
         N : access term_Model.term_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_term_nonterminal1(N);
      N.factor_part.Acceptor(I);
      I_Classwide.After_term_nonterminal1(N);
   end Visit_term_nonterminal1;
   procedure Before_term_nonterminal2(
      I : access DFS;
      N : access term_Model.term_nonterminal2'Class) is
   begin
      null;
   end Before_term_nonterminal2;
   procedure After_term_nonterminal2(
      I : access DFS;
      N : access term_Model.term_nonterminal2'Class) is
   begin
      null;
   end After_term_nonterminal2;
   procedure Visit_term_nonterminal2(
         I : access DFS;
         N : access term_Model.term_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_term_nonterminal2(N);
      N.term_part.Acceptor(I);
      N.multiplying_part.Acceptor(I);
      N.factor_part.Acceptor(I);
      I_Classwide.After_term_nonterminal2(N);
   end Visit_term_nonterminal2;
   procedure Before_multiplying_nonterminal1(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal1'Class) is
   begin
      null;
   end Before_multiplying_nonterminal1;
   procedure After_multiplying_nonterminal1(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal1'Class) is
   begin
      null;
   end After_multiplying_nonterminal1;
   procedure Visit_multiplying_nonterminal1(
         I : access DFS;
         N : access multiplying_Model.multiplying_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_multiplying_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.star_part);
      I_Classwide.After_multiplying_nonterminal1(N);
   end Visit_multiplying_nonterminal1;
   procedure Before_multiplying_nonterminal2(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal2'Class) is
   begin
      null;
   end Before_multiplying_nonterminal2;
   procedure After_multiplying_nonterminal2(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal2'Class) is
   begin
      null;
   end After_multiplying_nonterminal2;
   procedure Visit_multiplying_nonterminal2(
         I : access DFS;
         N : access multiplying_Model.multiplying_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_multiplying_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.SLASH_part);
      I_Classwide.After_multiplying_nonterminal2(N);
   end Visit_multiplying_nonterminal2;
   procedure Before_multiplying_nonterminal3(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal3'Class) is
   begin
      null;
   end Before_multiplying_nonterminal3;
   procedure After_multiplying_nonterminal3(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal3'Class) is
   begin
      null;
   end After_multiplying_nonterminal3;
   procedure Visit_multiplying_nonterminal3(
         I : access DFS;
         N : access multiplying_Model.multiplying_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_multiplying_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.MOD_part);
      I_Classwide.After_multiplying_nonterminal3(N);
   end Visit_multiplying_nonterminal3;
   procedure Before_multiplying_nonterminal4(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal4'Class) is
   begin
      null;
   end Before_multiplying_nonterminal4;
   procedure After_multiplying_nonterminal4(
      I : access DFS;
      N : access multiplying_Model.multiplying_nonterminal4'Class) is
   begin
      null;
   end After_multiplying_nonterminal4;
   procedure Visit_multiplying_nonterminal4(
         I : access DFS;
         N : access multiplying_Model.multiplying_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_multiplying_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.REM_part);
      I_Classwide.After_multiplying_nonterminal4(N);
   end Visit_multiplying_nonterminal4;
   procedure Before_factor_nonterminal1(
      I : access DFS;
      N : access factor_Model.factor_nonterminal1'Class) is
   begin
      null;
   end Before_factor_nonterminal1;
   procedure After_factor_nonterminal1(
      I : access DFS;
      N : access factor_Model.factor_nonterminal1'Class) is
   begin
      null;
   end After_factor_nonterminal1;
   procedure Visit_factor_nonterminal1(
         I : access DFS;
         N : access factor_Model.factor_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_factor_nonterminal1(N);
      N.primary_part.Acceptor(I);
      I_Classwide.After_factor_nonterminal1(N);
   end Visit_factor_nonterminal1;
   procedure Before_factor_nonterminal2(
      I : access DFS;
      N : access factor_Model.factor_nonterminal2'Class) is
   begin
      null;
   end Before_factor_nonterminal2;
   procedure After_factor_nonterminal2(
      I : access DFS;
      N : access factor_Model.factor_nonterminal2'Class) is
   begin
      null;
   end After_factor_nonterminal2;
   procedure Visit_factor_nonterminal2(
         I : access DFS;
         N : access factor_Model.factor_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_factor_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.NOT_part);
      N.primary_part.Acceptor(I);
      I_Classwide.After_factor_nonterminal2(N);
   end Visit_factor_nonterminal2;
   procedure Before_factor_nonterminal3(
      I : access DFS;
      N : access factor_Model.factor_nonterminal3'Class) is
   begin
      null;
   end Before_factor_nonterminal3;
   procedure After_factor_nonterminal3(
      I : access DFS;
      N : access factor_Model.factor_nonterminal3'Class) is
   begin
      null;
   end After_factor_nonterminal3;
   procedure Visit_factor_nonterminal3(
         I : access DFS;
         N : access factor_Model.factor_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_factor_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.abs_part);
      N.primary_part.Acceptor(I);
      I_Classwide.After_factor_nonterminal3(N);
   end Visit_factor_nonterminal3;
   procedure Before_factor_nonterminal4(
      I : access DFS;
      N : access factor_Model.factor_nonterminal4'Class) is
   begin
      null;
   end Before_factor_nonterminal4;
   procedure After_factor_nonterminal4(
      I : access DFS;
      N : access factor_Model.factor_nonterminal4'Class) is
   begin
      null;
   end After_factor_nonterminal4;
   procedure Visit_factor_nonterminal4(
         I : access DFS;
         N : access factor_Model.factor_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_factor_nonterminal4(N);
      N.primary_part1.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.EXPONENT_part);
      N.primary_part2.Acceptor(I);
      I_Classwide.After_factor_nonterminal4(N);
   end Visit_factor_nonterminal4;
   procedure Before_primary_nonterminal1(
      I : access DFS;
      N : access primary_Model.primary_nonterminal1'Class) is
   begin
      null;
   end Before_primary_nonterminal1;
   procedure After_primary_nonterminal1(
      I : access DFS;
      N : access primary_Model.primary_nonterminal1'Class) is
   begin
      null;
   end After_primary_nonterminal1;
   procedure Visit_primary_nonterminal1(
         I : access DFS;
         N : access primary_Model.primary_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_primary_nonterminal1(N);
      N.literal_part.Acceptor(I);
      I_Classwide.After_primary_nonterminal1(N);
   end Visit_primary_nonterminal1;
   procedure Before_primary_nonterminal2(
      I : access DFS;
      N : access primary_Model.primary_nonterminal2'Class) is
   begin
      null;
   end Before_primary_nonterminal2;
   procedure After_primary_nonterminal2(
      I : access DFS;
      N : access primary_Model.primary_nonterminal2'Class) is
   begin
      null;
   end After_primary_nonterminal2;
   procedure Visit_primary_nonterminal2(
         I : access DFS;
         N : access primary_Model.primary_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_primary_nonterminal2(N);
      N.name_part.Acceptor(I);
      I_Classwide.After_primary_nonterminal2(N);
   end Visit_primary_nonterminal2;
   procedure Before_primary_nonterminal3(
      I : access DFS;
      N : access primary_Model.primary_nonterminal3'Class) is
   begin
      null;
   end Before_primary_nonterminal3;
   procedure After_primary_nonterminal3(
      I : access DFS;
      N : access primary_Model.primary_nonterminal3'Class) is
   begin
      null;
   end After_primary_nonterminal3;
   procedure Visit_primary_nonterminal3(
         I : access DFS;
         N : access primary_Model.primary_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_primary_nonterminal3(N);
      N.allocator_part.Acceptor(I);
      I_Classwide.After_primary_nonterminal3(N);
   end Visit_primary_nonterminal3;
   procedure Before_primary_nonterminal4(
      I : access DFS;
      N : access primary_Model.primary_nonterminal4'Class) is
   begin
      null;
   end Before_primary_nonterminal4;
   procedure After_primary_nonterminal4(
      I : access DFS;
      N : access primary_Model.primary_nonterminal4'Class) is
   begin
      null;
   end After_primary_nonterminal4;
   procedure Visit_primary_nonterminal4(
         I : access DFS;
         N : access primary_Model.primary_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_primary_nonterminal4(N);
      N.qualified_part.Acceptor(I);
      I_Classwide.After_primary_nonterminal4(N);
   end Visit_primary_nonterminal4;
   procedure Before_primary_nonterminal5(
      I : access DFS;
      N : access primary_Model.primary_nonterminal5'Class) is
   begin
      null;
   end Before_primary_nonterminal5;
   procedure After_primary_nonterminal5(
      I : access DFS;
      N : access primary_Model.primary_nonterminal5'Class) is
   begin
      null;
   end After_primary_nonterminal5;
   procedure Visit_primary_nonterminal5(
         I : access DFS;
         N : access primary_Model.primary_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_primary_nonterminal5(N);
      N.parenthesized_primary_part.Acceptor(I);
      I_Classwide.After_primary_nonterminal5(N);
   end Visit_primary_nonterminal5;
   procedure Before_parenthesized_primary_nonterminal1(
      I : access DFS;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal1'Class) is
   begin
      null;
   end Before_parenthesized_primary_nonterminal1;
   procedure After_parenthesized_primary_nonterminal1(
      I : access DFS;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal1'Class) is
   begin
      null;
   end After_parenthesized_primary_nonterminal1;
   procedure Visit_parenthesized_primary_nonterminal1(
         I : access DFS;
         N : access parenthesized_primary_Model.parenthesized_primary_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_parenthesized_primary_nonterminal1(N);
      N.aggregate_part.Acceptor(I);
      I_Classwide.After_parenthesized_primary_nonterminal1(N);
   end Visit_parenthesized_primary_nonterminal1;
   procedure Before_parenthesized_primary_nonterminal2(
      I : access DFS;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal2'Class) is
   begin
      null;
   end Before_parenthesized_primary_nonterminal2;
   procedure After_parenthesized_primary_nonterminal2(
      I : access DFS;
      N : access parenthesized_primary_Model.parenthesized_primary_nonterminal2'Class) is
   begin
      null;
   end After_parenthesized_primary_nonterminal2;
   procedure Visit_parenthesized_primary_nonterminal2(
         I : access DFS;
         N : access parenthesized_primary_Model.parenthesized_primary_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_parenthesized_primary_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_parenthesized_primary_nonterminal2(N);
   end Visit_parenthesized_primary_nonterminal2;
   procedure Before_qualified_nonterminal(
      I : access DFS;
      N : access qualified_Model.qualified_nonterminal'Class) is
   begin
      null;
   end Before_qualified_nonterminal;
   procedure After_qualified_nonterminal(
      I : access DFS;
      N : access qualified_Model.qualified_nonterminal'Class) is
   begin
      null;
   end After_qualified_nonterminal;
   procedure Visit_qualified_nonterminal(
         I : access DFS;
         N : access qualified_Model.qualified_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_qualified_nonterminal(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.TICK_part);
      N.parenthesized_primary_part.Acceptor(I);
      I_Classwide.After_qualified_nonterminal(N);
   end Visit_qualified_nonterminal;
   procedure Before_allocator_nonterminal1(
      I : access DFS;
      N : access allocator_Model.allocator_nonterminal1'Class) is
   begin
      null;
   end Before_allocator_nonterminal1;
   procedure After_allocator_nonterminal1(
      I : access DFS;
      N : access allocator_Model.allocator_nonterminal1'Class) is
   begin
      null;
   end After_allocator_nonterminal1;
   procedure Visit_allocator_nonterminal1(
         I : access DFS;
         N : access allocator_Model.allocator_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_allocator_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.name_part.Acceptor(I);
      I_Classwide.After_allocator_nonterminal1(N);
   end Visit_allocator_nonterminal1;
   procedure Before_allocator_nonterminal2(
      I : access DFS;
      N : access allocator_Model.allocator_nonterminal2'Class) is
   begin
      null;
   end Before_allocator_nonterminal2;
   procedure After_allocator_nonterminal2(
      I : access DFS;
      N : access allocator_Model.allocator_nonterminal2'Class) is
   begin
      null;
   end After_allocator_nonterminal2;
   procedure Visit_allocator_nonterminal2(
         I : access DFS;
         N : access allocator_Model.allocator_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_allocator_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.qualified_part.Acceptor(I);
      I_Classwide.After_allocator_nonterminal2(N);
   end Visit_allocator_nonterminal2;
   procedure Before_statement_s_nonterminal1(
      I : access DFS;
      N : access statement_s_Model.statement_s_nonterminal1'Class) is
   begin
      null;
   end Before_statement_s_nonterminal1;
   procedure After_statement_s_nonterminal1(
      I : access DFS;
      N : access statement_s_Model.statement_s_nonterminal1'Class) is
   begin
      null;
   end After_statement_s_nonterminal1;
   procedure Visit_statement_s_nonterminal1(
         I : access DFS;
         N : access statement_s_Model.statement_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_statement_s_nonterminal1(N);
      N.statement_part.Acceptor(I);
      I_Classwide.After_statement_s_nonterminal1(N);
   end Visit_statement_s_nonterminal1;
   procedure Before_statement_s_nonterminal2(
      I : access DFS;
      N : access statement_s_Model.statement_s_nonterminal2'Class) is
   begin
      null;
   end Before_statement_s_nonterminal2;
   procedure After_statement_s_nonterminal2(
      I : access DFS;
      N : access statement_s_Model.statement_s_nonterminal2'Class) is
   begin
      null;
   end After_statement_s_nonterminal2;
   procedure Visit_statement_s_nonterminal2(
         I : access DFS;
         N : access statement_s_Model.statement_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_statement_s_nonterminal2(N);
      N.statement_s_part.Acceptor(I);
      N.statement_part.Acceptor(I);
      I_Classwide.After_statement_s_nonterminal2(N);
   end Visit_statement_s_nonterminal2;
   procedure Before_statement_nonterminal1(
      I : access DFS;
      N : access statement_Model.statement_nonterminal1'Class) is
   begin
      null;
   end Before_statement_nonterminal1;
   procedure After_statement_nonterminal1(
      I : access DFS;
      N : access statement_Model.statement_nonterminal1'Class) is
   begin
      null;
   end After_statement_nonterminal1;
   procedure Visit_statement_nonterminal1(
         I : access DFS;
         N : access statement_Model.statement_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_statement_nonterminal1(N);
      N.unlabeled_part.Acceptor(I);
      I_Classwide.After_statement_nonterminal1(N);
   end Visit_statement_nonterminal1;
   procedure Before_statement_nonterminal2(
      I : access DFS;
      N : access statement_Model.statement_nonterminal2'Class) is
   begin
      null;
   end Before_statement_nonterminal2;
   procedure After_statement_nonterminal2(
      I : access DFS;
      N : access statement_Model.statement_nonterminal2'Class) is
   begin
      null;
   end After_statement_nonterminal2;
   procedure Visit_statement_nonterminal2(
         I : access DFS;
         N : access statement_Model.statement_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_statement_nonterminal2(N);
      N.label_part.Acceptor(I);
      N.statement_part.Acceptor(I);
      I_Classwide.After_statement_nonterminal2(N);
   end Visit_statement_nonterminal2;
   procedure Before_unlabeled_nonterminal1(
      I : access DFS;
      N : access unlabeled_Model.unlabeled_nonterminal1'Class) is
   begin
      null;
   end Before_unlabeled_nonterminal1;
   procedure After_unlabeled_nonterminal1(
      I : access DFS;
      N : access unlabeled_Model.unlabeled_nonterminal1'Class) is
   begin
      null;
   end After_unlabeled_nonterminal1;
   procedure Visit_unlabeled_nonterminal1(
         I : access DFS;
         N : access unlabeled_Model.unlabeled_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unlabeled_nonterminal1(N);
      N.simple_stmt_part.Acceptor(I);
      I_Classwide.After_unlabeled_nonterminal1(N);
   end Visit_unlabeled_nonterminal1;
   procedure Before_unlabeled_nonterminal2(
      I : access DFS;
      N : access unlabeled_Model.unlabeled_nonterminal2'Class) is
   begin
      null;
   end Before_unlabeled_nonterminal2;
   procedure After_unlabeled_nonterminal2(
      I : access DFS;
      N : access unlabeled_Model.unlabeled_nonterminal2'Class) is
   begin
      null;
   end After_unlabeled_nonterminal2;
   procedure Visit_unlabeled_nonterminal2(
         I : access DFS;
         N : access unlabeled_Model.unlabeled_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unlabeled_nonterminal2(N);
      N.compound_stmt_part.Acceptor(I);
      I_Classwide.After_unlabeled_nonterminal2(N);
   end Visit_unlabeled_nonterminal2;
   procedure Before_unlabeled_nonterminal3(
      I : access DFS;
      N : access unlabeled_Model.unlabeled_nonterminal3'Class) is
   begin
      null;
   end Before_unlabeled_nonterminal3;
   procedure After_unlabeled_nonterminal3(
      I : access DFS;
      N : access unlabeled_Model.unlabeled_nonterminal3'Class) is
   begin
      null;
   end After_unlabeled_nonterminal3;
   procedure Visit_unlabeled_nonterminal3(
         I : access DFS;
         N : access unlabeled_Model.unlabeled_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unlabeled_nonterminal3(N);
      N.pragma_sym_part.Acceptor(I);
      I_Classwide.After_unlabeled_nonterminal3(N);
   end Visit_unlabeled_nonterminal3;
   procedure Before_simple_stmt_nonterminal1(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal1'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal1;
   procedure After_simple_stmt_nonterminal1(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal1'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal1;
   procedure Visit_simple_stmt_nonterminal1(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal1(N);
      N.null_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal1(N);
   end Visit_simple_stmt_nonterminal1;
   procedure Before_simple_stmt_nonterminal2(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal2'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal2;
   procedure After_simple_stmt_nonterminal2(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal2'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal2;
   procedure Visit_simple_stmt_nonterminal2(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal2(N);
      N.assign_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal2(N);
   end Visit_simple_stmt_nonterminal2;
   procedure Before_simple_stmt_nonterminal3(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal3'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal3;
   procedure After_simple_stmt_nonterminal3(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal3'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal3;
   procedure Visit_simple_stmt_nonterminal3(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal3(N);
      N.exit_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal3(N);
   end Visit_simple_stmt_nonterminal3;
   procedure Before_simple_stmt_nonterminal4(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal4'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal4;
   procedure After_simple_stmt_nonterminal4(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal4'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal4;
   procedure Visit_simple_stmt_nonterminal4(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal4(N);
      N.return_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal4(N);
   end Visit_simple_stmt_nonterminal4;
   procedure Before_simple_stmt_nonterminal5(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal5'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal5;
   procedure After_simple_stmt_nonterminal5(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal5'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal5;
   procedure Visit_simple_stmt_nonterminal5(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal5(N);
      N.goto_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal5(N);
   end Visit_simple_stmt_nonterminal5;
   procedure Before_simple_stmt_nonterminal6(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal6'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal6;
   procedure After_simple_stmt_nonterminal6(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal6'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal6;
   procedure Visit_simple_stmt_nonterminal6(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal6(N);
      N.procedure_call_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal6(N);
   end Visit_simple_stmt_nonterminal6;
   procedure Before_simple_stmt_nonterminal7(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal7'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal7;
   procedure After_simple_stmt_nonterminal7(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal7'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal7;
   procedure Visit_simple_stmt_nonterminal7(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal7(N);
      N.delay_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal7(N);
   end Visit_simple_stmt_nonterminal7;
   procedure Before_simple_stmt_nonterminal8(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal8'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal8;
   procedure After_simple_stmt_nonterminal8(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal8'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal8;
   procedure Visit_simple_stmt_nonterminal8(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal8'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal8(N);
      N.abort_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal8(N);
   end Visit_simple_stmt_nonterminal8;
   procedure Before_simple_stmt_nonterminal9(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal9'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal9;
   procedure After_simple_stmt_nonterminal9(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal9'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal9;
   procedure Visit_simple_stmt_nonterminal9(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal9'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal9(N);
      N.raise_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal9(N);
   end Visit_simple_stmt_nonterminal9;
   procedure Before_simple_stmt_nonterminal10(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal10'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal10;
   procedure After_simple_stmt_nonterminal10(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal10'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal10;
   procedure Visit_simple_stmt_nonterminal10(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal10'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal10(N);
      N.code_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal10(N);
   end Visit_simple_stmt_nonterminal10;
   procedure Before_simple_stmt_nonterminal11(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal11'Class) is
   begin
      null;
   end Before_simple_stmt_nonterminal11;
   procedure After_simple_stmt_nonterminal11(
      I : access DFS;
      N : access simple_stmt_Model.simple_stmt_nonterminal11'Class) is
   begin
      null;
   end After_simple_stmt_nonterminal11;
   procedure Visit_simple_stmt_nonterminal11(
         I : access DFS;
         N : access simple_stmt_Model.simple_stmt_nonterminal11'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_simple_stmt_nonterminal11(N);
      N.requeue_stmt_part.Acceptor(I);
      I_Classwide.After_simple_stmt_nonterminal11(N);
   end Visit_simple_stmt_nonterminal11;
   procedure Before_compound_stmt_nonterminal1(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal1'Class) is
   begin
      null;
   end Before_compound_stmt_nonterminal1;
   procedure After_compound_stmt_nonterminal1(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal1'Class) is
   begin
      null;
   end After_compound_stmt_nonterminal1;
   procedure Visit_compound_stmt_nonterminal1(
         I : access DFS;
         N : access compound_stmt_Model.compound_stmt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_stmt_nonterminal1(N);
      N.if_stmt_part.Acceptor(I);
      I_Classwide.After_compound_stmt_nonterminal1(N);
   end Visit_compound_stmt_nonterminal1;
   procedure Before_compound_stmt_nonterminal2(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal2'Class) is
   begin
      null;
   end Before_compound_stmt_nonterminal2;
   procedure After_compound_stmt_nonterminal2(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal2'Class) is
   begin
      null;
   end After_compound_stmt_nonterminal2;
   procedure Visit_compound_stmt_nonterminal2(
         I : access DFS;
         N : access compound_stmt_Model.compound_stmt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_stmt_nonterminal2(N);
      N.case_stmt_part.Acceptor(I);
      I_Classwide.After_compound_stmt_nonterminal2(N);
   end Visit_compound_stmt_nonterminal2;
   procedure Before_compound_stmt_nonterminal3(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal3'Class) is
   begin
      null;
   end Before_compound_stmt_nonterminal3;
   procedure After_compound_stmt_nonterminal3(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal3'Class) is
   begin
      null;
   end After_compound_stmt_nonterminal3;
   procedure Visit_compound_stmt_nonterminal3(
         I : access DFS;
         N : access compound_stmt_Model.compound_stmt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_stmt_nonterminal3(N);
      N.loop_stmt_part.Acceptor(I);
      I_Classwide.After_compound_stmt_nonterminal3(N);
   end Visit_compound_stmt_nonterminal3;
   procedure Before_compound_stmt_nonterminal4(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal4'Class) is
   begin
      null;
   end Before_compound_stmt_nonterminal4;
   procedure After_compound_stmt_nonterminal4(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal4'Class) is
   begin
      null;
   end After_compound_stmt_nonterminal4;
   procedure Visit_compound_stmt_nonterminal4(
         I : access DFS;
         N : access compound_stmt_Model.compound_stmt_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_stmt_nonterminal4(N);
      N.block_part.Acceptor(I);
      I_Classwide.After_compound_stmt_nonterminal4(N);
   end Visit_compound_stmt_nonterminal4;
   procedure Before_compound_stmt_nonterminal5(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal5'Class) is
   begin
      null;
   end Before_compound_stmt_nonterminal5;
   procedure After_compound_stmt_nonterminal5(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal5'Class) is
   begin
      null;
   end After_compound_stmt_nonterminal5;
   procedure Visit_compound_stmt_nonterminal5(
         I : access DFS;
         N : access compound_stmt_Model.compound_stmt_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_stmt_nonterminal5(N);
      N.accept_stmt_part.Acceptor(I);
      I_Classwide.After_compound_stmt_nonterminal5(N);
   end Visit_compound_stmt_nonterminal5;
   procedure Before_compound_stmt_nonterminal6(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal6'Class) is
   begin
      null;
   end Before_compound_stmt_nonterminal6;
   procedure After_compound_stmt_nonterminal6(
      I : access DFS;
      N : access compound_stmt_Model.compound_stmt_nonterminal6'Class) is
   begin
      null;
   end After_compound_stmt_nonterminal6;
   procedure Visit_compound_stmt_nonterminal6(
         I : access DFS;
         N : access compound_stmt_Model.compound_stmt_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compound_stmt_nonterminal6(N);
      N.select_stmt_part.Acceptor(I);
      I_Classwide.After_compound_stmt_nonterminal6(N);
   end Visit_compound_stmt_nonterminal6;
   procedure Before_label_nonterminal(
      I : access DFS;
      N : access label_Model.label_nonterminal'Class) is
   begin
      null;
   end Before_label_nonterminal;
   procedure After_label_nonterminal(
      I : access DFS;
      N : access label_Model.label_nonterminal'Class) is
   begin
      null;
   end After_label_nonterminal;
   procedure Visit_label_nonterminal(
         I : access DFS;
         N : access label_Model.label_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_label_nonterminal(N);
      N.LT_LT_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      N.GT_GT_part.Acceptor(I);
      I_Classwide.After_label_nonterminal(N);
   end Visit_label_nonterminal;
   procedure Before_null_stmt_nonterminal(
      I : access DFS;
      N : access null_stmt_Model.null_stmt_nonterminal'Class) is
   begin
      null;
   end Before_null_stmt_nonterminal;
   procedure After_null_stmt_nonterminal(
      I : access DFS;
      N : access null_stmt_Model.null_stmt_nonterminal'Class) is
   begin
      null;
   end After_null_stmt_nonterminal;
   procedure Visit_null_stmt_nonterminal(
         I : access DFS;
         N : access null_stmt_Model.null_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_null_stmt_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.NULL_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_null_stmt_nonterminal(N);
   end Visit_null_stmt_nonterminal;
   procedure Before_assign_stmt_nonterminal(
      I : access DFS;
      N : access assign_stmt_Model.assign_stmt_nonterminal'Class) is
   begin
      null;
   end Before_assign_stmt_nonterminal;
   procedure After_assign_stmt_nonterminal(
      I : access DFS;
      N : access assign_stmt_Model.assign_stmt_nonterminal'Class) is
   begin
      null;
   end After_assign_stmt_nonterminal;
   procedure Visit_assign_stmt_nonterminal(
         I : access DFS;
         N : access assign_stmt_Model.assign_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_assign_stmt_nonterminal(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ASSIGNMENT_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_assign_stmt_nonterminal(N);
   end Visit_assign_stmt_nonterminal;
   procedure Before_if_stmt_nonterminal(
      I : access DFS;
      N : access if_stmt_Model.if_stmt_nonterminal'Class) is
   begin
      null;
   end Before_if_stmt_nonterminal;
   procedure After_if_stmt_nonterminal(
      I : access DFS;
      N : access if_stmt_Model.if_stmt_nonterminal'Class) is
   begin
      null;
   end After_if_stmt_nonterminal;
   procedure Visit_if_stmt_nonterminal(
         I : access DFS;
         N : access if_stmt_Model.if_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_if_stmt_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.IF_part1);
      N.cond_clause_s_part.Acceptor(I);
      N.else_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.IF_part2);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_if_stmt_nonterminal(N);
   end Visit_if_stmt_nonterminal;
   procedure Before_cond_clause_s_nonterminal1(
      I : access DFS;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal1'Class) is
   begin
      null;
   end Before_cond_clause_s_nonterminal1;
   procedure After_cond_clause_s_nonterminal1(
      I : access DFS;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal1'Class) is
   begin
      null;
   end After_cond_clause_s_nonterminal1;
   procedure Visit_cond_clause_s_nonterminal1(
         I : access DFS;
         N : access cond_clause_s_Model.cond_clause_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_cond_clause_s_nonterminal1(N);
      N.cond_clause_part.Acceptor(I);
      I_Classwide.After_cond_clause_s_nonterminal1(N);
   end Visit_cond_clause_s_nonterminal1;
   procedure Before_cond_clause_s_nonterminal2(
      I : access DFS;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal2'Class) is
   begin
      null;
   end Before_cond_clause_s_nonterminal2;
   procedure After_cond_clause_s_nonterminal2(
      I : access DFS;
      N : access cond_clause_s_Model.cond_clause_s_nonterminal2'Class) is
   begin
      null;
   end After_cond_clause_s_nonterminal2;
   procedure Visit_cond_clause_s_nonterminal2(
         I : access DFS;
         N : access cond_clause_s_Model.cond_clause_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_cond_clause_s_nonterminal2(N);
      N.cond_clause_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ELSIF_part);
      N.cond_clause_part.Acceptor(I);
      I_Classwide.After_cond_clause_s_nonterminal2(N);
   end Visit_cond_clause_s_nonterminal2;
   procedure Before_cond_clause_nonterminal(
      I : access DFS;
      N : access cond_clause_Model.cond_clause_nonterminal'Class) is
   begin
      null;
   end Before_cond_clause_nonterminal;
   procedure After_cond_clause_nonterminal(
      I : access DFS;
      N : access cond_clause_Model.cond_clause_nonterminal'Class) is
   begin
      null;
   end After_cond_clause_nonterminal;
   procedure Visit_cond_clause_nonterminal(
         I : access DFS;
         N : access cond_clause_Model.cond_clause_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_cond_clause_nonterminal(N);
      N.cond_part_part.Acceptor(I);
      N.statement_s_part.Acceptor(I);
      I_Classwide.After_cond_clause_nonterminal(N);
   end Visit_cond_clause_nonterminal;
   procedure Before_cond_part_nonterminal(
      I : access DFS;
      N : access cond_part_Model.cond_part_nonterminal'Class) is
   begin
      null;
   end Before_cond_part_nonterminal;
   procedure After_cond_part_nonterminal(
      I : access DFS;
      N : access cond_part_Model.cond_part_nonterminal'Class) is
   begin
      null;
   end After_cond_part_nonterminal;
   procedure Visit_cond_part_nonterminal(
         I : access DFS;
         N : access cond_part_Model.cond_part_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_cond_part_nonterminal(N);
      N.condition_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.THEN_part);
      I_Classwide.After_cond_part_nonterminal(N);
   end Visit_cond_part_nonterminal;
   procedure Before_condition_nonterminal(
      I : access DFS;
      N : access condition_Model.condition_nonterminal'Class) is
   begin
      null;
   end Before_condition_nonterminal;
   procedure After_condition_nonterminal(
      I : access DFS;
      N : access condition_Model.condition_nonterminal'Class) is
   begin
      null;
   end After_condition_nonterminal;
   procedure Visit_condition_nonterminal(
         I : access DFS;
         N : access condition_Model.condition_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_condition_nonterminal(N);
      N.expression_part.Acceptor(I);
      I_Classwide.After_condition_nonterminal(N);
   end Visit_condition_nonterminal;
   procedure Before_else_opt_nonterminal1(
      I : access DFS;
      N : access else_opt_Model.else_opt_nonterminal1'Class) is
   begin
      null;
   end Before_else_opt_nonterminal1;
   procedure After_else_opt_nonterminal1(
      I : access DFS;
      N : access else_opt_Model.else_opt_nonterminal1'Class) is
   begin
      null;
   end After_else_opt_nonterminal1;
   procedure Visit_else_opt_nonterminal1(
         I : access DFS;
         N : access else_opt_Model.else_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_else_opt_nonterminal1(N);
      I_Classwide.After_else_opt_nonterminal1(N);
   end Visit_else_opt_nonterminal1;
   procedure Before_else_opt_nonterminal2(
      I : access DFS;
      N : access else_opt_Model.else_opt_nonterminal2'Class) is
   begin
      null;
   end Before_else_opt_nonterminal2;
   procedure After_else_opt_nonterminal2(
      I : access DFS;
      N : access else_opt_Model.else_opt_nonterminal2'Class) is
   begin
      null;
   end After_else_opt_nonterminal2;
   procedure Visit_else_opt_nonterminal2(
         I : access DFS;
         N : access else_opt_Model.else_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_else_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.ELSE_part);
      N.statement_s_part.Acceptor(I);
      I_Classwide.After_else_opt_nonterminal2(N);
   end Visit_else_opt_nonterminal2;
   procedure Before_case_stmt_nonterminal(
      I : access DFS;
      N : access case_stmt_Model.case_stmt_nonterminal'Class) is
   begin
      null;
   end Before_case_stmt_nonterminal;
   procedure After_case_stmt_nonterminal(
      I : access DFS;
      N : access case_stmt_Model.case_stmt_nonterminal'Class) is
   begin
      null;
   end After_case_stmt_nonterminal;
   procedure Visit_case_stmt_nonterminal(
         I : access DFS;
         N : access case_stmt_Model.case_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_case_stmt_nonterminal(N);
      N.case_hdr_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      N.alternative_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.CASE_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_case_stmt_nonterminal(N);
   end Visit_case_stmt_nonterminal;
   procedure Before_case_hdr_nonterminal(
      I : access DFS;
      N : access case_hdr_Model.case_hdr_nonterminal'Class) is
   begin
      null;
   end Before_case_hdr_nonterminal;
   procedure After_case_hdr_nonterminal(
      I : access DFS;
      N : access case_hdr_Model.case_hdr_nonterminal'Class) is
   begin
      null;
   end After_case_hdr_nonterminal;
   procedure Visit_case_hdr_nonterminal(
         I : access DFS;
         N : access case_hdr_Model.case_hdr_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_case_hdr_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.CASE_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.After_case_hdr_nonterminal(N);
   end Visit_case_hdr_nonterminal;
   procedure Before_alternative_s_nonterminal1(
      I : access DFS;
      N : access alternative_s_Model.alternative_s_nonterminal1'Class) is
   begin
      null;
   end Before_alternative_s_nonterminal1;
   procedure After_alternative_s_nonterminal1(
      I : access DFS;
      N : access alternative_s_Model.alternative_s_nonterminal1'Class) is
   begin
      null;
   end After_alternative_s_nonterminal1;
   procedure Visit_alternative_s_nonterminal1(
         I : access DFS;
         N : access alternative_s_Model.alternative_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_alternative_s_nonterminal1(N);
      I_Classwide.After_alternative_s_nonterminal1(N);
   end Visit_alternative_s_nonterminal1;
   procedure Before_alternative_s_nonterminal2(
      I : access DFS;
      N : access alternative_s_Model.alternative_s_nonterminal2'Class) is
   begin
      null;
   end Before_alternative_s_nonterminal2;
   procedure After_alternative_s_nonterminal2(
      I : access DFS;
      N : access alternative_s_Model.alternative_s_nonterminal2'Class) is
   begin
      null;
   end After_alternative_s_nonterminal2;
   procedure Visit_alternative_s_nonterminal2(
         I : access DFS;
         N : access alternative_s_Model.alternative_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_alternative_s_nonterminal2(N);
      N.alternative_s_part.Acceptor(I);
      N.alternative_part.Acceptor(I);
      I_Classwide.After_alternative_s_nonterminal2(N);
   end Visit_alternative_s_nonterminal2;
   procedure Before_alternative_nonterminal(
      I : access DFS;
      N : access alternative_Model.alternative_nonterminal'Class) is
   begin
      null;
   end Before_alternative_nonterminal;
   procedure After_alternative_nonterminal(
      I : access DFS;
      N : access alternative_Model.alternative_nonterminal'Class) is
   begin
      null;
   end After_alternative_nonterminal;
   procedure Visit_alternative_nonterminal(
         I : access DFS;
         N : access alternative_Model.alternative_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_alternative_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      N.choice_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ARROW_part);
      N.statement_s_part.Acceptor(I);
      I_Classwide.After_alternative_nonterminal(N);
   end Visit_alternative_nonterminal;
   procedure Before_loop_stmt_nonterminal(
      I : access DFS;
      N : access loop_stmt_Model.loop_stmt_nonterminal'Class) is
   begin
      null;
   end Before_loop_stmt_nonterminal;
   procedure After_loop_stmt_nonterminal(
      I : access DFS;
      N : access loop_stmt_Model.loop_stmt_nonterminal'Class) is
   begin
      null;
   end After_loop_stmt_nonterminal;
   procedure Visit_loop_stmt_nonterminal(
         I : access DFS;
         N : access loop_stmt_Model.loop_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_loop_stmt_nonterminal(N);
      N.label_opt_part.Acceptor(I);
      N.iteration_part.Acceptor(I);
      N.basic_loop_part.Acceptor(I);
      N.id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_loop_stmt_nonterminal(N);
   end Visit_loop_stmt_nonterminal;
   procedure Before_label_opt_nonterminal1(
      I : access DFS;
      N : access label_opt_Model.label_opt_nonterminal1'Class) is
   begin
      null;
   end Before_label_opt_nonterminal1;
   procedure After_label_opt_nonterminal1(
      I : access DFS;
      N : access label_opt_Model.label_opt_nonterminal1'Class) is
   begin
      null;
   end After_label_opt_nonterminal1;
   procedure Visit_label_opt_nonterminal1(
         I : access DFS;
         N : access label_opt_Model.label_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_label_opt_nonterminal1(N);
      I_Classwide.After_label_opt_nonterminal1(N);
   end Visit_label_opt_nonterminal1;
   procedure Before_label_opt_nonterminal2(
      I : access DFS;
      N : access label_opt_Model.label_opt_nonterminal2'Class) is
   begin
      null;
   end Before_label_opt_nonterminal2;
   procedure After_label_opt_nonterminal2(
      I : access DFS;
      N : access label_opt_Model.label_opt_nonterminal2'Class) is
   begin
      null;
   end After_label_opt_nonterminal2;
   procedure Visit_label_opt_nonterminal2(
         I : access DFS;
         N : access label_opt_Model.label_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_label_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      I_Classwide.After_label_opt_nonterminal2(N);
   end Visit_label_opt_nonterminal2;
   procedure Before_iteration_nonterminal1(
      I : access DFS;
      N : access iteration_Model.iteration_nonterminal1'Class) is
   begin
      null;
   end Before_iteration_nonterminal1;
   procedure After_iteration_nonterminal1(
      I : access DFS;
      N : access iteration_Model.iteration_nonterminal1'Class) is
   begin
      null;
   end After_iteration_nonterminal1;
   procedure Visit_iteration_nonterminal1(
         I : access DFS;
         N : access iteration_Model.iteration_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_iteration_nonterminal1(N);
      I_Classwide.After_iteration_nonterminal1(N);
   end Visit_iteration_nonterminal1;
   procedure Before_iteration_nonterminal2(
      I : access DFS;
      N : access iteration_Model.iteration_nonterminal2'Class) is
   begin
      null;
   end Before_iteration_nonterminal2;
   procedure After_iteration_nonterminal2(
      I : access DFS;
      N : access iteration_Model.iteration_nonterminal2'Class) is
   begin
      null;
   end After_iteration_nonterminal2;
   procedure Visit_iteration_nonterminal2(
         I : access DFS;
         N : access iteration_Model.iteration_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_iteration_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.WHILE_part);
      N.condition_part.Acceptor(I);
      I_Classwide.After_iteration_nonterminal2(N);
   end Visit_iteration_nonterminal2;
   procedure Before_iteration_nonterminal3(
      I : access DFS;
      N : access iteration_Model.iteration_nonterminal3'Class) is
   begin
      null;
   end Before_iteration_nonterminal3;
   procedure After_iteration_nonterminal3(
      I : access DFS;
      N : access iteration_Model.iteration_nonterminal3'Class) is
   begin
      null;
   end After_iteration_nonterminal3;
   procedure Visit_iteration_nonterminal3(
         I : access DFS;
         N : access iteration_Model.iteration_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_iteration_nonterminal3(N);
      N.iter_part_part.Acceptor(I);
      N.reverse_opt_part.Acceptor(I);
      N.discrete_range_part.Acceptor(I);
      I_Classwide.After_iteration_nonterminal3(N);
   end Visit_iteration_nonterminal3;
   procedure Before_iter_part_nonterminal(
      I : access DFS;
      N : access iter_part_Model.iter_part_nonterminal'Class) is
   begin
      null;
   end Before_iter_part_nonterminal;
   procedure After_iter_part_nonterminal(
      I : access DFS;
      N : access iter_part_Model.iter_part_nonterminal'Class) is
   begin
      null;
   end After_iter_part_nonterminal;
   procedure Visit_iter_part_nonterminal(
         I : access DFS;
         N : access iter_part_Model.iter_part_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_iter_part_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.FOR_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.Visit_Parseable_Token(N.IN_part);
      I_Classwide.After_iter_part_nonterminal(N);
   end Visit_iter_part_nonterminal;
   procedure Before_reverse_opt_nonterminal1(
      I : access DFS;
      N : access reverse_opt_Model.reverse_opt_nonterminal1'Class) is
   begin
      null;
   end Before_reverse_opt_nonterminal1;
   procedure After_reverse_opt_nonterminal1(
      I : access DFS;
      N : access reverse_opt_Model.reverse_opt_nonterminal1'Class) is
   begin
      null;
   end After_reverse_opt_nonterminal1;
   procedure Visit_reverse_opt_nonterminal1(
         I : access DFS;
         N : access reverse_opt_Model.reverse_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_reverse_opt_nonterminal1(N);
      I_Classwide.After_reverse_opt_nonterminal1(N);
   end Visit_reverse_opt_nonterminal1;
   procedure Before_reverse_opt_nonterminal2(
      I : access DFS;
      N : access reverse_opt_Model.reverse_opt_nonterminal2'Class) is
   begin
      null;
   end Before_reverse_opt_nonterminal2;
   procedure After_reverse_opt_nonterminal2(
      I : access DFS;
      N : access reverse_opt_Model.reverse_opt_nonterminal2'Class) is
   begin
      null;
   end After_reverse_opt_nonterminal2;
   procedure Visit_reverse_opt_nonterminal2(
         I : access DFS;
         N : access reverse_opt_Model.reverse_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_reverse_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.REVERSE_part);
      I_Classwide.After_reverse_opt_nonterminal2(N);
   end Visit_reverse_opt_nonterminal2;
   procedure Before_basic_loop_nonterminal(
      I : access DFS;
      N : access basic_loop_Model.basic_loop_nonterminal'Class) is
   begin
      null;
   end Before_basic_loop_nonterminal;
   procedure After_basic_loop_nonterminal(
      I : access DFS;
      N : access basic_loop_Model.basic_loop_nonterminal'Class) is
   begin
      null;
   end After_basic_loop_nonterminal;
   procedure Visit_basic_loop_nonterminal(
         I : access DFS;
         N : access basic_loop_Model.basic_loop_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_basic_loop_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.LOOP_part1);
      N.statement_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.LOOP_part2);
      I_Classwide.After_basic_loop_nonterminal(N);
   end Visit_basic_loop_nonterminal;
   procedure Before_id_opt_nonterminal1(
      I : access DFS;
      N : access id_opt_Model.id_opt_nonterminal1'Class) is
   begin
      null;
   end Before_id_opt_nonterminal1;
   procedure After_id_opt_nonterminal1(
      I : access DFS;
      N : access id_opt_Model.id_opt_nonterminal1'Class) is
   begin
      null;
   end After_id_opt_nonterminal1;
   procedure Visit_id_opt_nonterminal1(
         I : access DFS;
         N : access id_opt_Model.id_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_id_opt_nonterminal1(N);
      I_Classwide.After_id_opt_nonterminal1(N);
   end Visit_id_opt_nonterminal1;
   procedure Before_id_opt_nonterminal2(
      I : access DFS;
      N : access id_opt_Model.id_opt_nonterminal2'Class) is
   begin
      null;
   end Before_id_opt_nonterminal2;
   procedure After_id_opt_nonterminal2(
      I : access DFS;
      N : access id_opt_Model.id_opt_nonterminal2'Class) is
   begin
      null;
   end After_id_opt_nonterminal2;
   procedure Visit_id_opt_nonterminal2(
         I : access DFS;
         N : access id_opt_Model.id_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_id_opt_nonterminal2(N);
      N.designator_part.Acceptor(I);
      I_Classwide.After_id_opt_nonterminal2(N);
   end Visit_id_opt_nonterminal2;
   procedure Before_block_nonterminal(
      I : access DFS;
      N : access block_Model.block_nonterminal'Class) is
   begin
      null;
   end Before_block_nonterminal;
   procedure After_block_nonterminal(
      I : access DFS;
      N : access block_Model.block_nonterminal'Class) is
   begin
      null;
   end After_block_nonterminal;
   procedure Visit_block_nonterminal(
         I : access DFS;
         N : access block_Model.block_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_block_nonterminal(N);
      N.label_opt_part.Acceptor(I);
      N.block_decl_part.Acceptor(I);
      N.block_body_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_block_nonterminal(N);
   end Visit_block_nonterminal;
   procedure Before_block_decl_nonterminal1(
      I : access DFS;
      N : access block_decl_Model.block_decl_nonterminal1'Class) is
   begin
      null;
   end Before_block_decl_nonterminal1;
   procedure After_block_decl_nonterminal1(
      I : access DFS;
      N : access block_decl_Model.block_decl_nonterminal1'Class) is
   begin
      null;
   end After_block_decl_nonterminal1;
   procedure Visit_block_decl_nonterminal1(
         I : access DFS;
         N : access block_decl_Model.block_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_block_decl_nonterminal1(N);
      I_Classwide.After_block_decl_nonterminal1(N);
   end Visit_block_decl_nonterminal1;
   procedure Before_block_decl_nonterminal2(
      I : access DFS;
      N : access block_decl_Model.block_decl_nonterminal2'Class) is
   begin
      null;
   end Before_block_decl_nonterminal2;
   procedure After_block_decl_nonterminal2(
      I : access DFS;
      N : access block_decl_Model.block_decl_nonterminal2'Class) is
   begin
      null;
   end After_block_decl_nonterminal2;
   procedure Visit_block_decl_nonterminal2(
         I : access DFS;
         N : access block_decl_Model.block_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_block_decl_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.DECLARE_part);
      N.decl_part_part.Acceptor(I);
      I_Classwide.After_block_decl_nonterminal2(N);
   end Visit_block_decl_nonterminal2;
   procedure Before_block_body_nonterminal(
      I : access DFS;
      N : access block_body_Model.block_body_nonterminal'Class) is
   begin
      null;
   end Before_block_body_nonterminal;
   procedure After_block_body_nonterminal(
      I : access DFS;
      N : access block_body_Model.block_body_nonterminal'Class) is
   begin
      null;
   end After_block_body_nonterminal;
   procedure Visit_block_body_nonterminal(
         I : access DFS;
         N : access block_body_Model.block_body_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_block_body_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.BEGIN_part);
      N.handled_stmt_s_part.Acceptor(I);
      I_Classwide.After_block_body_nonterminal(N);
   end Visit_block_body_nonterminal;
   procedure Before_handled_stmt_s_nonterminal(
      I : access DFS;
      N : access handled_stmt_s_Model.handled_stmt_s_nonterminal'Class) is
   begin
      null;
   end Before_handled_stmt_s_nonterminal;
   procedure After_handled_stmt_s_nonterminal(
      I : access DFS;
      N : access handled_stmt_s_Model.handled_stmt_s_nonterminal'Class) is
   begin
      null;
   end After_handled_stmt_s_nonterminal;
   procedure Visit_handled_stmt_s_nonterminal(
         I : access DFS;
         N : access handled_stmt_s_Model.handled_stmt_s_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_handled_stmt_s_nonterminal(N);
      N.statement_s_part.Acceptor(I);
      N.except_handler_part_opt_part.Acceptor(I);
      I_Classwide.After_handled_stmt_s_nonterminal(N);
   end Visit_handled_stmt_s_nonterminal;
   procedure Before_except_handler_part_opt_nonterminal1(
      I : access DFS;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal1'Class) is
   begin
      null;
   end Before_except_handler_part_opt_nonterminal1;
   procedure After_except_handler_part_opt_nonterminal1(
      I : access DFS;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal1'Class) is
   begin
      null;
   end After_except_handler_part_opt_nonterminal1;
   procedure Visit_except_handler_part_opt_nonterminal1(
         I : access DFS;
         N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_handler_part_opt_nonterminal1(N);
      I_Classwide.After_except_handler_part_opt_nonterminal1(N);
   end Visit_except_handler_part_opt_nonterminal1;
   procedure Before_except_handler_part_opt_nonterminal2(
      I : access DFS;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal2'Class) is
   begin
      null;
   end Before_except_handler_part_opt_nonterminal2;
   procedure After_except_handler_part_opt_nonterminal2(
      I : access DFS;
      N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal2'Class) is
   begin
      null;
   end After_except_handler_part_opt_nonterminal2;
   procedure Visit_except_handler_part_opt_nonterminal2(
         I : access DFS;
         N : access except_handler_part_opt_Model.except_handler_part_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_handler_part_opt_nonterminal2(N);
      N.except_handler_part_part.Acceptor(I);
      I_Classwide.After_except_handler_part_opt_nonterminal2(N);
   end Visit_except_handler_part_opt_nonterminal2;
   procedure Before_exit_stmt_nonterminal(
      I : access DFS;
      N : access exit_stmt_Model.exit_stmt_nonterminal'Class) is
   begin
      null;
   end Before_exit_stmt_nonterminal;
   procedure After_exit_stmt_nonterminal(
      I : access DFS;
      N : access exit_stmt_Model.exit_stmt_nonterminal'Class) is
   begin
      null;
   end After_exit_stmt_nonterminal;
   procedure Visit_exit_stmt_nonterminal(
         I : access DFS;
         N : access exit_stmt_Model.exit_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_exit_stmt_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.EXIT_part);
      N.name_opt_part.Acceptor(I);
      N.when_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_exit_stmt_nonterminal(N);
   end Visit_exit_stmt_nonterminal;
   procedure Before_name_opt_nonterminal1(
      I : access DFS;
      N : access name_opt_Model.name_opt_nonterminal1'Class) is
   begin
      null;
   end Before_name_opt_nonterminal1;
   procedure After_name_opt_nonterminal1(
      I : access DFS;
      N : access name_opt_Model.name_opt_nonterminal1'Class) is
   begin
      null;
   end After_name_opt_nonterminal1;
   procedure Visit_name_opt_nonterminal1(
         I : access DFS;
         N : access name_opt_Model.name_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_opt_nonterminal1(N);
      I_Classwide.After_name_opt_nonterminal1(N);
   end Visit_name_opt_nonterminal1;
   procedure Before_name_opt_nonterminal2(
      I : access DFS;
      N : access name_opt_Model.name_opt_nonterminal2'Class) is
   begin
      null;
   end Before_name_opt_nonterminal2;
   procedure After_name_opt_nonterminal2(
      I : access DFS;
      N : access name_opt_Model.name_opt_nonterminal2'Class) is
   begin
      null;
   end After_name_opt_nonterminal2;
   procedure Visit_name_opt_nonterminal2(
         I : access DFS;
         N : access name_opt_Model.name_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_opt_nonterminal2(N);
      N.name_part.Acceptor(I);
      I_Classwide.After_name_opt_nonterminal2(N);
   end Visit_name_opt_nonterminal2;
   procedure Before_when_opt_nonterminal1(
      I : access DFS;
      N : access when_opt_Model.when_opt_nonterminal1'Class) is
   begin
      null;
   end Before_when_opt_nonterminal1;
   procedure After_when_opt_nonterminal1(
      I : access DFS;
      N : access when_opt_Model.when_opt_nonterminal1'Class) is
   begin
      null;
   end After_when_opt_nonterminal1;
   procedure Visit_when_opt_nonterminal1(
         I : access DFS;
         N : access when_opt_Model.when_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_when_opt_nonterminal1(N);
      I_Classwide.After_when_opt_nonterminal1(N);
   end Visit_when_opt_nonterminal1;
   procedure Before_when_opt_nonterminal2(
      I : access DFS;
      N : access when_opt_Model.when_opt_nonterminal2'Class) is
   begin
      null;
   end Before_when_opt_nonterminal2;
   procedure After_when_opt_nonterminal2(
      I : access DFS;
      N : access when_opt_Model.when_opt_nonterminal2'Class) is
   begin
      null;
   end After_when_opt_nonterminal2;
   procedure Visit_when_opt_nonterminal2(
         I : access DFS;
         N : access when_opt_Model.when_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_when_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      N.condition_part.Acceptor(I);
      I_Classwide.After_when_opt_nonterminal2(N);
   end Visit_when_opt_nonterminal2;
   procedure Before_return_stmt_nonterminal1(
      I : access DFS;
      N : access return_stmt_Model.return_stmt_nonterminal1'Class) is
   begin
      null;
   end Before_return_stmt_nonterminal1;
   procedure After_return_stmt_nonterminal1(
      I : access DFS;
      N : access return_stmt_Model.return_stmt_nonterminal1'Class) is
   begin
      null;
   end After_return_stmt_nonterminal1;
   procedure Visit_return_stmt_nonterminal1(
         I : access DFS;
         N : access return_stmt_Model.return_stmt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_return_stmt_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.RETURN_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_return_stmt_nonterminal1(N);
   end Visit_return_stmt_nonterminal1;
   procedure Before_return_stmt_nonterminal2(
      I : access DFS;
      N : access return_stmt_Model.return_stmt_nonterminal2'Class) is
   begin
      null;
   end Before_return_stmt_nonterminal2;
   procedure After_return_stmt_nonterminal2(
      I : access DFS;
      N : access return_stmt_Model.return_stmt_nonterminal2'Class) is
   begin
      null;
   end After_return_stmt_nonterminal2;
   procedure Visit_return_stmt_nonterminal2(
         I : access DFS;
         N : access return_stmt_Model.return_stmt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_return_stmt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.RETURN_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_return_stmt_nonterminal2(N);
   end Visit_return_stmt_nonterminal2;
   procedure Before_goto_stmt_nonterminal(
      I : access DFS;
      N : access goto_stmt_Model.goto_stmt_nonterminal'Class) is
   begin
      null;
   end Before_goto_stmt_nonterminal;
   procedure After_goto_stmt_nonterminal(
      I : access DFS;
      N : access goto_stmt_Model.goto_stmt_nonterminal'Class) is
   begin
      null;
   end After_goto_stmt_nonterminal;
   procedure Visit_goto_stmt_nonterminal(
         I : access DFS;
         N : access goto_stmt_Model.goto_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_goto_stmt_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.GOTO_part);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_goto_stmt_nonterminal(N);
   end Visit_goto_stmt_nonterminal;
   procedure Before_subprog_decl_nonterminal1(
      I : access DFS;
      N : access subprog_decl_Model.subprog_decl_nonterminal1'Class) is
   begin
      null;
   end Before_subprog_decl_nonterminal1;
   procedure After_subprog_decl_nonterminal1(
      I : access DFS;
      N : access subprog_decl_Model.subprog_decl_nonterminal1'Class) is
   begin
      null;
   end After_subprog_decl_nonterminal1;
   procedure Visit_subprog_decl_nonterminal1(
         I : access DFS;
         N : access subprog_decl_Model.subprog_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_decl_nonterminal1(N);
      N.subprog_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_subprog_decl_nonterminal1(N);
   end Visit_subprog_decl_nonterminal1;
   procedure Before_subprog_decl_nonterminal2(
      I : access DFS;
      N : access subprog_decl_Model.subprog_decl_nonterminal2'Class) is
   begin
      null;
   end Before_subprog_decl_nonterminal2;
   procedure After_subprog_decl_nonterminal2(
      I : access DFS;
      N : access subprog_decl_Model.subprog_decl_nonterminal2'Class) is
   begin
      null;
   end After_subprog_decl_nonterminal2;
   procedure Visit_subprog_decl_nonterminal2(
         I : access DFS;
         N : access subprog_decl_Model.subprog_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_decl_nonterminal2(N);
      N.generic_subp_inst_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_subprog_decl_nonterminal2(N);
   end Visit_subprog_decl_nonterminal2;
   procedure Before_subprog_decl_nonterminal3(
      I : access DFS;
      N : access subprog_decl_Model.subprog_decl_nonterminal3'Class) is
   begin
      null;
   end Before_subprog_decl_nonterminal3;
   procedure After_subprog_decl_nonterminal3(
      I : access DFS;
      N : access subprog_decl_Model.subprog_decl_nonterminal3'Class) is
   begin
      null;
   end After_subprog_decl_nonterminal3;
   procedure Visit_subprog_decl_nonterminal3(
         I : access DFS;
         N : access subprog_decl_Model.subprog_decl_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_decl_nonterminal3(N);
      N.subprog_spec_is_push_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.abstract_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_subprog_decl_nonterminal3(N);
   end Visit_subprog_decl_nonterminal3;
   procedure Before_subprog_spec_nonterminal1(
      I : access DFS;
      N : access subprog_spec_Model.subprog_spec_nonterminal1'Class) is
   begin
      null;
   end Before_subprog_spec_nonterminal1;
   procedure After_subprog_spec_nonterminal1(
      I : access DFS;
      N : access subprog_spec_Model.subprog_spec_nonterminal1'Class) is
   begin
      null;
   end After_subprog_spec_nonterminal1;
   procedure Visit_subprog_spec_nonterminal1(
         I : access DFS;
         N : access subprog_spec_Model.subprog_spec_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_spec_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.PROCEDURE_part);
      N.compound_name_part.Acceptor(I);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.After_subprog_spec_nonterminal1(N);
   end Visit_subprog_spec_nonterminal1;
   procedure Before_subprog_spec_nonterminal2(
      I : access DFS;
      N : access subprog_spec_Model.subprog_spec_nonterminal2'Class) is
   begin
      null;
   end Before_subprog_spec_nonterminal2;
   procedure After_subprog_spec_nonterminal2(
      I : access DFS;
      N : access subprog_spec_Model.subprog_spec_nonterminal2'Class) is
   begin
      null;
   end After_subprog_spec_nonterminal2;
   procedure Visit_subprog_spec_nonterminal2(
         I : access DFS;
         N : access subprog_spec_Model.subprog_spec_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_spec_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.FUNCTION_part);
      N.designator_part.Acceptor(I);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.RETURN_part);
      N.name_part.Acceptor(I);
      I_Classwide.After_subprog_spec_nonterminal2(N);
   end Visit_subprog_spec_nonterminal2;
   procedure Before_subprog_spec_nonterminal3(
      I : access DFS;
      N : access subprog_spec_Model.subprog_spec_nonterminal3'Class) is
   begin
      null;
   end Before_subprog_spec_nonterminal3;
   procedure After_subprog_spec_nonterminal3(
      I : access DFS;
      N : access subprog_spec_Model.subprog_spec_nonterminal3'Class) is
   begin
      null;
   end After_subprog_spec_nonterminal3;
   procedure Visit_subprog_spec_nonterminal3(
         I : access DFS;
         N : access subprog_spec_Model.subprog_spec_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_spec_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.FUNCTION_part);
      N.designator_part.Acceptor(I);
      I_Classwide.After_subprog_spec_nonterminal3(N);
   end Visit_subprog_spec_nonterminal3;
   procedure Before_designator_nonterminal1(
      I : access DFS;
      N : access designator_Model.designator_nonterminal1'Class) is
   begin
      null;
   end Before_designator_nonterminal1;
   procedure After_designator_nonterminal1(
      I : access DFS;
      N : access designator_Model.designator_nonterminal1'Class) is
   begin
      null;
   end After_designator_nonterminal1;
   procedure Visit_designator_nonterminal1(
         I : access DFS;
         N : access designator_Model.designator_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_designator_nonterminal1(N);
      N.compound_name_part.Acceptor(I);
      I_Classwide.After_designator_nonterminal1(N);
   end Visit_designator_nonterminal1;
   procedure Before_designator_nonterminal2(
      I : access DFS;
      N : access designator_Model.designator_nonterminal2'Class) is
   begin
      null;
   end Before_designator_nonterminal2;
   procedure After_designator_nonterminal2(
      I : access DFS;
      N : access designator_Model.designator_nonterminal2'Class) is
   begin
      null;
   end After_designator_nonterminal2;
   procedure Visit_designator_nonterminal2(
         I : access DFS;
         N : access designator_Model.designator_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_designator_nonterminal2(N);
      N.char_string_part.Acceptor(I);
      I_Classwide.After_designator_nonterminal2(N);
   end Visit_designator_nonterminal2;
   procedure Before_formal_part_opt_nonterminal1(
      I : access DFS;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal1'Class) is
   begin
      null;
   end Before_formal_part_opt_nonterminal1;
   procedure After_formal_part_opt_nonterminal1(
      I : access DFS;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal1'Class) is
   begin
      null;
   end After_formal_part_opt_nonterminal1;
   procedure Visit_formal_part_opt_nonterminal1(
         I : access DFS;
         N : access formal_part_opt_Model.formal_part_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_formal_part_opt_nonterminal1(N);
      I_Classwide.After_formal_part_opt_nonterminal1(N);
   end Visit_formal_part_opt_nonterminal1;
   procedure Before_formal_part_opt_nonterminal2(
      I : access DFS;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal2'Class) is
   begin
      null;
   end Before_formal_part_opt_nonterminal2;
   procedure After_formal_part_opt_nonterminal2(
      I : access DFS;
      N : access formal_part_opt_Model.formal_part_opt_nonterminal2'Class) is
   begin
      null;
   end After_formal_part_opt_nonterminal2;
   procedure Visit_formal_part_opt_nonterminal2(
         I : access DFS;
         N : access formal_part_opt_Model.formal_part_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_formal_part_opt_nonterminal2(N);
      N.formal_part_part.Acceptor(I);
      I_Classwide.After_formal_part_opt_nonterminal2(N);
   end Visit_formal_part_opt_nonterminal2;
   procedure Before_formal_part_nonterminal(
      I : access DFS;
      N : access formal_part_Model.formal_part_nonterminal'Class) is
   begin
      null;
   end Before_formal_part_nonterminal;
   procedure After_formal_part_nonterminal(
      I : access DFS;
      N : access formal_part_Model.formal_part_nonterminal'Class) is
   begin
      null;
   end After_formal_part_nonterminal;
   procedure Visit_formal_part_nonterminal(
         I : access DFS;
         N : access formal_part_Model.formal_part_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_formal_part_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.param_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_formal_part_nonterminal(N);
   end Visit_formal_part_nonterminal;
   procedure Before_param_s_nonterminal1(
      I : access DFS;
      N : access param_s_Model.param_s_nonterminal1'Class) is
   begin
      null;
   end Before_param_s_nonterminal1;
   procedure After_param_s_nonterminal1(
      I : access DFS;
      N : access param_s_Model.param_s_nonterminal1'Class) is
   begin
      null;
   end After_param_s_nonterminal1;
   procedure Visit_param_s_nonterminal1(
         I : access DFS;
         N : access param_s_Model.param_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_param_s_nonterminal1(N);
      N.param_part.Acceptor(I);
      I_Classwide.After_param_s_nonterminal1(N);
   end Visit_param_s_nonterminal1;
   procedure Before_param_s_nonterminal2(
      I : access DFS;
      N : access param_s_Model.param_s_nonterminal2'Class) is
   begin
      null;
   end Before_param_s_nonterminal2;
   procedure After_param_s_nonterminal2(
      I : access DFS;
      N : access param_s_Model.param_s_nonterminal2'Class) is
   begin
      null;
   end After_param_s_nonterminal2;
   procedure Visit_param_s_nonterminal2(
         I : access DFS;
         N : access param_s_Model.param_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_param_s_nonterminal2(N);
      N.param_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      N.param_part.Acceptor(I);
      I_Classwide.After_param_s_nonterminal2(N);
   end Visit_param_s_nonterminal2;
   procedure Before_param_nonterminal(
      I : access DFS;
      N : access param_Model.param_nonterminal'Class) is
   begin
      null;
   end Before_param_nonterminal;
   procedure After_param_nonterminal(
      I : access DFS;
      N : access param_Model.param_nonterminal'Class) is
   begin
      null;
   end After_param_nonterminal;
   procedure Visit_param_nonterminal(
         I : access DFS;
         N : access param_Model.param_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_param_nonterminal(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      N.mode_part.Acceptor(I);
      N.mark_part.Acceptor(I);
      N.init_opt_part.Acceptor(I);
      I_Classwide.After_param_nonterminal(N);
   end Visit_param_nonterminal;
   procedure Before_mode_nonterminal1(
      I : access DFS;
      N : access mode_Model.mode_nonterminal1'Class) is
   begin
      null;
   end Before_mode_nonterminal1;
   procedure After_mode_nonterminal1(
      I : access DFS;
      N : access mode_Model.mode_nonterminal1'Class) is
   begin
      null;
   end After_mode_nonterminal1;
   procedure Visit_mode_nonterminal1(
         I : access DFS;
         N : access mode_Model.mode_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mode_nonterminal1(N);
      I_Classwide.After_mode_nonterminal1(N);
   end Visit_mode_nonterminal1;
   procedure Before_mode_nonterminal2(
      I : access DFS;
      N : access mode_Model.mode_nonterminal2'Class) is
   begin
      null;
   end Before_mode_nonterminal2;
   procedure After_mode_nonterminal2(
      I : access DFS;
      N : access mode_Model.mode_nonterminal2'Class) is
   begin
      null;
   end After_mode_nonterminal2;
   procedure Visit_mode_nonterminal2(
         I : access DFS;
         N : access mode_Model.mode_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mode_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.IN_part);
      I_Classwide.After_mode_nonterminal2(N);
   end Visit_mode_nonterminal2;
   procedure Before_mode_nonterminal3(
      I : access DFS;
      N : access mode_Model.mode_nonterminal3'Class) is
   begin
      null;
   end Before_mode_nonterminal3;
   procedure After_mode_nonterminal3(
      I : access DFS;
      N : access mode_Model.mode_nonterminal3'Class) is
   begin
      null;
   end After_mode_nonterminal3;
   procedure Visit_mode_nonterminal3(
         I : access DFS;
         N : access mode_Model.mode_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mode_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.OUT_part);
      I_Classwide.After_mode_nonterminal3(N);
   end Visit_mode_nonterminal3;
   procedure Before_mode_nonterminal4(
      I : access DFS;
      N : access mode_Model.mode_nonterminal4'Class) is
   begin
      null;
   end Before_mode_nonterminal4;
   procedure After_mode_nonterminal4(
      I : access DFS;
      N : access mode_Model.mode_nonterminal4'Class) is
   begin
      null;
   end After_mode_nonterminal4;
   procedure Visit_mode_nonterminal4(
         I : access DFS;
         N : access mode_Model.mode_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mode_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.IN_part);
      I_Classwide.Visit_Parseable_Token(N.OUT_part);
      I_Classwide.After_mode_nonterminal4(N);
   end Visit_mode_nonterminal4;
   procedure Before_mode_nonterminal5(
      I : access DFS;
      N : access mode_Model.mode_nonterminal5'Class) is
   begin
      null;
   end Before_mode_nonterminal5;
   procedure After_mode_nonterminal5(
      I : access DFS;
      N : access mode_Model.mode_nonterminal5'Class) is
   begin
      null;
   end After_mode_nonterminal5;
   procedure Visit_mode_nonterminal5(
         I : access DFS;
         N : access mode_Model.mode_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_mode_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.ACCESS_part);
      I_Classwide.After_mode_nonterminal5(N);
   end Visit_mode_nonterminal5;
   procedure Before_subprog_spec_is_push_nonterminal(
      I : access DFS;
      N : access subprog_spec_is_push_Model.subprog_spec_is_push_nonterminal'Class) is
   begin
      null;
   end Before_subprog_spec_is_push_nonterminal;
   procedure After_subprog_spec_is_push_nonterminal(
      I : access DFS;
      N : access subprog_spec_is_push_Model.subprog_spec_is_push_nonterminal'Class) is
   begin
      null;
   end After_subprog_spec_is_push_nonterminal;
   procedure Visit_subprog_spec_is_push_nonterminal(
         I : access DFS;
         N : access subprog_spec_is_push_Model.subprog_spec_is_push_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_spec_is_push_nonterminal(N);
      N.subprog_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.After_subprog_spec_is_push_nonterminal(N);
   end Visit_subprog_spec_is_push_nonterminal;
   procedure Before_subprog_body_nonterminal(
      I : access DFS;
      N : access subprog_body_Model.subprog_body_nonterminal'Class) is
   begin
      null;
   end Before_subprog_body_nonterminal;
   procedure After_subprog_body_nonterminal(
      I : access DFS;
      N : access subprog_body_Model.subprog_body_nonterminal'Class) is
   begin
      null;
   end After_subprog_body_nonterminal;
   procedure Visit_subprog_body_nonterminal(
         I : access DFS;
         N : access subprog_body_Model.subprog_body_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subprog_body_nonterminal(N);
      N.subprog_spec_is_push_part.Acceptor(I);
      N.decl_part_part.Acceptor(I);
      N.block_body_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_subprog_body_nonterminal(N);
   end Visit_subprog_body_nonterminal;
   procedure Before_procedure_call_nonterminal(
      I : access DFS;
      N : access procedure_call_Model.procedure_call_nonterminal'Class) is
   begin
      null;
   end Before_procedure_call_nonterminal;
   procedure After_procedure_call_nonterminal(
      I : access DFS;
      N : access procedure_call_Model.procedure_call_nonterminal'Class) is
   begin
      null;
   end After_procedure_call_nonterminal;
   procedure Visit_procedure_call_nonterminal(
         I : access DFS;
         N : access procedure_call_Model.procedure_call_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_procedure_call_nonterminal(N);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_procedure_call_nonterminal(N);
   end Visit_procedure_call_nonterminal;
   procedure Before_pkg_decl_nonterminal1(
      I : access DFS;
      N : access pkg_decl_Model.pkg_decl_nonterminal1'Class) is
   begin
      null;
   end Before_pkg_decl_nonterminal1;
   procedure After_pkg_decl_nonterminal1(
      I : access DFS;
      N : access pkg_decl_Model.pkg_decl_nonterminal1'Class) is
   begin
      null;
   end After_pkg_decl_nonterminal1;
   procedure Visit_pkg_decl_nonterminal1(
         I : access DFS;
         N : access pkg_decl_Model.pkg_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pkg_decl_nonterminal1(N);
      N.pkg_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_pkg_decl_nonterminal1(N);
   end Visit_pkg_decl_nonterminal1;
   procedure Before_pkg_decl_nonterminal2(
      I : access DFS;
      N : access pkg_decl_Model.pkg_decl_nonterminal2'Class) is
   begin
      null;
   end Before_pkg_decl_nonterminal2;
   procedure After_pkg_decl_nonterminal2(
      I : access DFS;
      N : access pkg_decl_Model.pkg_decl_nonterminal2'Class) is
   begin
      null;
   end After_pkg_decl_nonterminal2;
   procedure Visit_pkg_decl_nonterminal2(
         I : access DFS;
         N : access pkg_decl_Model.pkg_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pkg_decl_nonterminal2(N);
      N.generic_pkg_inst_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_pkg_decl_nonterminal2(N);
   end Visit_pkg_decl_nonterminal2;
   procedure Before_pkg_spec_nonterminal(
      I : access DFS;
      N : access pkg_spec_Model.pkg_spec_nonterminal'Class) is
   begin
      null;
   end Before_pkg_spec_nonterminal;
   procedure After_pkg_spec_nonterminal(
      I : access DFS;
      N : access pkg_spec_Model.pkg_spec_nonterminal'Class) is
   begin
      null;
   end After_pkg_spec_nonterminal;
   procedure Visit_pkg_spec_nonterminal(
         I : access DFS;
         N : access pkg_spec_Model.pkg_spec_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pkg_spec_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      N.compound_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.decl_item_s_part.Acceptor(I);
      N.private_part_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.c_id_opt_part.Acceptor(I);
      I_Classwide.After_pkg_spec_nonterminal(N);
   end Visit_pkg_spec_nonterminal;
   procedure Before_private_part_nonterminal1(
      I : access DFS;
      N : access private_part_Model.private_part_nonterminal1'Class) is
   begin
      null;
   end Before_private_part_nonterminal1;
   procedure After_private_part_nonterminal1(
      I : access DFS;
      N : access private_part_Model.private_part_nonterminal1'Class) is
   begin
      null;
   end After_private_part_nonterminal1;
   procedure Visit_private_part_nonterminal1(
         I : access DFS;
         N : access private_part_Model.private_part_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_private_part_nonterminal1(N);
      I_Classwide.After_private_part_nonterminal1(N);
   end Visit_private_part_nonterminal1;
   procedure Before_private_part_nonterminal2(
      I : access DFS;
      N : access private_part_Model.private_part_nonterminal2'Class) is
   begin
      null;
   end Before_private_part_nonterminal2;
   procedure After_private_part_nonterminal2(
      I : access DFS;
      N : access private_part_Model.private_part_nonterminal2'Class) is
   begin
      null;
   end After_private_part_nonterminal2;
   procedure Visit_private_part_nonterminal2(
         I : access DFS;
         N : access private_part_Model.private_part_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_private_part_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      N.decl_item_s_part.Acceptor(I);
      I_Classwide.After_private_part_nonterminal2(N);
   end Visit_private_part_nonterminal2;
   procedure Before_c_id_opt_nonterminal1(
      I : access DFS;
      N : access c_id_opt_Model.c_id_opt_nonterminal1'Class) is
   begin
      null;
   end Before_c_id_opt_nonterminal1;
   procedure After_c_id_opt_nonterminal1(
      I : access DFS;
      N : access c_id_opt_Model.c_id_opt_nonterminal1'Class) is
   begin
      null;
   end After_c_id_opt_nonterminal1;
   procedure Visit_c_id_opt_nonterminal1(
         I : access DFS;
         N : access c_id_opt_Model.c_id_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_c_id_opt_nonterminal1(N);
      I_Classwide.After_c_id_opt_nonterminal1(N);
   end Visit_c_id_opt_nonterminal1;
   procedure Before_c_id_opt_nonterminal2(
      I : access DFS;
      N : access c_id_opt_Model.c_id_opt_nonterminal2'Class) is
   begin
      null;
   end Before_c_id_opt_nonterminal2;
   procedure After_c_id_opt_nonterminal2(
      I : access DFS;
      N : access c_id_opt_Model.c_id_opt_nonterminal2'Class) is
   begin
      null;
   end After_c_id_opt_nonterminal2;
   procedure Visit_c_id_opt_nonterminal2(
         I : access DFS;
         N : access c_id_opt_Model.c_id_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_c_id_opt_nonterminal2(N);
      N.compound_name_part.Acceptor(I);
      I_Classwide.After_c_id_opt_nonterminal2(N);
   end Visit_c_id_opt_nonterminal2;
   procedure Before_pkg_body_nonterminal(
      I : access DFS;
      N : access pkg_body_Model.pkg_body_nonterminal'Class) is
   begin
      null;
   end Before_pkg_body_nonterminal;
   procedure After_pkg_body_nonterminal(
      I : access DFS;
      N : access pkg_body_Model.pkg_body_nonterminal'Class) is
   begin
      null;
   end After_pkg_body_nonterminal;
   procedure Visit_pkg_body_nonterminal(
         I : access DFS;
         N : access pkg_body_Model.pkg_body_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_pkg_body_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      I_Classwide.Visit_Parseable_Token(N.BODY_part);
      N.compound_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.decl_part_part.Acceptor(I);
      N.body_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.c_id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_pkg_body_nonterminal(N);
   end Visit_pkg_body_nonterminal;
   procedure Before_body_opt_nonterminal1(
      I : access DFS;
      N : access body_opt_Model.body_opt_nonterminal1'Class) is
   begin
      null;
   end Before_body_opt_nonterminal1;
   procedure After_body_opt_nonterminal1(
      I : access DFS;
      N : access body_opt_Model.body_opt_nonterminal1'Class) is
   begin
      null;
   end After_body_opt_nonterminal1;
   procedure Visit_body_opt_nonterminal1(
         I : access DFS;
         N : access body_opt_Model.body_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_opt_nonterminal1(N);
      I_Classwide.After_body_opt_nonterminal1(N);
   end Visit_body_opt_nonterminal1;
   procedure Before_body_opt_nonterminal2(
      I : access DFS;
      N : access body_opt_Model.body_opt_nonterminal2'Class) is
   begin
      null;
   end Before_body_opt_nonterminal2;
   procedure After_body_opt_nonterminal2(
      I : access DFS;
      N : access body_opt_Model.body_opt_nonterminal2'Class) is
   begin
      null;
   end After_body_opt_nonterminal2;
   procedure Visit_body_opt_nonterminal2(
         I : access DFS;
         N : access body_opt_Model.body_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_opt_nonterminal2(N);
      N.block_body_part.Acceptor(I);
      I_Classwide.After_body_opt_nonterminal2(N);
   end Visit_body_opt_nonterminal2;
   procedure Before_private_type_nonterminal(
      I : access DFS;
      N : access private_type_Model.private_type_nonterminal'Class) is
   begin
      null;
   end Before_private_type_nonterminal;
   procedure After_private_type_nonterminal(
      I : access DFS;
      N : access private_type_Model.private_type_nonterminal'Class) is
   begin
      null;
   end After_private_type_nonterminal;
   procedure Visit_private_type_nonterminal(
         I : access DFS;
         N : access private_type_Model.private_type_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_private_type_nonterminal(N);
      N.tagged_opt_part.Acceptor(I);
      N.limited_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      I_Classwide.After_private_type_nonterminal(N);
   end Visit_private_type_nonterminal;
   procedure Before_limited_opt_nonterminal1(
      I : access DFS;
      N : access limited_opt_Model.limited_opt_nonterminal1'Class) is
   begin
      null;
   end Before_limited_opt_nonterminal1;
   procedure After_limited_opt_nonterminal1(
      I : access DFS;
      N : access limited_opt_Model.limited_opt_nonterminal1'Class) is
   begin
      null;
   end After_limited_opt_nonterminal1;
   procedure Visit_limited_opt_nonterminal1(
         I : access DFS;
         N : access limited_opt_Model.limited_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_limited_opt_nonterminal1(N);
      I_Classwide.After_limited_opt_nonterminal1(N);
   end Visit_limited_opt_nonterminal1;
   procedure Before_limited_opt_nonterminal2(
      I : access DFS;
      N : access limited_opt_Model.limited_opt_nonterminal2'Class) is
   begin
      null;
   end Before_limited_opt_nonterminal2;
   procedure After_limited_opt_nonterminal2(
      I : access DFS;
      N : access limited_opt_Model.limited_opt_nonterminal2'Class) is
   begin
      null;
   end After_limited_opt_nonterminal2;
   procedure Visit_limited_opt_nonterminal2(
         I : access DFS;
         N : access limited_opt_Model.limited_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_limited_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.LIMITED_part);
      I_Classwide.After_limited_opt_nonterminal2(N);
   end Visit_limited_opt_nonterminal2;
   procedure Before_use_clause_nonterminal1(
      I : access DFS;
      N : access use_clause_Model.use_clause_nonterminal1'Class) is
   begin
      null;
   end Before_use_clause_nonterminal1;
   procedure After_use_clause_nonterminal1(
      I : access DFS;
      N : access use_clause_Model.use_clause_nonterminal1'Class) is
   begin
      null;
   end After_use_clause_nonterminal1;
   procedure Visit_use_clause_nonterminal1(
         I : access DFS;
         N : access use_clause_Model.use_clause_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_use_clause_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.USE_part);
      N.name_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_use_clause_nonterminal1(N);
   end Visit_use_clause_nonterminal1;
   procedure Before_use_clause_nonterminal2(
      I : access DFS;
      N : access use_clause_Model.use_clause_nonterminal2'Class) is
   begin
      null;
   end Before_use_clause_nonterminal2;
   procedure After_use_clause_nonterminal2(
      I : access DFS;
      N : access use_clause_Model.use_clause_nonterminal2'Class) is
   begin
      null;
   end After_use_clause_nonterminal2;
   procedure Visit_use_clause_nonterminal2(
         I : access DFS;
         N : access use_clause_Model.use_clause_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_use_clause_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.USE_part);
      I_Classwide.Visit_Parseable_Token(N.TYPE_part);
      N.name_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_use_clause_nonterminal2(N);
   end Visit_use_clause_nonterminal2;
   procedure Before_name_s_nonterminal1(
      I : access DFS;
      N : access name_s_Model.name_s_nonterminal1'Class) is
   begin
      null;
   end Before_name_s_nonterminal1;
   procedure After_name_s_nonterminal1(
      I : access DFS;
      N : access name_s_Model.name_s_nonterminal1'Class) is
   begin
      null;
   end After_name_s_nonterminal1;
   procedure Visit_name_s_nonterminal1(
         I : access DFS;
         N : access name_s_Model.name_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_s_nonterminal1(N);
      N.name_part.Acceptor(I);
      I_Classwide.After_name_s_nonterminal1(N);
   end Visit_name_s_nonterminal1;
   procedure Before_name_s_nonterminal2(
      I : access DFS;
      N : access name_s_Model.name_s_nonterminal2'Class) is
   begin
      null;
   end Before_name_s_nonterminal2;
   procedure After_name_s_nonterminal2(
      I : access DFS;
      N : access name_s_Model.name_s_nonterminal2'Class) is
   begin
      null;
   end After_name_s_nonterminal2;
   procedure Visit_name_s_nonterminal2(
         I : access DFS;
         N : access name_s_Model.name_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_name_s_nonterminal2(N);
      N.name_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COMMA_part);
      N.name_part.Acceptor(I);
      I_Classwide.After_name_s_nonterminal2(N);
   end Visit_name_s_nonterminal2;
   procedure Before_rename_decl_nonterminal1(
      I : access DFS;
      N : access rename_decl_Model.rename_decl_nonterminal1'Class) is
   begin
      null;
   end Before_rename_decl_nonterminal1;
   procedure After_rename_decl_nonterminal1(
      I : access DFS;
      N : access rename_decl_Model.rename_decl_nonterminal1'Class) is
   begin
      null;
   end After_rename_decl_nonterminal1;
   procedure Visit_rename_decl_nonterminal1(
         I : access DFS;
         N : access rename_decl_Model.rename_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rename_decl_nonterminal1(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      N.object_qualifier_opt_part.Acceptor(I);
      N.subtype_ind_part.Acceptor(I);
      N.renaming_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_rename_decl_nonterminal1(N);
   end Visit_rename_decl_nonterminal1;
   procedure Before_rename_decl_nonterminal2(
      I : access DFS;
      N : access rename_decl_Model.rename_decl_nonterminal2'Class) is
   begin
      null;
   end Before_rename_decl_nonterminal2;
   procedure After_rename_decl_nonterminal2(
      I : access DFS;
      N : access rename_decl_Model.rename_decl_nonterminal2'Class) is
   begin
      null;
   end After_rename_decl_nonterminal2;
   procedure Visit_rename_decl_nonterminal2(
         I : access DFS;
         N : access rename_decl_Model.rename_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rename_decl_nonterminal2(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      I_Classwide.Visit_Parseable_Token(N.EXCEPTION_part);
      N.renaming_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_rename_decl_nonterminal2(N);
   end Visit_rename_decl_nonterminal2;
   procedure Before_rename_decl_nonterminal3(
      I : access DFS;
      N : access rename_decl_Model.rename_decl_nonterminal3'Class) is
   begin
      null;
   end Before_rename_decl_nonterminal3;
   procedure After_rename_decl_nonterminal3(
      I : access DFS;
      N : access rename_decl_Model.rename_decl_nonterminal3'Class) is
   begin
      null;
   end After_rename_decl_nonterminal3;
   procedure Visit_rename_decl_nonterminal3(
         I : access DFS;
         N : access rename_decl_Model.rename_decl_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rename_decl_nonterminal3(N);
      N.rename_unit_part.Acceptor(I);
      I_Classwide.After_rename_decl_nonterminal3(N);
   end Visit_rename_decl_nonterminal3;
   procedure Before_rename_unit_nonterminal1(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal1'Class) is
   begin
      null;
   end Before_rename_unit_nonterminal1;
   procedure After_rename_unit_nonterminal1(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal1'Class) is
   begin
      null;
   end After_rename_unit_nonterminal1;
   procedure Visit_rename_unit_nonterminal1(
         I : access DFS;
         N : access rename_unit_Model.rename_unit_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rename_unit_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      N.compound_name_part.Acceptor(I);
      N.renaming_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_rename_unit_nonterminal1(N);
   end Visit_rename_unit_nonterminal1;
   procedure Before_rename_unit_nonterminal2(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal2'Class) is
   begin
      null;
   end Before_rename_unit_nonterminal2;
   procedure After_rename_unit_nonterminal2(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal2'Class) is
   begin
      null;
   end After_rename_unit_nonterminal2;
   procedure Visit_rename_unit_nonterminal2(
         I : access DFS;
         N : access rename_unit_Model.rename_unit_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rename_unit_nonterminal2(N);
      N.subprog_spec_part.Acceptor(I);
      N.renaming_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_rename_unit_nonterminal2(N);
   end Visit_rename_unit_nonterminal2;
   procedure Before_rename_unit_nonterminal3(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal3'Class) is
   begin
      null;
   end Before_rename_unit_nonterminal3;
   procedure After_rename_unit_nonterminal3(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal3'Class) is
   begin
      null;
   end After_rename_unit_nonterminal3;
   procedure Visit_rename_unit_nonterminal3(
         I : access DFS;
         N : access rename_unit_Model.rename_unit_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rename_unit_nonterminal3(N);
      N.generic_formal_part_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      N.compound_name_part.Acceptor(I);
      N.renaming_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_rename_unit_nonterminal3(N);
   end Visit_rename_unit_nonterminal3;
   procedure Before_rename_unit_nonterminal4(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal4'Class) is
   begin
      null;
   end Before_rename_unit_nonterminal4;
   procedure After_rename_unit_nonterminal4(
      I : access DFS;
      N : access rename_unit_Model.rename_unit_nonterminal4'Class) is
   begin
      null;
   end After_rename_unit_nonterminal4;
   procedure Visit_rename_unit_nonterminal4(
         I : access DFS;
         N : access rename_unit_Model.rename_unit_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rename_unit_nonterminal4(N);
      N.generic_formal_part_part.Acceptor(I);
      N.subprog_spec_part.Acceptor(I);
      N.renaming_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_rename_unit_nonterminal4(N);
   end Visit_rename_unit_nonterminal4;
   procedure Before_renaming_nonterminal(
      I : access DFS;
      N : access renaming_Model.renaming_nonterminal'Class) is
   begin
      null;
   end Before_renaming_nonterminal;
   procedure After_renaming_nonterminal(
      I : access DFS;
      N : access renaming_Model.renaming_nonterminal'Class) is
   begin
      null;
   end After_renaming_nonterminal;
   procedure Visit_renaming_nonterminal(
         I : access DFS;
         N : access renaming_Model.renaming_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_renaming_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.RENAMES_part);
      N.name_part.Acceptor(I);
      I_Classwide.After_renaming_nonterminal(N);
   end Visit_renaming_nonterminal;
   procedure Before_task_decl_nonterminal(
      I : access DFS;
      N : access task_decl_Model.task_decl_nonterminal'Class) is
   begin
      null;
   end Before_task_decl_nonterminal;
   procedure After_task_decl_nonterminal(
      I : access DFS;
      N : access task_decl_Model.task_decl_nonterminal'Class) is
   begin
      null;
   end After_task_decl_nonterminal;
   procedure Visit_task_decl_nonterminal(
         I : access DFS;
         N : access task_decl_Model.task_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_decl_nonterminal(N);
      N.task_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_task_decl_nonterminal(N);
   end Visit_task_decl_nonterminal;
   procedure Before_task_spec_nonterminal1(
      I : access DFS;
      N : access task_spec_Model.task_spec_nonterminal1'Class) is
   begin
      null;
   end Before_task_spec_nonterminal1;
   procedure After_task_spec_nonterminal1(
      I : access DFS;
      N : access task_spec_Model.task_spec_nonterminal1'Class) is
   begin
      null;
   end After_task_spec_nonterminal1;
   procedure Visit_task_spec_nonterminal1(
         I : access DFS;
         N : access task_spec_Model.task_spec_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_spec_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.TASK_part);
      N.simple_name_part.Acceptor(I);
      N.task_def_part.Acceptor(I);
      I_Classwide.After_task_spec_nonterminal1(N);
   end Visit_task_spec_nonterminal1;
   procedure Before_task_spec_nonterminal2(
      I : access DFS;
      N : access task_spec_Model.task_spec_nonterminal2'Class) is
   begin
      null;
   end Before_task_spec_nonterminal2;
   procedure After_task_spec_nonterminal2(
      I : access DFS;
      N : access task_spec_Model.task_spec_nonterminal2'Class) is
   begin
      null;
   end After_task_spec_nonterminal2;
   procedure Visit_task_spec_nonterminal2(
         I : access DFS;
         N : access task_spec_Model.task_spec_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_spec_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.TASK_part);
      I_Classwide.Visit_Parseable_Token(N.TYPE_part);
      N.simple_name_part.Acceptor(I);
      N.discrim_part_opt_part.Acceptor(I);
      N.task_def_part.Acceptor(I);
      I_Classwide.After_task_spec_nonterminal2(N);
   end Visit_task_spec_nonterminal2;
   procedure Before_task_def_nonterminal1(
      I : access DFS;
      N : access task_def_Model.task_def_nonterminal1'Class) is
   begin
      null;
   end Before_task_def_nonterminal1;
   procedure After_task_def_nonterminal1(
      I : access DFS;
      N : access task_def_Model.task_def_nonterminal1'Class) is
   begin
      null;
   end After_task_def_nonterminal1;
   procedure Visit_task_def_nonterminal1(
         I : access DFS;
         N : access task_def_Model.task_def_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_def_nonterminal1(N);
      I_Classwide.After_task_def_nonterminal1(N);
   end Visit_task_def_nonterminal1;
   procedure Before_task_def_nonterminal2(
      I : access DFS;
      N : access task_def_Model.task_def_nonterminal2'Class) is
   begin
      null;
   end Before_task_def_nonterminal2;
   procedure After_task_def_nonterminal2(
      I : access DFS;
      N : access task_def_Model.task_def_nonterminal2'Class) is
   begin
      null;
   end After_task_def_nonterminal2;
   procedure Visit_task_def_nonterminal2(
         I : access DFS;
         N : access task_def_Model.task_def_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_def_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.entry_decl_s_part.Acceptor(I);
      N.rep_spec_s_part.Acceptor(I);
      N.task_private_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.After_task_def_nonterminal2(N);
   end Visit_task_def_nonterminal2;
   procedure Before_task_private_opt_nonterminal1(
      I : access DFS;
      N : access task_private_opt_Model.task_private_opt_nonterminal1'Class) is
   begin
      null;
   end Before_task_private_opt_nonterminal1;
   procedure After_task_private_opt_nonterminal1(
      I : access DFS;
      N : access task_private_opt_Model.task_private_opt_nonterminal1'Class) is
   begin
      null;
   end After_task_private_opt_nonterminal1;
   procedure Visit_task_private_opt_nonterminal1(
         I : access DFS;
         N : access task_private_opt_Model.task_private_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_private_opt_nonterminal1(N);
      I_Classwide.After_task_private_opt_nonterminal1(N);
   end Visit_task_private_opt_nonterminal1;
   procedure Before_task_private_opt_nonterminal2(
      I : access DFS;
      N : access task_private_opt_Model.task_private_opt_nonterminal2'Class) is
   begin
      null;
   end Before_task_private_opt_nonterminal2;
   procedure After_task_private_opt_nonterminal2(
      I : access DFS;
      N : access task_private_opt_Model.task_private_opt_nonterminal2'Class) is
   begin
      null;
   end After_task_private_opt_nonterminal2;
   procedure Visit_task_private_opt_nonterminal2(
         I : access DFS;
         N : access task_private_opt_Model.task_private_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_private_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      N.entry_decl_s_part.Acceptor(I);
      N.rep_spec_s_part.Acceptor(I);
      I_Classwide.After_task_private_opt_nonterminal2(N);
   end Visit_task_private_opt_nonterminal2;
   procedure Before_task_body_nonterminal(
      I : access DFS;
      N : access task_body_Model.task_body_nonterminal'Class) is
   begin
      null;
   end Before_task_body_nonterminal;
   procedure After_task_body_nonterminal(
      I : access DFS;
      N : access task_body_Model.task_body_nonterminal'Class) is
   begin
      null;
   end After_task_body_nonterminal;
   procedure Visit_task_body_nonterminal(
         I : access DFS;
         N : access task_body_Model.task_body_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_task_body_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.TASK_part);
      I_Classwide.Visit_Parseable_Token(N.BODY_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.decl_part_part.Acceptor(I);
      N.block_body_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_task_body_nonterminal(N);
   end Visit_task_body_nonterminal;
   procedure Before_prot_decl_nonterminal(
      I : access DFS;
      N : access prot_decl_Model.prot_decl_nonterminal'Class) is
   begin
      null;
   end Before_prot_decl_nonterminal;
   procedure After_prot_decl_nonterminal(
      I : access DFS;
      N : access prot_decl_Model.prot_decl_nonterminal'Class) is
   begin
      null;
   end After_prot_decl_nonterminal;
   procedure Visit_prot_decl_nonterminal(
         I : access DFS;
         N : access prot_decl_Model.prot_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_decl_nonterminal(N);
      N.prot_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_prot_decl_nonterminal(N);
   end Visit_prot_decl_nonterminal;
   procedure Before_prot_spec_nonterminal1(
      I : access DFS;
      N : access prot_spec_Model.prot_spec_nonterminal1'Class) is
   begin
      null;
   end Before_prot_spec_nonterminal1;
   procedure After_prot_spec_nonterminal1(
      I : access DFS;
      N : access prot_spec_Model.prot_spec_nonterminal1'Class) is
   begin
      null;
   end After_prot_spec_nonterminal1;
   procedure Visit_prot_spec_nonterminal1(
         I : access DFS;
         N : access prot_spec_Model.prot_spec_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_spec_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.PROTECTED_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      N.prot_def_part.Acceptor(I);
      I_Classwide.After_prot_spec_nonterminal1(N);
   end Visit_prot_spec_nonterminal1;
   procedure Before_prot_spec_nonterminal2(
      I : access DFS;
      N : access prot_spec_Model.prot_spec_nonterminal2'Class) is
   begin
      null;
   end Before_prot_spec_nonterminal2;
   procedure After_prot_spec_nonterminal2(
      I : access DFS;
      N : access prot_spec_Model.prot_spec_nonterminal2'Class) is
   begin
      null;
   end After_prot_spec_nonterminal2;
   procedure Visit_prot_spec_nonterminal2(
         I : access DFS;
         N : access prot_spec_Model.prot_spec_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_spec_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PROTECTED_part);
      I_Classwide.Visit_Parseable_Token(N.TYPE_part);
      N.simple_name_part.Acceptor(I);
      N.discrim_part_opt_part.Acceptor(I);
      N.prot_def_part.Acceptor(I);
      I_Classwide.After_prot_spec_nonterminal2(N);
   end Visit_prot_spec_nonterminal2;
   procedure Before_prot_def_nonterminal(
      I : access DFS;
      N : access prot_def_Model.prot_def_nonterminal'Class) is
   begin
      null;
   end Before_prot_def_nonterminal;
   procedure After_prot_def_nonterminal(
      I : access DFS;
      N : access prot_def_Model.prot_def_nonterminal'Class) is
   begin
      null;
   end After_prot_def_nonterminal;
   procedure Visit_prot_def_nonterminal(
         I : access DFS;
         N : access prot_def_Model.prot_def_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_def_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.prot_op_decl_s_part.Acceptor(I);
      N.prot_private_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.After_prot_def_nonterminal(N);
   end Visit_prot_def_nonterminal;
   procedure Before_prot_private_opt_nonterminal1(
      I : access DFS;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal1'Class) is
   begin
      null;
   end Before_prot_private_opt_nonterminal1;
   procedure After_prot_private_opt_nonterminal1(
      I : access DFS;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal1'Class) is
   begin
      null;
   end After_prot_private_opt_nonterminal1;
   procedure Visit_prot_private_opt_nonterminal1(
         I : access DFS;
         N : access prot_private_opt_Model.prot_private_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_private_opt_nonterminal1(N);
      I_Classwide.After_prot_private_opt_nonterminal1(N);
   end Visit_prot_private_opt_nonterminal1;
   procedure Before_prot_private_opt_nonterminal2(
      I : access DFS;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal2'Class) is
   begin
      null;
   end Before_prot_private_opt_nonterminal2;
   procedure After_prot_private_opt_nonterminal2(
      I : access DFS;
      N : access prot_private_opt_Model.prot_private_opt_nonterminal2'Class) is
   begin
      null;
   end After_prot_private_opt_nonterminal2;
   procedure Visit_prot_private_opt_nonterminal2(
         I : access DFS;
         N : access prot_private_opt_Model.prot_private_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_private_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      N.prot_elem_decl_s_part.Acceptor(I);
      I_Classwide.After_prot_private_opt_nonterminal2(N);
   end Visit_prot_private_opt_nonterminal2;
   procedure Before_prot_op_decl_s_nonterminal1(
      I : access DFS;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal1'Class) is
   begin
      null;
   end Before_prot_op_decl_s_nonterminal1;
   procedure After_prot_op_decl_s_nonterminal1(
      I : access DFS;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal1'Class) is
   begin
      null;
   end After_prot_op_decl_s_nonterminal1;
   procedure Visit_prot_op_decl_s_nonterminal1(
         I : access DFS;
         N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_decl_s_nonterminal1(N);
      I_Classwide.After_prot_op_decl_s_nonterminal1(N);
   end Visit_prot_op_decl_s_nonterminal1;
   procedure Before_prot_op_decl_s_nonterminal2(
      I : access DFS;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal2'Class) is
   begin
      null;
   end Before_prot_op_decl_s_nonterminal2;
   procedure After_prot_op_decl_s_nonterminal2(
      I : access DFS;
      N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal2'Class) is
   begin
      null;
   end After_prot_op_decl_s_nonterminal2;
   procedure Visit_prot_op_decl_s_nonterminal2(
         I : access DFS;
         N : access prot_op_decl_s_Model.prot_op_decl_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_decl_s_nonterminal2(N);
      N.prot_op_decl_s_part.Acceptor(I);
      N.prot_op_decl_part.Acceptor(I);
      I_Classwide.After_prot_op_decl_s_nonterminal2(N);
   end Visit_prot_op_decl_s_nonterminal2;
   procedure Before_prot_op_decl_nonterminal1(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal1'Class) is
   begin
      null;
   end Before_prot_op_decl_nonterminal1;
   procedure After_prot_op_decl_nonterminal1(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal1'Class) is
   begin
      null;
   end After_prot_op_decl_nonterminal1;
   procedure Visit_prot_op_decl_nonterminal1(
         I : access DFS;
         N : access prot_op_decl_Model.prot_op_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_decl_nonterminal1(N);
      N.entry_decl_part.Acceptor(I);
      I_Classwide.After_prot_op_decl_nonterminal1(N);
   end Visit_prot_op_decl_nonterminal1;
   procedure Before_prot_op_decl_nonterminal2(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal2'Class) is
   begin
      null;
   end Before_prot_op_decl_nonterminal2;
   procedure After_prot_op_decl_nonterminal2(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal2'Class) is
   begin
      null;
   end After_prot_op_decl_nonterminal2;
   procedure Visit_prot_op_decl_nonterminal2(
         I : access DFS;
         N : access prot_op_decl_Model.prot_op_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_decl_nonterminal2(N);
      N.subprog_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_prot_op_decl_nonterminal2(N);
   end Visit_prot_op_decl_nonterminal2;
   procedure Before_prot_op_decl_nonterminal3(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal3'Class) is
   begin
      null;
   end Before_prot_op_decl_nonterminal3;
   procedure After_prot_op_decl_nonterminal3(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal3'Class) is
   begin
      null;
   end After_prot_op_decl_nonterminal3;
   procedure Visit_prot_op_decl_nonterminal3(
         I : access DFS;
         N : access prot_op_decl_Model.prot_op_decl_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_decl_nonterminal3(N);
      N.rep_spec_part.Acceptor(I);
      I_Classwide.After_prot_op_decl_nonterminal3(N);
   end Visit_prot_op_decl_nonterminal3;
   procedure Before_prot_op_decl_nonterminal4(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal4'Class) is
   begin
      null;
   end Before_prot_op_decl_nonterminal4;
   procedure After_prot_op_decl_nonterminal4(
      I : access DFS;
      N : access prot_op_decl_Model.prot_op_decl_nonterminal4'Class) is
   begin
      null;
   end After_prot_op_decl_nonterminal4;
   procedure Visit_prot_op_decl_nonterminal4(
         I : access DFS;
         N : access prot_op_decl_Model.prot_op_decl_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_decl_nonterminal4(N);
      N.pragma_sym_part.Acceptor(I);
      I_Classwide.After_prot_op_decl_nonterminal4(N);
   end Visit_prot_op_decl_nonterminal4;
   procedure Before_prot_elem_decl_s_nonterminal1(
      I : access DFS;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal1'Class) is
   begin
      null;
   end Before_prot_elem_decl_s_nonterminal1;
   procedure After_prot_elem_decl_s_nonterminal1(
      I : access DFS;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal1'Class) is
   begin
      null;
   end After_prot_elem_decl_s_nonterminal1;
   procedure Visit_prot_elem_decl_s_nonterminal1(
         I : access DFS;
         N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_elem_decl_s_nonterminal1(N);
      I_Classwide.After_prot_elem_decl_s_nonterminal1(N);
   end Visit_prot_elem_decl_s_nonterminal1;
   procedure Before_prot_elem_decl_s_nonterminal2(
      I : access DFS;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal2'Class) is
   begin
      null;
   end Before_prot_elem_decl_s_nonterminal2;
   procedure After_prot_elem_decl_s_nonterminal2(
      I : access DFS;
      N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal2'Class) is
   begin
      null;
   end After_prot_elem_decl_s_nonterminal2;
   procedure Visit_prot_elem_decl_s_nonterminal2(
         I : access DFS;
         N : access prot_elem_decl_s_Model.prot_elem_decl_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_elem_decl_s_nonterminal2(N);
      N.prot_elem_decl_s_part.Acceptor(I);
      N.prot_elem_decl_part.Acceptor(I);
      I_Classwide.After_prot_elem_decl_s_nonterminal2(N);
   end Visit_prot_elem_decl_s_nonterminal2;
   procedure Before_prot_elem_decl_nonterminal1(
      I : access DFS;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal1'Class) is
   begin
      null;
   end Before_prot_elem_decl_nonterminal1;
   procedure After_prot_elem_decl_nonterminal1(
      I : access DFS;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal1'Class) is
   begin
      null;
   end After_prot_elem_decl_nonterminal1;
   procedure Visit_prot_elem_decl_nonterminal1(
         I : access DFS;
         N : access prot_elem_decl_Model.prot_elem_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_elem_decl_nonterminal1(N);
      N.prot_op_decl_part.Acceptor(I);
      I_Classwide.After_prot_elem_decl_nonterminal1(N);
   end Visit_prot_elem_decl_nonterminal1;
   procedure Before_prot_elem_decl_nonterminal2(
      I : access DFS;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal2'Class) is
   begin
      null;
   end Before_prot_elem_decl_nonterminal2;
   procedure After_prot_elem_decl_nonterminal2(
      I : access DFS;
      N : access prot_elem_decl_Model.prot_elem_decl_nonterminal2'Class) is
   begin
      null;
   end After_prot_elem_decl_nonterminal2;
   procedure Visit_prot_elem_decl_nonterminal2(
         I : access DFS;
         N : access prot_elem_decl_Model.prot_elem_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_elem_decl_nonterminal2(N);
      N.comp_decl_part.Acceptor(I);
      I_Classwide.After_prot_elem_decl_nonterminal2(N);
   end Visit_prot_elem_decl_nonterminal2;
   procedure Before_prot_body_nonterminal(
      I : access DFS;
      N : access prot_body_Model.prot_body_nonterminal'Class) is
   begin
      null;
   end Before_prot_body_nonterminal;
   procedure After_prot_body_nonterminal(
      I : access DFS;
      N : access prot_body_Model.prot_body_nonterminal'Class) is
   begin
      null;
   end After_prot_body_nonterminal;
   procedure Visit_prot_body_nonterminal(
         I : access DFS;
         N : access prot_body_Model.prot_body_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_body_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.PROTECTED_part);
      I_Classwide.Visit_Parseable_Token(N.BODY_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.prot_op_body_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_prot_body_nonterminal(N);
   end Visit_prot_body_nonterminal;
   procedure Before_prot_op_body_s_nonterminal1(
      I : access DFS;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal1'Class) is
   begin
      null;
   end Before_prot_op_body_s_nonterminal1;
   procedure After_prot_op_body_s_nonterminal1(
      I : access DFS;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal1'Class) is
   begin
      null;
   end After_prot_op_body_s_nonterminal1;
   procedure Visit_prot_op_body_s_nonterminal1(
         I : access DFS;
         N : access prot_op_body_s_Model.prot_op_body_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_body_s_nonterminal1(N);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_prot_op_body_s_nonterminal1(N);
   end Visit_prot_op_body_s_nonterminal1;
   procedure Before_prot_op_body_s_nonterminal2(
      I : access DFS;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal2'Class) is
   begin
      null;
   end Before_prot_op_body_s_nonterminal2;
   procedure After_prot_op_body_s_nonterminal2(
      I : access DFS;
      N : access prot_op_body_s_Model.prot_op_body_s_nonterminal2'Class) is
   begin
      null;
   end After_prot_op_body_s_nonterminal2;
   procedure Visit_prot_op_body_s_nonterminal2(
         I : access DFS;
         N : access prot_op_body_s_Model.prot_op_body_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_body_s_nonterminal2(N);
      N.prot_op_body_s_part.Acceptor(I);
      N.prot_op_body_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_prot_op_body_s_nonterminal2(N);
   end Visit_prot_op_body_s_nonterminal2;
   procedure Before_prot_op_body_nonterminal1(
      I : access DFS;
      N : access prot_op_body_Model.prot_op_body_nonterminal1'Class) is
   begin
      null;
   end Before_prot_op_body_nonterminal1;
   procedure After_prot_op_body_nonterminal1(
      I : access DFS;
      N : access prot_op_body_Model.prot_op_body_nonterminal1'Class) is
   begin
      null;
   end After_prot_op_body_nonterminal1;
   procedure Visit_prot_op_body_nonterminal1(
         I : access DFS;
         N : access prot_op_body_Model.prot_op_body_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_body_nonterminal1(N);
      N.entry_body_part.Acceptor(I);
      I_Classwide.After_prot_op_body_nonterminal1(N);
   end Visit_prot_op_body_nonterminal1;
   procedure Before_prot_op_body_nonterminal2(
      I : access DFS;
      N : access prot_op_body_Model.prot_op_body_nonterminal2'Class) is
   begin
      null;
   end Before_prot_op_body_nonterminal2;
   procedure After_prot_op_body_nonterminal2(
      I : access DFS;
      N : access prot_op_body_Model.prot_op_body_nonterminal2'Class) is
   begin
      null;
   end After_prot_op_body_nonterminal2;
   procedure Visit_prot_op_body_nonterminal2(
         I : access DFS;
         N : access prot_op_body_Model.prot_op_body_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_body_nonterminal2(N);
      N.subprog_body_part.Acceptor(I);
      I_Classwide.After_prot_op_body_nonterminal2(N);
   end Visit_prot_op_body_nonterminal2;
   procedure Before_prot_op_body_nonterminal3(
      I : access DFS;
      N : access prot_op_body_Model.prot_op_body_nonterminal3'Class) is
   begin
      null;
   end Before_prot_op_body_nonterminal3;
   procedure After_prot_op_body_nonterminal3(
      I : access DFS;
      N : access prot_op_body_Model.prot_op_body_nonterminal3'Class) is
   begin
      null;
   end After_prot_op_body_nonterminal3;
   procedure Visit_prot_op_body_nonterminal3(
         I : access DFS;
         N : access prot_op_body_Model.prot_op_body_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_prot_op_body_nonterminal3(N);
      N.subprog_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_prot_op_body_nonterminal3(N);
   end Visit_prot_op_body_nonterminal3;
   procedure Before_entry_decl_s_nonterminal1(
      I : access DFS;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal1'Class) is
   begin
      null;
   end Before_entry_decl_s_nonterminal1;
   procedure After_entry_decl_s_nonterminal1(
      I : access DFS;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal1'Class) is
   begin
      null;
   end After_entry_decl_s_nonterminal1;
   procedure Visit_entry_decl_s_nonterminal1(
         I : access DFS;
         N : access entry_decl_s_Model.entry_decl_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_decl_s_nonterminal1(N);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_entry_decl_s_nonterminal1(N);
   end Visit_entry_decl_s_nonterminal1;
   procedure Before_entry_decl_s_nonterminal2(
      I : access DFS;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal2'Class) is
   begin
      null;
   end Before_entry_decl_s_nonterminal2;
   procedure After_entry_decl_s_nonterminal2(
      I : access DFS;
      N : access entry_decl_s_Model.entry_decl_s_nonterminal2'Class) is
   begin
      null;
   end After_entry_decl_s_nonterminal2;
   procedure Visit_entry_decl_s_nonterminal2(
         I : access DFS;
         N : access entry_decl_s_Model.entry_decl_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_decl_s_nonterminal2(N);
      N.entry_decl_s_part.Acceptor(I);
      N.entry_decl_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_entry_decl_s_nonterminal2(N);
   end Visit_entry_decl_s_nonterminal2;
   procedure Before_entry_decl_nonterminal1(
      I : access DFS;
      N : access entry_decl_Model.entry_decl_nonterminal1'Class) is
   begin
      null;
   end Before_entry_decl_nonterminal1;
   procedure After_entry_decl_nonterminal1(
      I : access DFS;
      N : access entry_decl_Model.entry_decl_nonterminal1'Class) is
   begin
      null;
   end After_entry_decl_nonterminal1;
   procedure Visit_entry_decl_nonterminal1(
         I : access DFS;
         N : access entry_decl_Model.entry_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_decl_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.ENTRY_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_entry_decl_nonterminal1(N);
   end Visit_entry_decl_nonterminal1;
   procedure Before_entry_decl_nonterminal2(
      I : access DFS;
      N : access entry_decl_Model.entry_decl_nonterminal2'Class) is
   begin
      null;
   end Before_entry_decl_nonterminal2;
   procedure After_entry_decl_nonterminal2(
      I : access DFS;
      N : access entry_decl_Model.entry_decl_nonterminal2'Class) is
   begin
      null;
   end After_entry_decl_nonterminal2;
   procedure Visit_entry_decl_nonterminal2(
         I : access DFS;
         N : access entry_decl_Model.entry_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_decl_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.ENTRY_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.discrete_range_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_entry_decl_nonterminal2(N);
   end Visit_entry_decl_nonterminal2;
   procedure Before_entry_body_nonterminal1(
      I : access DFS;
      N : access entry_body_Model.entry_body_nonterminal1'Class) is
   begin
      null;
   end Before_entry_body_nonterminal1;
   procedure After_entry_body_nonterminal1(
      I : access DFS;
      N : access entry_body_Model.entry_body_nonterminal1'Class) is
   begin
      null;
   end After_entry_body_nonterminal1;
   procedure Visit_entry_body_nonterminal1(
         I : access DFS;
         N : access entry_body_Model.entry_body_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_body_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.ENTRY_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      N.condition_part.Acceptor(I);
      N.entry_body_part_part.Acceptor(I);
      I_Classwide.After_entry_body_nonterminal1(N);
   end Visit_entry_body_nonterminal1;
   procedure Before_entry_body_nonterminal2(
      I : access DFS;
      N : access entry_body_Model.entry_body_nonterminal2'Class) is
   begin
      null;
   end Before_entry_body_nonterminal2;
   procedure After_entry_body_nonterminal2(
      I : access DFS;
      N : access entry_body_Model.entry_body_nonterminal2'Class) is
   begin
      null;
   end After_entry_body_nonterminal2;
   procedure Visit_entry_body_nonterminal2(
         I : access DFS;
         N : access entry_body_Model.entry_body_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_body_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.ENTRY_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.iter_part_part.Acceptor(I);
      N.discrete_range_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      N.condition_part.Acceptor(I);
      N.entry_body_part_part.Acceptor(I);
      I_Classwide.After_entry_body_nonterminal2(N);
   end Visit_entry_body_nonterminal2;
   procedure Before_entry_body_part_nonterminal1(
      I : access DFS;
      N : access entry_body_part_Model.entry_body_part_nonterminal1'Class) is
   begin
      null;
   end Before_entry_body_part_nonterminal1;
   procedure After_entry_body_part_nonterminal1(
      I : access DFS;
      N : access entry_body_part_Model.entry_body_part_nonterminal1'Class) is
   begin
      null;
   end After_entry_body_part_nonterminal1;
   procedure Visit_entry_body_part_nonterminal1(
         I : access DFS;
         N : access entry_body_part_Model.entry_body_part_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_body_part_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_entry_body_part_nonterminal1(N);
   end Visit_entry_body_part_nonterminal1;
   procedure Before_entry_body_part_nonterminal2(
      I : access DFS;
      N : access entry_body_part_Model.entry_body_part_nonterminal2'Class) is
   begin
      null;
   end Before_entry_body_part_nonterminal2;
   procedure After_entry_body_part_nonterminal2(
      I : access DFS;
      N : access entry_body_part_Model.entry_body_part_nonterminal2'Class) is
   begin
      null;
   end After_entry_body_part_nonterminal2;
   procedure Visit_entry_body_part_nonterminal2(
         I : access DFS;
         N : access entry_body_part_Model.entry_body_part_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_body_part_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.decl_part_part.Acceptor(I);
      N.block_body_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_entry_body_part_nonterminal2(N);
   end Visit_entry_body_part_nonterminal2;
   procedure Before_rep_spec_s_nonterminal1(
      I : access DFS;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal1'Class) is
   begin
      null;
   end Before_rep_spec_s_nonterminal1;
   procedure After_rep_spec_s_nonterminal1(
      I : access DFS;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal1'Class) is
   begin
      null;
   end After_rep_spec_s_nonterminal1;
   procedure Visit_rep_spec_s_nonterminal1(
         I : access DFS;
         N : access rep_spec_s_Model.rep_spec_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rep_spec_s_nonterminal1(N);
      I_Classwide.After_rep_spec_s_nonterminal1(N);
   end Visit_rep_spec_s_nonterminal1;
   procedure Before_rep_spec_s_nonterminal2(
      I : access DFS;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal2'Class) is
   begin
      null;
   end Before_rep_spec_s_nonterminal2;
   procedure After_rep_spec_s_nonterminal2(
      I : access DFS;
      N : access rep_spec_s_Model.rep_spec_s_nonterminal2'Class) is
   begin
      null;
   end After_rep_spec_s_nonterminal2;
   procedure Visit_rep_spec_s_nonterminal2(
         I : access DFS;
         N : access rep_spec_s_Model.rep_spec_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rep_spec_s_nonterminal2(N);
      N.rep_spec_s_part.Acceptor(I);
      N.rep_spec_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_rep_spec_s_nonterminal2(N);
   end Visit_rep_spec_s_nonterminal2;
   procedure Before_entry_call_nonterminal(
      I : access DFS;
      N : access entry_call_Model.entry_call_nonterminal'Class) is
   begin
      null;
   end Before_entry_call_nonterminal;
   procedure After_entry_call_nonterminal(
      I : access DFS;
      N : access entry_call_Model.entry_call_nonterminal'Class) is
   begin
      null;
   end After_entry_call_nonterminal;
   procedure Visit_entry_call_nonterminal(
         I : access DFS;
         N : access entry_call_Model.entry_call_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_call_nonterminal(N);
      N.procedure_call_part.Acceptor(I);
      I_Classwide.After_entry_call_nonterminal(N);
   end Visit_entry_call_nonterminal;
   procedure Before_accept_stmt_nonterminal1(
      I : access DFS;
      N : access accept_stmt_Model.accept_stmt_nonterminal1'Class) is
   begin
      null;
   end Before_accept_stmt_nonterminal1;
   procedure After_accept_stmt_nonterminal1(
      I : access DFS;
      N : access accept_stmt_Model.accept_stmt_nonterminal1'Class) is
   begin
      null;
   end After_accept_stmt_nonterminal1;
   procedure Visit_accept_stmt_nonterminal1(
         I : access DFS;
         N : access accept_stmt_Model.accept_stmt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_accept_stmt_nonterminal1(N);
      N.accept_hdr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_accept_stmt_nonterminal1(N);
   end Visit_accept_stmt_nonterminal1;
   procedure Before_accept_stmt_nonterminal2(
      I : access DFS;
      N : access accept_stmt_Model.accept_stmt_nonterminal2'Class) is
   begin
      null;
   end Before_accept_stmt_nonterminal2;
   procedure After_accept_stmt_nonterminal2(
      I : access DFS;
      N : access accept_stmt_Model.accept_stmt_nonterminal2'Class) is
   begin
      null;
   end After_accept_stmt_nonterminal2;
   procedure Visit_accept_stmt_nonterminal2(
         I : access DFS;
         N : access accept_stmt_Model.accept_stmt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_accept_stmt_nonterminal2(N);
      N.accept_hdr_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.DO_part);
      N.handled_stmt_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      N.id_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_accept_stmt_nonterminal2(N);
   end Visit_accept_stmt_nonterminal2;
   procedure Before_accept_hdr_nonterminal(
      I : access DFS;
      N : access accept_hdr_Model.accept_hdr_nonterminal'Class) is
   begin
      null;
   end Before_accept_hdr_nonterminal;
   procedure After_accept_hdr_nonterminal(
      I : access DFS;
      N : access accept_hdr_Model.accept_hdr_nonterminal'Class) is
   begin
      null;
   end After_accept_hdr_nonterminal;
   procedure Visit_accept_hdr_nonterminal(
         I : access DFS;
         N : access accept_hdr_Model.accept_hdr_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_accept_hdr_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.accept_part);
      N.entry_name_part.Acceptor(I);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.After_accept_hdr_nonterminal(N);
   end Visit_accept_hdr_nonterminal;
   procedure Before_entry_name_nonterminal1(
      I : access DFS;
      N : access entry_name_Model.entry_name_nonterminal1'Class) is
   begin
      null;
   end Before_entry_name_nonterminal1;
   procedure After_entry_name_nonterminal1(
      I : access DFS;
      N : access entry_name_Model.entry_name_nonterminal1'Class) is
   begin
      null;
   end After_entry_name_nonterminal1;
   procedure Visit_entry_name_nonterminal1(
         I : access DFS;
         N : access entry_name_Model.entry_name_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_name_nonterminal1(N);
      N.simple_name_part.Acceptor(I);
      I_Classwide.After_entry_name_nonterminal1(N);
   end Visit_entry_name_nonterminal1;
   procedure Before_entry_name_nonterminal2(
      I : access DFS;
      N : access entry_name_Model.entry_name_nonterminal2'Class) is
   begin
      null;
   end Before_entry_name_nonterminal2;
   procedure After_entry_name_nonterminal2(
      I : access DFS;
      N : access entry_name_Model.entry_name_nonterminal2'Class) is
   begin
      null;
   end After_entry_name_nonterminal2;
   procedure Visit_entry_name_nonterminal2(
         I : access DFS;
         N : access entry_name_Model.entry_name_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_entry_name_nonterminal2(N);
      N.entry_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_entry_name_nonterminal2(N);
   end Visit_entry_name_nonterminal2;
   procedure Before_delay_stmt_nonterminal1(
      I : access DFS;
      N : access delay_stmt_Model.delay_stmt_nonterminal1'Class) is
   begin
      null;
   end Before_delay_stmt_nonterminal1;
   procedure After_delay_stmt_nonterminal1(
      I : access DFS;
      N : access delay_stmt_Model.delay_stmt_nonterminal1'Class) is
   begin
      null;
   end After_delay_stmt_nonterminal1;
   procedure Visit_delay_stmt_nonterminal1(
         I : access DFS;
         N : access delay_stmt_Model.delay_stmt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_delay_stmt_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.DELAY_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_delay_stmt_nonterminal1(N);
   end Visit_delay_stmt_nonterminal1;
   procedure Before_delay_stmt_nonterminal2(
      I : access DFS;
      N : access delay_stmt_Model.delay_stmt_nonterminal2'Class) is
   begin
      null;
   end Before_delay_stmt_nonterminal2;
   procedure After_delay_stmt_nonterminal2(
      I : access DFS;
      N : access delay_stmt_Model.delay_stmt_nonterminal2'Class) is
   begin
      null;
   end After_delay_stmt_nonterminal2;
   procedure Visit_delay_stmt_nonterminal2(
         I : access DFS;
         N : access delay_stmt_Model.delay_stmt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_delay_stmt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.DELAY_part);
      I_Classwide.Visit_Parseable_Token(N.UNTIL_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_delay_stmt_nonterminal2(N);
   end Visit_delay_stmt_nonterminal2;
   procedure Before_select_stmt_nonterminal1(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal1'Class) is
   begin
      null;
   end Before_select_stmt_nonterminal1;
   procedure After_select_stmt_nonterminal1(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal1'Class) is
   begin
      null;
   end After_select_stmt_nonterminal1;
   procedure Visit_select_stmt_nonterminal1(
         I : access DFS;
         N : access select_stmt_Model.select_stmt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_stmt_nonterminal1(N);
      N.select_wait_part.Acceptor(I);
      I_Classwide.After_select_stmt_nonterminal1(N);
   end Visit_select_stmt_nonterminal1;
   procedure Before_select_stmt_nonterminal2(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal2'Class) is
   begin
      null;
   end Before_select_stmt_nonterminal2;
   procedure After_select_stmt_nonterminal2(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal2'Class) is
   begin
      null;
   end After_select_stmt_nonterminal2;
   procedure Visit_select_stmt_nonterminal2(
         I : access DFS;
         N : access select_stmt_Model.select_stmt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_stmt_nonterminal2(N);
      N.async_select_part.Acceptor(I);
      I_Classwide.After_select_stmt_nonterminal2(N);
   end Visit_select_stmt_nonterminal2;
   procedure Before_select_stmt_nonterminal3(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal3'Class) is
   begin
      null;
   end Before_select_stmt_nonterminal3;
   procedure After_select_stmt_nonterminal3(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal3'Class) is
   begin
      null;
   end After_select_stmt_nonterminal3;
   procedure Visit_select_stmt_nonterminal3(
         I : access DFS;
         N : access select_stmt_Model.select_stmt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_stmt_nonterminal3(N);
      N.timed_entry_call_part.Acceptor(I);
      I_Classwide.After_select_stmt_nonterminal3(N);
   end Visit_select_stmt_nonterminal3;
   procedure Before_select_stmt_nonterminal4(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal4'Class) is
   begin
      null;
   end Before_select_stmt_nonterminal4;
   procedure After_select_stmt_nonterminal4(
      I : access DFS;
      N : access select_stmt_Model.select_stmt_nonterminal4'Class) is
   begin
      null;
   end After_select_stmt_nonterminal4;
   procedure Visit_select_stmt_nonterminal4(
         I : access DFS;
         N : access select_stmt_Model.select_stmt_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_stmt_nonterminal4(N);
      N.cond_entry_call_part.Acceptor(I);
      I_Classwide.After_select_stmt_nonterminal4(N);
   end Visit_select_stmt_nonterminal4;
   procedure Before_select_wait_nonterminal(
      I : access DFS;
      N : access select_wait_Model.select_wait_nonterminal'Class) is
   begin
      null;
   end Before_select_wait_nonterminal;
   procedure After_select_wait_nonterminal(
      I : access DFS;
      N : access select_wait_Model.select_wait_nonterminal'Class) is
   begin
      null;
   end After_select_wait_nonterminal;
   procedure Visit_select_wait_nonterminal(
         I : access DFS;
         N : access select_wait_Model.select_wait_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_wait_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part1);
      N.guarded_select_alt_part.Acceptor(I);
      N.or_select_part.Acceptor(I);
      N.else_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part2);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_select_wait_nonterminal(N);
   end Visit_select_wait_nonterminal;
   procedure Before_guarded_select_alt_nonterminal1(
      I : access DFS;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal1'Class) is
   begin
      null;
   end Before_guarded_select_alt_nonterminal1;
   procedure After_guarded_select_alt_nonterminal1(
      I : access DFS;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal1'Class) is
   begin
      null;
   end After_guarded_select_alt_nonterminal1;
   procedure Visit_guarded_select_alt_nonterminal1(
         I : access DFS;
         N : access guarded_select_alt_Model.guarded_select_alt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_guarded_select_alt_nonterminal1(N);
      N.select_alt_part.Acceptor(I);
      I_Classwide.After_guarded_select_alt_nonterminal1(N);
   end Visit_guarded_select_alt_nonterminal1;
   procedure Before_guarded_select_alt_nonterminal2(
      I : access DFS;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal2'Class) is
   begin
      null;
   end Before_guarded_select_alt_nonterminal2;
   procedure After_guarded_select_alt_nonterminal2(
      I : access DFS;
      N : access guarded_select_alt_Model.guarded_select_alt_nonterminal2'Class) is
   begin
      null;
   end After_guarded_select_alt_nonterminal2;
   procedure Visit_guarded_select_alt_nonterminal2(
         I : access DFS;
         N : access guarded_select_alt_Model.guarded_select_alt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_guarded_select_alt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      N.condition_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ARROW_part);
      N.select_alt_part.Acceptor(I);
      I_Classwide.After_guarded_select_alt_nonterminal2(N);
   end Visit_guarded_select_alt_nonterminal2;
   procedure Before_or_select_nonterminal1(
      I : access DFS;
      N : access or_select_Model.or_select_nonterminal1'Class) is
   begin
      null;
   end Before_or_select_nonterminal1;
   procedure After_or_select_nonterminal1(
      I : access DFS;
      N : access or_select_Model.or_select_nonterminal1'Class) is
   begin
      null;
   end After_or_select_nonterminal1;
   procedure Visit_or_select_nonterminal1(
         I : access DFS;
         N : access or_select_Model.or_select_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_or_select_nonterminal1(N);
      I_Classwide.After_or_select_nonterminal1(N);
   end Visit_or_select_nonterminal1;
   procedure Before_or_select_nonterminal2(
      I : access DFS;
      N : access or_select_Model.or_select_nonterminal2'Class) is
   begin
      null;
   end Before_or_select_nonterminal2;
   procedure After_or_select_nonterminal2(
      I : access DFS;
      N : access or_select_Model.or_select_nonterminal2'Class) is
   begin
      null;
   end After_or_select_nonterminal2;
   procedure Visit_or_select_nonterminal2(
         I : access DFS;
         N : access or_select_Model.or_select_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_or_select_nonterminal2(N);
      N.or_select_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.OR_part);
      N.guarded_select_alt_part.Acceptor(I);
      I_Classwide.After_or_select_nonterminal2(N);
   end Visit_or_select_nonterminal2;
   procedure Before_select_alt_nonterminal1(
      I : access DFS;
      N : access select_alt_Model.select_alt_nonterminal1'Class) is
   begin
      null;
   end Before_select_alt_nonterminal1;
   procedure After_select_alt_nonterminal1(
      I : access DFS;
      N : access select_alt_Model.select_alt_nonterminal1'Class) is
   begin
      null;
   end After_select_alt_nonterminal1;
   procedure Visit_select_alt_nonterminal1(
         I : access DFS;
         N : access select_alt_Model.select_alt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_alt_nonterminal1(N);
      N.accept_stmt_part.Acceptor(I);
      N.stmts_opt_part.Acceptor(I);
      I_Classwide.After_select_alt_nonterminal1(N);
   end Visit_select_alt_nonterminal1;
   procedure Before_select_alt_nonterminal2(
      I : access DFS;
      N : access select_alt_Model.select_alt_nonterminal2'Class) is
   begin
      null;
   end Before_select_alt_nonterminal2;
   procedure After_select_alt_nonterminal2(
      I : access DFS;
      N : access select_alt_Model.select_alt_nonterminal2'Class) is
   begin
      null;
   end After_select_alt_nonterminal2;
   procedure Visit_select_alt_nonterminal2(
         I : access DFS;
         N : access select_alt_Model.select_alt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_alt_nonterminal2(N);
      N.delay_stmt_part.Acceptor(I);
      N.stmts_opt_part.Acceptor(I);
      I_Classwide.After_select_alt_nonterminal2(N);
   end Visit_select_alt_nonterminal2;
   procedure Before_select_alt_nonterminal3(
      I : access DFS;
      N : access select_alt_Model.select_alt_nonterminal3'Class) is
   begin
      null;
   end Before_select_alt_nonterminal3;
   procedure After_select_alt_nonterminal3(
      I : access DFS;
      N : access select_alt_Model.select_alt_nonterminal3'Class) is
   begin
      null;
   end After_select_alt_nonterminal3;
   procedure Visit_select_alt_nonterminal3(
         I : access DFS;
         N : access select_alt_Model.select_alt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_select_alt_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.TERMINATE_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_select_alt_nonterminal3(N);
   end Visit_select_alt_nonterminal3;
   procedure Before_delay_or_entry_alt_nonterminal1(
      I : access DFS;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal1'Class) is
   begin
      null;
   end Before_delay_or_entry_alt_nonterminal1;
   procedure After_delay_or_entry_alt_nonterminal1(
      I : access DFS;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal1'Class) is
   begin
      null;
   end After_delay_or_entry_alt_nonterminal1;
   procedure Visit_delay_or_entry_alt_nonterminal1(
         I : access DFS;
         N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_delay_or_entry_alt_nonterminal1(N);
      N.delay_stmt_part.Acceptor(I);
      N.stmts_opt_part.Acceptor(I);
      I_Classwide.After_delay_or_entry_alt_nonterminal1(N);
   end Visit_delay_or_entry_alt_nonterminal1;
   procedure Before_delay_or_entry_alt_nonterminal2(
      I : access DFS;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal2'Class) is
   begin
      null;
   end Before_delay_or_entry_alt_nonterminal2;
   procedure After_delay_or_entry_alt_nonterminal2(
      I : access DFS;
      N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal2'Class) is
   begin
      null;
   end After_delay_or_entry_alt_nonterminal2;
   procedure Visit_delay_or_entry_alt_nonterminal2(
         I : access DFS;
         N : access delay_or_entry_alt_Model.delay_or_entry_alt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_delay_or_entry_alt_nonterminal2(N);
      N.entry_call_part.Acceptor(I);
      N.stmts_opt_part.Acceptor(I);
      I_Classwide.After_delay_or_entry_alt_nonterminal2(N);
   end Visit_delay_or_entry_alt_nonterminal2;
   procedure Before_async_select_nonterminal(
      I : access DFS;
      N : access async_select_Model.async_select_nonterminal'Class) is
   begin
      null;
   end Before_async_select_nonterminal;
   procedure After_async_select_nonterminal(
      I : access DFS;
      N : access async_select_Model.async_select_nonterminal'Class) is
   begin
      null;
   end After_async_select_nonterminal;
   procedure Visit_async_select_nonterminal(
         I : access DFS;
         N : access async_select_Model.async_select_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_async_select_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part1);
      N.delay_or_entry_alt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.THEN_part);
      I_Classwide.Visit_Parseable_Token(N.abort_part);
      N.statement_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part2);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_async_select_nonterminal(N);
   end Visit_async_select_nonterminal;
   procedure Before_timed_entry_call_nonterminal(
      I : access DFS;
      N : access timed_entry_call_Model.timed_entry_call_nonterminal'Class) is
   begin
      null;
   end Before_timed_entry_call_nonterminal;
   procedure After_timed_entry_call_nonterminal(
      I : access DFS;
      N : access timed_entry_call_Model.timed_entry_call_nonterminal'Class) is
   begin
      null;
   end After_timed_entry_call_nonterminal;
   procedure Visit_timed_entry_call_nonterminal(
         I : access DFS;
         N : access timed_entry_call_Model.timed_entry_call_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_timed_entry_call_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part1);
      N.entry_call_part.Acceptor(I);
      N.stmts_opt_part1.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.OR_part);
      N.delay_stmt_part.Acceptor(I);
      N.stmts_opt_part2.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part2);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_timed_entry_call_nonterminal(N);
   end Visit_timed_entry_call_nonterminal;
   procedure Before_cond_entry_call_nonterminal(
      I : access DFS;
      N : access cond_entry_call_Model.cond_entry_call_nonterminal'Class) is
   begin
      null;
   end Before_cond_entry_call_nonterminal;
   procedure After_cond_entry_call_nonterminal(
      I : access DFS;
      N : access cond_entry_call_Model.cond_entry_call_nonterminal'Class) is
   begin
      null;
   end After_cond_entry_call_nonterminal;
   procedure Visit_cond_entry_call_nonterminal(
         I : access DFS;
         N : access cond_entry_call_Model.cond_entry_call_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_cond_entry_call_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part1);
      N.entry_call_part.Acceptor(I);
      N.stmts_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ELSE_part);
      N.statement_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.SELECT_part2);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_cond_entry_call_nonterminal(N);
   end Visit_cond_entry_call_nonterminal;
   procedure Before_stmts_opt_nonterminal1(
      I : access DFS;
      N : access stmts_opt_Model.stmts_opt_nonterminal1'Class) is
   begin
      null;
   end Before_stmts_opt_nonterminal1;
   procedure After_stmts_opt_nonterminal1(
      I : access DFS;
      N : access stmts_opt_Model.stmts_opt_nonterminal1'Class) is
   begin
      null;
   end After_stmts_opt_nonterminal1;
   procedure Visit_stmts_opt_nonterminal1(
         I : access DFS;
         N : access stmts_opt_Model.stmts_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_stmts_opt_nonterminal1(N);
      I_Classwide.After_stmts_opt_nonterminal1(N);
   end Visit_stmts_opt_nonterminal1;
   procedure Before_stmts_opt_nonterminal2(
      I : access DFS;
      N : access stmts_opt_Model.stmts_opt_nonterminal2'Class) is
   begin
      null;
   end Before_stmts_opt_nonterminal2;
   procedure After_stmts_opt_nonterminal2(
      I : access DFS;
      N : access stmts_opt_Model.stmts_opt_nonterminal2'Class) is
   begin
      null;
   end After_stmts_opt_nonterminal2;
   procedure Visit_stmts_opt_nonterminal2(
         I : access DFS;
         N : access stmts_opt_Model.stmts_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_stmts_opt_nonterminal2(N);
      N.statement_s_part.Acceptor(I);
      I_Classwide.After_stmts_opt_nonterminal2(N);
   end Visit_stmts_opt_nonterminal2;
   procedure Before_abort_stmt_nonterminal(
      I : access DFS;
      N : access abort_stmt_Model.abort_stmt_nonterminal'Class) is
   begin
      null;
   end Before_abort_stmt_nonterminal;
   procedure After_abort_stmt_nonterminal(
      I : access DFS;
      N : access abort_stmt_Model.abort_stmt_nonterminal'Class) is
   begin
      null;
   end After_abort_stmt_nonterminal;
   procedure Visit_abort_stmt_nonterminal(
         I : access DFS;
         N : access abort_stmt_Model.abort_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_abort_stmt_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.abort_part);
      N.name_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_abort_stmt_nonterminal(N);
   end Visit_abort_stmt_nonterminal;
   procedure Before_compilation_nonterminal1(
      I : access DFS;
      N : access compilation_Model.compilation_nonterminal1'Class) is
   begin
      null;
   end Before_compilation_nonterminal1;
   procedure After_compilation_nonterminal1(
      I : access DFS;
      N : access compilation_Model.compilation_nonterminal1'Class) is
   begin
      null;
   end After_compilation_nonterminal1;
   procedure Visit_compilation_nonterminal1(
         I : access DFS;
         N : access compilation_Model.compilation_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compilation_nonterminal1(N);
      I_Classwide.After_compilation_nonterminal1(N);
   end Visit_compilation_nonterminal1;
   procedure Before_compilation_nonterminal2(
      I : access DFS;
      N : access compilation_Model.compilation_nonterminal2'Class) is
   begin
      null;
   end Before_compilation_nonterminal2;
   procedure After_compilation_nonterminal2(
      I : access DFS;
      N : access compilation_Model.compilation_nonterminal2'Class) is
   begin
      null;
   end After_compilation_nonterminal2;
   procedure Visit_compilation_nonterminal2(
         I : access DFS;
         N : access compilation_Model.compilation_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compilation_nonterminal2(N);
      N.compilation_part.Acceptor(I);
      N.comp_unit_part.Acceptor(I);
      I_Classwide.After_compilation_nonterminal2(N);
   end Visit_compilation_nonterminal2;
   procedure Before_compilation_nonterminal3(
      I : access DFS;
      N : access compilation_Model.compilation_nonterminal3'Class) is
   begin
      null;
   end Before_compilation_nonterminal3;
   procedure After_compilation_nonterminal3(
      I : access DFS;
      N : access compilation_Model.compilation_nonterminal3'Class) is
   begin
      null;
   end After_compilation_nonterminal3;
   procedure Visit_compilation_nonterminal3(
         I : access DFS;
         N : access compilation_Model.compilation_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_compilation_nonterminal3(N);
      N.pragma_sym_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_compilation_nonterminal3(N);
   end Visit_compilation_nonterminal3;
   procedure Before_comp_unit_nonterminal1(
      I : access DFS;
      N : access comp_unit_Model.comp_unit_nonterminal1'Class) is
   begin
      null;
   end Before_comp_unit_nonterminal1;
   procedure After_comp_unit_nonterminal1(
      I : access DFS;
      N : access comp_unit_Model.comp_unit_nonterminal1'Class) is
   begin
      null;
   end After_comp_unit_nonterminal1;
   procedure Visit_comp_unit_nonterminal1(
         I : access DFS;
         N : access comp_unit_Model.comp_unit_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_unit_nonterminal1(N);
      N.context_spec_part.Acceptor(I);
      N.private_opt_part.Acceptor(I);
      N.unit_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_comp_unit_nonterminal1(N);
   end Visit_comp_unit_nonterminal1;
   procedure Before_comp_unit_nonterminal2(
      I : access DFS;
      N : access comp_unit_Model.comp_unit_nonterminal2'Class) is
   begin
      null;
   end Before_comp_unit_nonterminal2;
   procedure After_comp_unit_nonterminal2(
      I : access DFS;
      N : access comp_unit_Model.comp_unit_nonterminal2'Class) is
   begin
      null;
   end After_comp_unit_nonterminal2;
   procedure Visit_comp_unit_nonterminal2(
         I : access DFS;
         N : access comp_unit_Model.comp_unit_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_unit_nonterminal2(N);
      N.private_opt_part.Acceptor(I);
      N.unit_part.Acceptor(I);
      N.pragma_s_part.Acceptor(I);
      I_Classwide.After_comp_unit_nonterminal2(N);
   end Visit_comp_unit_nonterminal2;
   procedure Before_private_opt_nonterminal1(
      I : access DFS;
      N : access private_opt_Model.private_opt_nonterminal1'Class) is
   begin
      null;
   end Before_private_opt_nonterminal1;
   procedure After_private_opt_nonterminal1(
      I : access DFS;
      N : access private_opt_Model.private_opt_nonterminal1'Class) is
   begin
      null;
   end After_private_opt_nonterminal1;
   procedure Visit_private_opt_nonterminal1(
         I : access DFS;
         N : access private_opt_Model.private_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_private_opt_nonterminal1(N);
      I_Classwide.After_private_opt_nonterminal1(N);
   end Visit_private_opt_nonterminal1;
   procedure Before_private_opt_nonterminal2(
      I : access DFS;
      N : access private_opt_Model.private_opt_nonterminal2'Class) is
   begin
      null;
   end Before_private_opt_nonterminal2;
   procedure After_private_opt_nonterminal2(
      I : access DFS;
      N : access private_opt_Model.private_opt_nonterminal2'Class) is
   begin
      null;
   end After_private_opt_nonterminal2;
   procedure Visit_private_opt_nonterminal2(
         I : access DFS;
         N : access private_opt_Model.private_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_private_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      I_Classwide.After_private_opt_nonterminal2(N);
   end Visit_private_opt_nonterminal2;
   procedure Before_context_spec_nonterminal1(
      I : access DFS;
      N : access context_spec_Model.context_spec_nonterminal1'Class) is
   begin
      null;
   end Before_context_spec_nonterminal1;
   procedure After_context_spec_nonterminal1(
      I : access DFS;
      N : access context_spec_Model.context_spec_nonterminal1'Class) is
   begin
      null;
   end After_context_spec_nonterminal1;
   procedure Visit_context_spec_nonterminal1(
         I : access DFS;
         N : access context_spec_Model.context_spec_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_context_spec_nonterminal1(N);
      N.with_clause_part.Acceptor(I);
      N.use_clause_opt_part.Acceptor(I);
      I_Classwide.After_context_spec_nonterminal1(N);
   end Visit_context_spec_nonterminal1;
   procedure Before_context_spec_nonterminal2(
      I : access DFS;
      N : access context_spec_Model.context_spec_nonterminal2'Class) is
   begin
      null;
   end Before_context_spec_nonterminal2;
   procedure After_context_spec_nonterminal2(
      I : access DFS;
      N : access context_spec_Model.context_spec_nonterminal2'Class) is
   begin
      null;
   end After_context_spec_nonterminal2;
   procedure Visit_context_spec_nonterminal2(
         I : access DFS;
         N : access context_spec_Model.context_spec_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_context_spec_nonterminal2(N);
      N.context_spec_part.Acceptor(I);
      N.with_clause_part.Acceptor(I);
      N.use_clause_opt_part.Acceptor(I);
      I_Classwide.After_context_spec_nonterminal2(N);
   end Visit_context_spec_nonterminal2;
   procedure Before_context_spec_nonterminal3(
      I : access DFS;
      N : access context_spec_Model.context_spec_nonterminal3'Class) is
   begin
      null;
   end Before_context_spec_nonterminal3;
   procedure After_context_spec_nonterminal3(
      I : access DFS;
      N : access context_spec_Model.context_spec_nonterminal3'Class) is
   begin
      null;
   end After_context_spec_nonterminal3;
   procedure Visit_context_spec_nonterminal3(
         I : access DFS;
         N : access context_spec_Model.context_spec_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_context_spec_nonterminal3(N);
      N.context_spec_part.Acceptor(I);
      N.pragma_sym_part.Acceptor(I);
      I_Classwide.After_context_spec_nonterminal3(N);
   end Visit_context_spec_nonterminal3;
   procedure Before_with_clause_nonterminal(
      I : access DFS;
      N : access with_clause_Model.with_clause_nonterminal'Class) is
   begin
      null;
   end Before_with_clause_nonterminal;
   procedure After_with_clause_nonterminal(
      I : access DFS;
      N : access with_clause_Model.with_clause_nonterminal'Class) is
   begin
      null;
   end After_with_clause_nonterminal;
   procedure Visit_with_clause_nonterminal(
         I : access DFS;
         N : access with_clause_Model.with_clause_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_with_clause_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      N.c_name_list_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_with_clause_nonterminal(N);
   end Visit_with_clause_nonterminal;
   procedure Before_use_clause_opt_nonterminal1(
      I : access DFS;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal1'Class) is
   begin
      null;
   end Before_use_clause_opt_nonterminal1;
   procedure After_use_clause_opt_nonterminal1(
      I : access DFS;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal1'Class) is
   begin
      null;
   end After_use_clause_opt_nonterminal1;
   procedure Visit_use_clause_opt_nonterminal1(
         I : access DFS;
         N : access use_clause_opt_Model.use_clause_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_use_clause_opt_nonterminal1(N);
      I_Classwide.After_use_clause_opt_nonterminal1(N);
   end Visit_use_clause_opt_nonterminal1;
   procedure Before_use_clause_opt_nonterminal2(
      I : access DFS;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal2'Class) is
   begin
      null;
   end Before_use_clause_opt_nonterminal2;
   procedure After_use_clause_opt_nonterminal2(
      I : access DFS;
      N : access use_clause_opt_Model.use_clause_opt_nonterminal2'Class) is
   begin
      null;
   end After_use_clause_opt_nonterminal2;
   procedure Visit_use_clause_opt_nonterminal2(
         I : access DFS;
         N : access use_clause_opt_Model.use_clause_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_use_clause_opt_nonterminal2(N);
      N.use_clause_opt_part.Acceptor(I);
      N.use_clause_part.Acceptor(I);
      I_Classwide.After_use_clause_opt_nonterminal2(N);
   end Visit_use_clause_opt_nonterminal2;
   procedure Before_unit_nonterminal1(
      I : access DFS;
      N : access unit_Model.unit_nonterminal1'Class) is
   begin
      null;
   end Before_unit_nonterminal1;
   procedure After_unit_nonterminal1(
      I : access DFS;
      N : access unit_Model.unit_nonterminal1'Class) is
   begin
      null;
   end After_unit_nonterminal1;
   procedure Visit_unit_nonterminal1(
         I : access DFS;
         N : access unit_Model.unit_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unit_nonterminal1(N);
      N.pkg_decl_part.Acceptor(I);
      I_Classwide.After_unit_nonterminal1(N);
   end Visit_unit_nonterminal1;
   procedure Before_unit_nonterminal2(
      I : access DFS;
      N : access unit_Model.unit_nonterminal2'Class) is
   begin
      null;
   end Before_unit_nonterminal2;
   procedure After_unit_nonterminal2(
      I : access DFS;
      N : access unit_Model.unit_nonterminal2'Class) is
   begin
      null;
   end After_unit_nonterminal2;
   procedure Visit_unit_nonterminal2(
         I : access DFS;
         N : access unit_Model.unit_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unit_nonterminal2(N);
      N.pkg_body_part.Acceptor(I);
      I_Classwide.After_unit_nonterminal2(N);
   end Visit_unit_nonterminal2;
   procedure Before_unit_nonterminal3(
      I : access DFS;
      N : access unit_Model.unit_nonterminal3'Class) is
   begin
      null;
   end Before_unit_nonterminal3;
   procedure After_unit_nonterminal3(
      I : access DFS;
      N : access unit_Model.unit_nonterminal3'Class) is
   begin
      null;
   end After_unit_nonterminal3;
   procedure Visit_unit_nonterminal3(
         I : access DFS;
         N : access unit_Model.unit_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unit_nonterminal3(N);
      N.subprog_decl_part.Acceptor(I);
      I_Classwide.After_unit_nonterminal3(N);
   end Visit_unit_nonterminal3;
   procedure Before_unit_nonterminal4(
      I : access DFS;
      N : access unit_Model.unit_nonterminal4'Class) is
   begin
      null;
   end Before_unit_nonterminal4;
   procedure After_unit_nonterminal4(
      I : access DFS;
      N : access unit_Model.unit_nonterminal4'Class) is
   begin
      null;
   end After_unit_nonterminal4;
   procedure Visit_unit_nonterminal4(
         I : access DFS;
         N : access unit_Model.unit_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unit_nonterminal4(N);
      N.subprog_body_part.Acceptor(I);
      I_Classwide.After_unit_nonterminal4(N);
   end Visit_unit_nonterminal4;
   procedure Before_unit_nonterminal5(
      I : access DFS;
      N : access unit_Model.unit_nonterminal5'Class) is
   begin
      null;
   end Before_unit_nonterminal5;
   procedure After_unit_nonterminal5(
      I : access DFS;
      N : access unit_Model.unit_nonterminal5'Class) is
   begin
      null;
   end After_unit_nonterminal5;
   procedure Visit_unit_nonterminal5(
         I : access DFS;
         N : access unit_Model.unit_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unit_nonterminal5(N);
      N.subunit_part.Acceptor(I);
      I_Classwide.After_unit_nonterminal5(N);
   end Visit_unit_nonterminal5;
   procedure Before_unit_nonterminal6(
      I : access DFS;
      N : access unit_Model.unit_nonterminal6'Class) is
   begin
      null;
   end Before_unit_nonterminal6;
   procedure After_unit_nonterminal6(
      I : access DFS;
      N : access unit_Model.unit_nonterminal6'Class) is
   begin
      null;
   end After_unit_nonterminal6;
   procedure Visit_unit_nonterminal6(
         I : access DFS;
         N : access unit_Model.unit_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unit_nonterminal6(N);
      N.generic_decl_part.Acceptor(I);
      I_Classwide.After_unit_nonterminal6(N);
   end Visit_unit_nonterminal6;
   procedure Before_unit_nonterminal7(
      I : access DFS;
      N : access unit_Model.unit_nonterminal7'Class) is
   begin
      null;
   end Before_unit_nonterminal7;
   procedure After_unit_nonterminal7(
      I : access DFS;
      N : access unit_Model.unit_nonterminal7'Class) is
   begin
      null;
   end After_unit_nonterminal7;
   procedure Visit_unit_nonterminal7(
         I : access DFS;
         N : access unit_Model.unit_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_unit_nonterminal7(N);
      N.rename_unit_part.Acceptor(I);
      I_Classwide.After_unit_nonterminal7(N);
   end Visit_unit_nonterminal7;
   procedure Before_subunit_nonterminal(
      I : access DFS;
      N : access subunit_Model.subunit_nonterminal'Class) is
   begin
      null;
   end Before_subunit_nonterminal;
   procedure After_subunit_nonterminal(
      I : access DFS;
      N : access subunit_Model.subunit_nonterminal'Class) is
   begin
      null;
   end After_subunit_nonterminal;
   procedure Visit_subunit_nonterminal(
         I : access DFS;
         N : access subunit_Model.subunit_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subunit_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.SEPARATE_part);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      N.compound_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      N.subunit_body_part.Acceptor(I);
      I_Classwide.After_subunit_nonterminal(N);
   end Visit_subunit_nonterminal;
   procedure Before_subunit_body_nonterminal1(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal1'Class) is
   begin
      null;
   end Before_subunit_body_nonterminal1;
   procedure After_subunit_body_nonterminal1(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal1'Class) is
   begin
      null;
   end After_subunit_body_nonterminal1;
   procedure Visit_subunit_body_nonterminal1(
         I : access DFS;
         N : access subunit_body_Model.subunit_body_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subunit_body_nonterminal1(N);
      N.subprog_body_part.Acceptor(I);
      I_Classwide.After_subunit_body_nonterminal1(N);
   end Visit_subunit_body_nonterminal1;
   procedure Before_subunit_body_nonterminal2(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal2'Class) is
   begin
      null;
   end Before_subunit_body_nonterminal2;
   procedure After_subunit_body_nonterminal2(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal2'Class) is
   begin
      null;
   end After_subunit_body_nonterminal2;
   procedure Visit_subunit_body_nonterminal2(
         I : access DFS;
         N : access subunit_body_Model.subunit_body_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subunit_body_nonterminal2(N);
      N.pkg_body_part.Acceptor(I);
      I_Classwide.After_subunit_body_nonterminal2(N);
   end Visit_subunit_body_nonterminal2;
   procedure Before_subunit_body_nonterminal3(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal3'Class) is
   begin
      null;
   end Before_subunit_body_nonterminal3;
   procedure After_subunit_body_nonterminal3(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal3'Class) is
   begin
      null;
   end After_subunit_body_nonterminal3;
   procedure Visit_subunit_body_nonterminal3(
         I : access DFS;
         N : access subunit_body_Model.subunit_body_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subunit_body_nonterminal3(N);
      N.task_body_part.Acceptor(I);
      I_Classwide.After_subunit_body_nonterminal3(N);
   end Visit_subunit_body_nonterminal3;
   procedure Before_subunit_body_nonterminal4(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal4'Class) is
   begin
      null;
   end Before_subunit_body_nonterminal4;
   procedure After_subunit_body_nonterminal4(
      I : access DFS;
      N : access subunit_body_Model.subunit_body_nonterminal4'Class) is
   begin
      null;
   end After_subunit_body_nonterminal4;
   procedure Visit_subunit_body_nonterminal4(
         I : access DFS;
         N : access subunit_body_Model.subunit_body_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subunit_body_nonterminal4(N);
      N.prot_body_part.Acceptor(I);
      I_Classwide.After_subunit_body_nonterminal4(N);
   end Visit_subunit_body_nonterminal4;
   procedure Before_body_stub_nonterminal1(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal1'Class) is
   begin
      null;
   end Before_body_stub_nonterminal1;
   procedure After_body_stub_nonterminal1(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal1'Class) is
   begin
      null;
   end After_body_stub_nonterminal1;
   procedure Visit_body_stub_nonterminal1(
         I : access DFS;
         N : access body_stub_Model.body_stub_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_stub_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.TASK_part);
      I_Classwide.Visit_Parseable_Token(N.BODY_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.Visit_Parseable_Token(N.SEPARATE_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_body_stub_nonterminal1(N);
   end Visit_body_stub_nonterminal1;
   procedure Before_body_stub_nonterminal2(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal2'Class) is
   begin
      null;
   end Before_body_stub_nonterminal2;
   procedure After_body_stub_nonterminal2(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal2'Class) is
   begin
      null;
   end After_body_stub_nonterminal2;
   procedure Visit_body_stub_nonterminal2(
         I : access DFS;
         N : access body_stub_Model.body_stub_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_stub_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      I_Classwide.Visit_Parseable_Token(N.BODY_part);
      N.compound_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.Visit_Parseable_Token(N.SEPARATE_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_body_stub_nonterminal2(N);
   end Visit_body_stub_nonterminal2;
   procedure Before_body_stub_nonterminal3(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal3'Class) is
   begin
      null;
   end Before_body_stub_nonterminal3;
   procedure After_body_stub_nonterminal3(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal3'Class) is
   begin
      null;
   end After_body_stub_nonterminal3;
   procedure Visit_body_stub_nonterminal3(
         I : access DFS;
         N : access body_stub_Model.body_stub_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_stub_nonterminal3(N);
      N.subprog_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.Visit_Parseable_Token(N.SEPARATE_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_body_stub_nonterminal3(N);
   end Visit_body_stub_nonterminal3;
   procedure Before_body_stub_nonterminal4(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal4'Class) is
   begin
      null;
   end Before_body_stub_nonterminal4;
   procedure After_body_stub_nonterminal4(
      I : access DFS;
      N : access body_stub_Model.body_stub_nonterminal4'Class) is
   begin
      null;
   end After_body_stub_nonterminal4;
   procedure Visit_body_stub_nonterminal4(
         I : access DFS;
         N : access body_stub_Model.body_stub_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_body_stub_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.PROTECTED_part);
      I_Classwide.Visit_Parseable_Token(N.BODY_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.Visit_Parseable_Token(N.SEPARATE_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_body_stub_nonterminal4(N);
   end Visit_body_stub_nonterminal4;
   procedure Before_exception_decl_nonterminal(
      I : access DFS;
      N : access exception_decl_Model.exception_decl_nonterminal'Class) is
   begin
      null;
   end Before_exception_decl_nonterminal;
   procedure After_exception_decl_nonterminal(
      I : access DFS;
      N : access exception_decl_Model.exception_decl_nonterminal'Class) is
   begin
      null;
   end After_exception_decl_nonterminal;
   procedure Visit_exception_decl_nonterminal(
         I : access DFS;
         N : access exception_decl_Model.exception_decl_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_exception_decl_nonterminal(N);
      N.def_id_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      I_Classwide.Visit_Parseable_Token(N.EXCEPTION_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_exception_decl_nonterminal(N);
   end Visit_exception_decl_nonterminal;
   procedure Before_except_handler_part_nonterminal1(
      I : access DFS;
      N : access except_handler_part_Model.except_handler_part_nonterminal1'Class) is
   begin
      null;
   end Before_except_handler_part_nonterminal1;
   procedure After_except_handler_part_nonterminal1(
      I : access DFS;
      N : access except_handler_part_Model.except_handler_part_nonterminal1'Class) is
   begin
      null;
   end After_except_handler_part_nonterminal1;
   procedure Visit_except_handler_part_nonterminal1(
         I : access DFS;
         N : access except_handler_part_Model.except_handler_part_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_handler_part_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.EXCEPTION_part);
      N.exception_handler_part.Acceptor(I);
      I_Classwide.After_except_handler_part_nonterminal1(N);
   end Visit_except_handler_part_nonterminal1;
   procedure Before_except_handler_part_nonterminal2(
      I : access DFS;
      N : access except_handler_part_Model.except_handler_part_nonterminal2'Class) is
   begin
      null;
   end Before_except_handler_part_nonterminal2;
   procedure After_except_handler_part_nonterminal2(
      I : access DFS;
      N : access except_handler_part_Model.except_handler_part_nonterminal2'Class) is
   begin
      null;
   end After_except_handler_part_nonterminal2;
   procedure Visit_except_handler_part_nonterminal2(
         I : access DFS;
         N : access except_handler_part_Model.except_handler_part_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_handler_part_nonterminal2(N);
      N.except_handler_part_part.Acceptor(I);
      N.exception_handler_part.Acceptor(I);
      I_Classwide.After_except_handler_part_nonterminal2(N);
   end Visit_except_handler_part_nonterminal2;
   procedure Before_exception_handler_nonterminal1(
      I : access DFS;
      N : access exception_handler_Model.exception_handler_nonterminal1'Class) is
   begin
      null;
   end Before_exception_handler_nonterminal1;
   procedure After_exception_handler_nonterminal1(
      I : access DFS;
      N : access exception_handler_Model.exception_handler_nonterminal1'Class) is
   begin
      null;
   end After_exception_handler_nonterminal1;
   procedure Visit_exception_handler_nonterminal1(
         I : access DFS;
         N : access exception_handler_Model.exception_handler_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_exception_handler_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      N.except_choice_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ARROW_part);
      N.statement_s_part.Acceptor(I);
      I_Classwide.After_exception_handler_nonterminal1(N);
   end Visit_exception_handler_nonterminal1;
   procedure Before_exception_handler_nonterminal2(
      I : access DFS;
      N : access exception_handler_Model.exception_handler_nonterminal2'Class) is
   begin
      null;
   end Before_exception_handler_nonterminal2;
   procedure After_exception_handler_nonterminal2(
      I : access DFS;
      N : access exception_handler_Model.exception_handler_nonterminal2'Class) is
   begin
      null;
   end After_exception_handler_nonterminal2;
   procedure Visit_exception_handler_nonterminal2(
         I : access DFS;
         N : access exception_handler_Model.exception_handler_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_exception_handler_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.WHEN_part);
      I_Classwide.Visit_Parseable_Token(N.identifier_part);
      I_Classwide.Visit_Parseable_Token(N.COLON_part);
      N.except_choice_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.ARROW_part);
      N.statement_s_part.Acceptor(I);
      I_Classwide.After_exception_handler_nonterminal2(N);
   end Visit_exception_handler_nonterminal2;
   procedure Before_except_choice_s_nonterminal1(
      I : access DFS;
      N : access except_choice_s_Model.except_choice_s_nonterminal1'Class) is
   begin
      null;
   end Before_except_choice_s_nonterminal1;
   procedure After_except_choice_s_nonterminal1(
      I : access DFS;
      N : access except_choice_s_Model.except_choice_s_nonterminal1'Class) is
   begin
      null;
   end After_except_choice_s_nonterminal1;
   procedure Visit_except_choice_s_nonterminal1(
         I : access DFS;
         N : access except_choice_s_Model.except_choice_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_choice_s_nonterminal1(N);
      N.except_choice_part.Acceptor(I);
      I_Classwide.After_except_choice_s_nonterminal1(N);
   end Visit_except_choice_s_nonterminal1;
   procedure Before_except_choice_s_nonterminal2(
      I : access DFS;
      N : access except_choice_s_Model.except_choice_s_nonterminal2'Class) is
   begin
      null;
   end Before_except_choice_s_nonterminal2;
   procedure After_except_choice_s_nonterminal2(
      I : access DFS;
      N : access except_choice_s_Model.except_choice_s_nonterminal2'Class) is
   begin
      null;
   end After_except_choice_s_nonterminal2;
   procedure Visit_except_choice_s_nonterminal2(
         I : access DFS;
         N : access except_choice_s_Model.except_choice_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_choice_s_nonterminal2(N);
      N.except_choice_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PIPE_part);
      N.except_choice_part.Acceptor(I);
      I_Classwide.After_except_choice_s_nonterminal2(N);
   end Visit_except_choice_s_nonterminal2;
   procedure Before_except_choice_nonterminal1(
      I : access DFS;
      N : access except_choice_Model.except_choice_nonterminal1'Class) is
   begin
      null;
   end Before_except_choice_nonterminal1;
   procedure After_except_choice_nonterminal1(
      I : access DFS;
      N : access except_choice_Model.except_choice_nonterminal1'Class) is
   begin
      null;
   end After_except_choice_nonterminal1;
   procedure Visit_except_choice_nonterminal1(
         I : access DFS;
         N : access except_choice_Model.except_choice_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_choice_nonterminal1(N);
      N.name_part.Acceptor(I);
      I_Classwide.After_except_choice_nonterminal1(N);
   end Visit_except_choice_nonterminal1;
   procedure Before_except_choice_nonterminal2(
      I : access DFS;
      N : access except_choice_Model.except_choice_nonterminal2'Class) is
   begin
      null;
   end Before_except_choice_nonterminal2;
   procedure After_except_choice_nonterminal2(
      I : access DFS;
      N : access except_choice_Model.except_choice_nonterminal2'Class) is
   begin
      null;
   end After_except_choice_nonterminal2;
   procedure Visit_except_choice_nonterminal2(
         I : access DFS;
         N : access except_choice_Model.except_choice_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_except_choice_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.OTHERS_part);
      I_Classwide.After_except_choice_nonterminal2(N);
   end Visit_except_choice_nonterminal2;
   procedure Before_raise_stmt_nonterminal(
      I : access DFS;
      N : access raise_stmt_Model.raise_stmt_nonterminal'Class) is
   begin
      null;
   end Before_raise_stmt_nonterminal;
   procedure After_raise_stmt_nonterminal(
      I : access DFS;
      N : access raise_stmt_Model.raise_stmt_nonterminal'Class) is
   begin
      null;
   end After_raise_stmt_nonterminal;
   procedure Visit_raise_stmt_nonterminal(
         I : access DFS;
         N : access raise_stmt_Model.raise_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_raise_stmt_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.RAISE_part);
      N.name_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_raise_stmt_nonterminal(N);
   end Visit_raise_stmt_nonterminal;
   procedure Before_requeue_stmt_nonterminal1(
      I : access DFS;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal1'Class) is
   begin
      null;
   end Before_requeue_stmt_nonterminal1;
   procedure After_requeue_stmt_nonterminal1(
      I : access DFS;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal1'Class) is
   begin
      null;
   end After_requeue_stmt_nonterminal1;
   procedure Visit_requeue_stmt_nonterminal1(
         I : access DFS;
         N : access requeue_stmt_Model.requeue_stmt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_requeue_stmt_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.REQUEUE_part);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_requeue_stmt_nonterminal1(N);
   end Visit_requeue_stmt_nonterminal1;
   procedure Before_requeue_stmt_nonterminal2(
      I : access DFS;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal2'Class) is
   begin
      null;
   end Before_requeue_stmt_nonterminal2;
   procedure After_requeue_stmt_nonterminal2(
      I : access DFS;
      N : access requeue_stmt_Model.requeue_stmt_nonterminal2'Class) is
   begin
      null;
   end After_requeue_stmt_nonterminal2;
   procedure Visit_requeue_stmt_nonterminal2(
         I : access DFS;
         N : access requeue_stmt_Model.requeue_stmt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_requeue_stmt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.REQUEUE_part);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.abort_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_requeue_stmt_nonterminal2(N);
   end Visit_requeue_stmt_nonterminal2;
   procedure Before_generic_decl_nonterminal1(
      I : access DFS;
      N : access generic_decl_Model.generic_decl_nonterminal1'Class) is
   begin
      null;
   end Before_generic_decl_nonterminal1;
   procedure After_generic_decl_nonterminal1(
      I : access DFS;
      N : access generic_decl_Model.generic_decl_nonterminal1'Class) is
   begin
      null;
   end After_generic_decl_nonterminal1;
   procedure Visit_generic_decl_nonterminal1(
         I : access DFS;
         N : access generic_decl_Model.generic_decl_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_decl_nonterminal1(N);
      N.generic_formal_part_part.Acceptor(I);
      N.subprog_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_decl_nonterminal1(N);
   end Visit_generic_decl_nonterminal1;
   procedure Before_generic_decl_nonterminal2(
      I : access DFS;
      N : access generic_decl_Model.generic_decl_nonterminal2'Class) is
   begin
      null;
   end Before_generic_decl_nonterminal2;
   procedure After_generic_decl_nonterminal2(
      I : access DFS;
      N : access generic_decl_Model.generic_decl_nonterminal2'Class) is
   begin
      null;
   end After_generic_decl_nonterminal2;
   procedure Visit_generic_decl_nonterminal2(
         I : access DFS;
         N : access generic_decl_Model.generic_decl_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_decl_nonterminal2(N);
      N.generic_formal_part_part.Acceptor(I);
      N.pkg_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_decl_nonterminal2(N);
   end Visit_generic_decl_nonterminal2;
   procedure Before_generic_formal_part_nonterminal1(
      I : access DFS;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal1'Class) is
   begin
      null;
   end Before_generic_formal_part_nonterminal1;
   procedure After_generic_formal_part_nonterminal1(
      I : access DFS;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal1'Class) is
   begin
      null;
   end After_generic_formal_part_nonterminal1;
   procedure Visit_generic_formal_part_nonterminal1(
         I : access DFS;
         N : access generic_formal_part_Model.generic_formal_part_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_part_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.GENERIC_part);
      I_Classwide.After_generic_formal_part_nonterminal1(N);
   end Visit_generic_formal_part_nonterminal1;
   procedure Before_generic_formal_part_nonterminal2(
      I : access DFS;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal2'Class) is
   begin
      null;
   end Before_generic_formal_part_nonterminal2;
   procedure After_generic_formal_part_nonterminal2(
      I : access DFS;
      N : access generic_formal_part_Model.generic_formal_part_nonterminal2'Class) is
   begin
      null;
   end After_generic_formal_part_nonterminal2;
   procedure Visit_generic_formal_part_nonterminal2(
         I : access DFS;
         N : access generic_formal_part_Model.generic_formal_part_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_part_nonterminal2(N);
      N.generic_formal_part_part.Acceptor(I);
      N.generic_formal_part.Acceptor(I);
      I_Classwide.After_generic_formal_part_nonterminal2(N);
   end Visit_generic_formal_part_nonterminal2;
   procedure Before_generic_formal_nonterminal1(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal1'Class) is
   begin
      null;
   end Before_generic_formal_nonterminal1;
   procedure After_generic_formal_nonterminal1(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal1'Class) is
   begin
      null;
   end After_generic_formal_nonterminal1;
   procedure Visit_generic_formal_nonterminal1(
         I : access DFS;
         N : access generic_formal_Model.generic_formal_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_nonterminal1(N);
      N.param_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_formal_nonterminal1(N);
   end Visit_generic_formal_nonterminal1;
   procedure Before_generic_formal_nonterminal2(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal2'Class) is
   begin
      null;
   end Before_generic_formal_nonterminal2;
   procedure After_generic_formal_nonterminal2(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal2'Class) is
   begin
      null;
   end After_generic_formal_nonterminal2;
   procedure Visit_generic_formal_nonterminal2(
         I : access DFS;
         N : access generic_formal_Model.generic_formal_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.TYPE_part);
      N.simple_name_part.Acceptor(I);
      N.generic_discrim_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.generic_type_def_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_formal_nonterminal2(N);
   end Visit_generic_formal_nonterminal2;
   procedure Before_generic_formal_nonterminal3(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal3'Class) is
   begin
      null;
   end Before_generic_formal_nonterminal3;
   procedure After_generic_formal_nonterminal3(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal3'Class) is
   begin
      null;
   end After_generic_formal_nonterminal3;
   procedure Visit_generic_formal_nonterminal3(
         I : access DFS;
         N : access generic_formal_Model.generic_formal_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.PROCEDURE_part);
      N.simple_name_part.Acceptor(I);
      N.formal_part_opt_part.Acceptor(I);
      N.subp_default_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_formal_nonterminal3(N);
   end Visit_generic_formal_nonterminal3;
   procedure Before_generic_formal_nonterminal4(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal4'Class) is
   begin
      null;
   end Before_generic_formal_nonterminal4;
   procedure After_generic_formal_nonterminal4(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal4'Class) is
   begin
      null;
   end After_generic_formal_nonterminal4;
   procedure Visit_generic_formal_nonterminal4(
         I : access DFS;
         N : access generic_formal_Model.generic_formal_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.FUNCTION_part);
      N.designator_part.Acceptor(I);
      N.formal_part_opt_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.RETURN_part);
      N.name_part.Acceptor(I);
      N.subp_default_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_formal_nonterminal4(N);
   end Visit_generic_formal_nonterminal4;
   procedure Before_generic_formal_nonterminal5(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal5'Class) is
   begin
      null;
   end Before_generic_formal_nonterminal5;
   procedure After_generic_formal_nonterminal5(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal5'Class) is
   begin
      null;
   end After_generic_formal_nonterminal5;
   procedure Visit_generic_formal_nonterminal5(
         I : access DFS;
         N : access generic_formal_Model.generic_formal_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_formal_nonterminal5(N);
   end Visit_generic_formal_nonterminal5;
   procedure Before_generic_formal_nonterminal6(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal6'Class) is
   begin
      null;
   end Before_generic_formal_nonterminal6;
   procedure After_generic_formal_nonterminal6(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal6'Class) is
   begin
      null;
   end After_generic_formal_nonterminal6;
   procedure Visit_generic_formal_nonterminal6(
         I : access DFS;
         N : access generic_formal_Model.generic_formal_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_nonterminal6(N);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      N.simple_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_generic_formal_nonterminal6(N);
   end Visit_generic_formal_nonterminal6;
   procedure Before_generic_formal_nonterminal7(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal7'Class) is
   begin
      null;
   end Before_generic_formal_nonterminal7;
   procedure After_generic_formal_nonterminal7(
      I : access DFS;
      N : access generic_formal_Model.generic_formal_nonterminal7'Class) is
   begin
      null;
   end After_generic_formal_nonterminal7;
   procedure Visit_generic_formal_nonterminal7(
         I : access DFS;
         N : access generic_formal_Model.generic_formal_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_formal_nonterminal7(N);
      N.use_clause_part.Acceptor(I);
      I_Classwide.After_generic_formal_nonterminal7(N);
   end Visit_generic_formal_nonterminal7;
   procedure Before_generic_discrim_part_opt_nonterminal1(
      I : access DFS;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal1'Class) is
   begin
      null;
   end Before_generic_discrim_part_opt_nonterminal1;
   procedure After_generic_discrim_part_opt_nonterminal1(
      I : access DFS;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal1'Class) is
   begin
      null;
   end After_generic_discrim_part_opt_nonterminal1;
   procedure Visit_generic_discrim_part_opt_nonterminal1(
         I : access DFS;
         N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_discrim_part_opt_nonterminal1(N);
      I_Classwide.After_generic_discrim_part_opt_nonterminal1(N);
   end Visit_generic_discrim_part_opt_nonterminal1;
   procedure Before_generic_discrim_part_opt_nonterminal2(
      I : access DFS;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal2'Class) is
   begin
      null;
   end Before_generic_discrim_part_opt_nonterminal2;
   procedure After_generic_discrim_part_opt_nonterminal2(
      I : access DFS;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal2'Class) is
   begin
      null;
   end After_generic_discrim_part_opt_nonterminal2;
   procedure Visit_generic_discrim_part_opt_nonterminal2(
         I : access DFS;
         N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_discrim_part_opt_nonterminal2(N);
      N.discrim_part_part.Acceptor(I);
      I_Classwide.After_generic_discrim_part_opt_nonterminal2(N);
   end Visit_generic_discrim_part_opt_nonterminal2;
   procedure Before_generic_discrim_part_opt_nonterminal3(
      I : access DFS;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal3'Class) is
   begin
      null;
   end Before_generic_discrim_part_opt_nonterminal3;
   procedure After_generic_discrim_part_opt_nonterminal3(
      I : access DFS;
      N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal3'Class) is
   begin
      null;
   end After_generic_discrim_part_opt_nonterminal3;
   procedure Visit_generic_discrim_part_opt_nonterminal3(
         I : access DFS;
         N : access generic_discrim_part_opt_Model.generic_discrim_part_opt_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_discrim_part_opt_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_generic_discrim_part_opt_nonterminal3(N);
   end Visit_generic_discrim_part_opt_nonterminal3;
   procedure Before_subp_default_nonterminal1(
      I : access DFS;
      N : access subp_default_Model.subp_default_nonterminal1'Class) is
   begin
      null;
   end Before_subp_default_nonterminal1;
   procedure After_subp_default_nonterminal1(
      I : access DFS;
      N : access subp_default_Model.subp_default_nonterminal1'Class) is
   begin
      null;
   end After_subp_default_nonterminal1;
   procedure Visit_subp_default_nonterminal1(
         I : access DFS;
         N : access subp_default_Model.subp_default_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subp_default_nonterminal1(N);
      I_Classwide.After_subp_default_nonterminal1(N);
   end Visit_subp_default_nonterminal1;
   procedure Before_subp_default_nonterminal2(
      I : access DFS;
      N : access subp_default_Model.subp_default_nonterminal2'Class) is
   begin
      null;
   end Before_subp_default_nonterminal2;
   procedure After_subp_default_nonterminal2(
      I : access DFS;
      N : access subp_default_Model.subp_default_nonterminal2'Class) is
   begin
      null;
   end After_subp_default_nonterminal2;
   procedure Visit_subp_default_nonterminal2(
         I : access DFS;
         N : access subp_default_Model.subp_default_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subp_default_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.name_part.Acceptor(I);
      I_Classwide.After_subp_default_nonterminal2(N);
   end Visit_subp_default_nonterminal2;
   procedure Before_subp_default_nonterminal3(
      I : access DFS;
      N : access subp_default_Model.subp_default_nonterminal3'Class) is
   begin
      null;
   end Before_subp_default_nonterminal3;
   procedure After_subp_default_nonterminal3(
      I : access DFS;
      N : access subp_default_Model.subp_default_nonterminal3'Class) is
   begin
      null;
   end After_subp_default_nonterminal3;
   procedure Visit_subp_default_nonterminal3(
         I : access DFS;
         N : access subp_default_Model.subp_default_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_subp_default_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.After_subp_default_nonterminal3(N);
   end Visit_subp_default_nonterminal3;
   procedure Before_generic_type_def_nonterminal1(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal1'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal1;
   procedure After_generic_type_def_nonterminal1(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal1'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal1;
   procedure Visit_generic_type_def_nonterminal1(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.L_PAREN_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.Visit_Parseable_Token(N.R_PAREN_part);
      I_Classwide.After_generic_type_def_nonterminal1(N);
   end Visit_generic_type_def_nonterminal1;
   procedure Before_generic_type_def_nonterminal2(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal2'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal2;
   procedure After_generic_type_def_nonterminal2(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal2'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal2;
   procedure Visit_generic_type_def_nonterminal2(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.RANGE_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.After_generic_type_def_nonterminal2(N);
   end Visit_generic_type_def_nonterminal2;
   procedure Before_generic_type_def_nonterminal3(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal3'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal3;
   procedure After_generic_type_def_nonterminal3(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal3'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal3;
   procedure Visit_generic_type_def_nonterminal3(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.MOD_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.After_generic_type_def_nonterminal3(N);
   end Visit_generic_type_def_nonterminal3;
   procedure Before_generic_type_def_nonterminal4(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal4'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal4;
   procedure After_generic_type_def_nonterminal4(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal4'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal4;
   procedure Visit_generic_type_def_nonterminal4(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal4'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal4(N);
      I_Classwide.Visit_Parseable_Token(N.DELTA_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.After_generic_type_def_nonterminal4(N);
   end Visit_generic_type_def_nonterminal4;
   procedure Before_generic_type_def_nonterminal5(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal5'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal5;
   procedure After_generic_type_def_nonterminal5(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal5'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal5;
   procedure Visit_generic_type_def_nonterminal5(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal5'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal5(N);
      I_Classwide.Visit_Parseable_Token(N.DELTA_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part1);
      I_Classwide.Visit_Parseable_Token(N.DIGITS_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part2);
      I_Classwide.After_generic_type_def_nonterminal5(N);
   end Visit_generic_type_def_nonterminal5;
   procedure Before_generic_type_def_nonterminal6(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal6'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal6;
   procedure After_generic_type_def_nonterminal6(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal6'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal6;
   procedure Visit_generic_type_def_nonterminal6(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal6'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal6(N);
      I_Classwide.Visit_Parseable_Token(N.DIGITS_part);
      I_Classwide.Visit_Parseable_Token(N.BOX_part);
      I_Classwide.After_generic_type_def_nonterminal6(N);
   end Visit_generic_type_def_nonterminal6;
   procedure Before_generic_type_def_nonterminal7(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal7'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal7;
   procedure After_generic_type_def_nonterminal7(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal7'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal7;
   procedure Visit_generic_type_def_nonterminal7(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal7'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal7(N);
      N.array_type_part.Acceptor(I);
      I_Classwide.After_generic_type_def_nonterminal7(N);
   end Visit_generic_type_def_nonterminal7;
   procedure Before_generic_type_def_nonterminal8(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal8'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal8;
   procedure After_generic_type_def_nonterminal8(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal8'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal8;
   procedure Visit_generic_type_def_nonterminal8(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal8'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal8(N);
      N.access_type_part.Acceptor(I);
      I_Classwide.After_generic_type_def_nonterminal8(N);
   end Visit_generic_type_def_nonterminal8;
   procedure Before_generic_type_def_nonterminal9(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal9'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal9;
   procedure After_generic_type_def_nonterminal9(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal9'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal9;
   procedure Visit_generic_type_def_nonterminal9(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal9'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal9(N);
      N.private_type_part.Acceptor(I);
      I_Classwide.After_generic_type_def_nonterminal9(N);
   end Visit_generic_type_def_nonterminal9;
   procedure Before_generic_type_def_nonterminal10(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal10'Class) is
   begin
      null;
   end Before_generic_type_def_nonterminal10;
   procedure After_generic_type_def_nonterminal10(
      I : access DFS;
      N : access generic_type_def_Model.generic_type_def_nonterminal10'Class) is
   begin
      null;
   end After_generic_type_def_nonterminal10;
   procedure Visit_generic_type_def_nonterminal10(
         I : access DFS;
         N : access generic_type_def_Model.generic_type_def_nonterminal10'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_type_def_nonterminal10(N);
      N.generic_derived_type_part.Acceptor(I);
      I_Classwide.After_generic_type_def_nonterminal10(N);
   end Visit_generic_type_def_nonterminal10;
   procedure Before_generic_derived_type_nonterminal1(
      I : access DFS;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal1'Class) is
   begin
      null;
   end Before_generic_derived_type_nonterminal1;
   procedure After_generic_derived_type_nonterminal1(
      I : access DFS;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal1'Class) is
   begin
      null;
   end After_generic_derived_type_nonterminal1;
   procedure Visit_generic_derived_type_nonterminal1(
         I : access DFS;
         N : access generic_derived_type_Model.generic_derived_type_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_derived_type_nonterminal1(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.After_generic_derived_type_nonterminal1(N);
   end Visit_generic_derived_type_nonterminal1;
   procedure Before_generic_derived_type_nonterminal2(
      I : access DFS;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal2'Class) is
   begin
      null;
   end Before_generic_derived_type_nonterminal2;
   procedure After_generic_derived_type_nonterminal2(
      I : access DFS;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal2'Class) is
   begin
      null;
   end After_generic_derived_type_nonterminal2;
   procedure Visit_generic_derived_type_nonterminal2(
         I : access DFS;
         N : access generic_derived_type_Model.generic_derived_type_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_derived_type_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      I_Classwide.After_generic_derived_type_nonterminal2(N);
   end Visit_generic_derived_type_nonterminal2;
   procedure Before_generic_derived_type_nonterminal3(
      I : access DFS;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal3'Class) is
   begin
      null;
   end Before_generic_derived_type_nonterminal3;
   procedure After_generic_derived_type_nonterminal3(
      I : access DFS;
      N : access generic_derived_type_Model.generic_derived_type_nonterminal3'Class) is
   begin
      null;
   end After_generic_derived_type_nonterminal3;
   procedure Visit_generic_derived_type_nonterminal3(
         I : access DFS;
         N : access generic_derived_type_Model.generic_derived_type_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_derived_type_nonterminal3(N);
      I_Classwide.Visit_Parseable_Token(N.abstract_part);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.subtype_ind_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.WITH_part);
      I_Classwide.Visit_Parseable_Token(N.PRIVATE_part);
      I_Classwide.After_generic_derived_type_nonterminal3(N);
   end Visit_generic_derived_type_nonterminal3;
   procedure Before_generic_subp_inst_nonterminal(
      I : access DFS;
      N : access generic_subp_inst_Model.generic_subp_inst_nonterminal'Class) is
   begin
      null;
   end Before_generic_subp_inst_nonterminal;
   procedure After_generic_subp_inst_nonterminal(
      I : access DFS;
      N : access generic_subp_inst_Model.generic_subp_inst_nonterminal'Class) is
   begin
      null;
   end After_generic_subp_inst_nonterminal;
   procedure Visit_generic_subp_inst_nonterminal(
         I : access DFS;
         N : access generic_subp_inst_Model.generic_subp_inst_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_subp_inst_nonterminal(N);
      N.subprog_spec_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.generic_inst_part.Acceptor(I);
      I_Classwide.After_generic_subp_inst_nonterminal(N);
   end Visit_generic_subp_inst_nonterminal;
   procedure Before_generic_pkg_inst_nonterminal(
      I : access DFS;
      N : access generic_pkg_inst_Model.generic_pkg_inst_nonterminal'Class) is
   begin
      null;
   end Before_generic_pkg_inst_nonterminal;
   procedure After_generic_pkg_inst_nonterminal(
      I : access DFS;
      N : access generic_pkg_inst_Model.generic_pkg_inst_nonterminal'Class) is
   begin
      null;
   end After_generic_pkg_inst_nonterminal;
   procedure Visit_generic_pkg_inst_nonterminal(
         I : access DFS;
         N : access generic_pkg_inst_Model.generic_pkg_inst_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_pkg_inst_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.PACKAGE_part);
      N.compound_name_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.IS_part);
      N.generic_inst_part.Acceptor(I);
      I_Classwide.After_generic_pkg_inst_nonterminal(N);
   end Visit_generic_pkg_inst_nonterminal;
   procedure Before_generic_inst_nonterminal(
      I : access DFS;
      N : access generic_inst_Model.generic_inst_nonterminal'Class) is
   begin
      null;
   end Before_generic_inst_nonterminal;
   procedure After_generic_inst_nonterminal(
      I : access DFS;
      N : access generic_inst_Model.generic_inst_nonterminal'Class) is
   begin
      null;
   end After_generic_inst_nonterminal;
   procedure Visit_generic_inst_nonterminal(
         I : access DFS;
         N : access generic_inst_Model.generic_inst_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_generic_inst_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.NEW_part);
      N.name_part.Acceptor(I);
      I_Classwide.After_generic_inst_nonterminal(N);
   end Visit_generic_inst_nonterminal;
   procedure Before_rep_spec_nonterminal1(
      I : access DFS;
      N : access rep_spec_Model.rep_spec_nonterminal1'Class) is
   begin
      null;
   end Before_rep_spec_nonterminal1;
   procedure After_rep_spec_nonterminal1(
      I : access DFS;
      N : access rep_spec_Model.rep_spec_nonterminal1'Class) is
   begin
      null;
   end After_rep_spec_nonterminal1;
   procedure Visit_rep_spec_nonterminal1(
         I : access DFS;
         N : access rep_spec_Model.rep_spec_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rep_spec_nonterminal1(N);
      N.attrib_def_part.Acceptor(I);
      I_Classwide.After_rep_spec_nonterminal1(N);
   end Visit_rep_spec_nonterminal1;
   procedure Before_rep_spec_nonterminal2(
      I : access DFS;
      N : access rep_spec_Model.rep_spec_nonterminal2'Class) is
   begin
      null;
   end Before_rep_spec_nonterminal2;
   procedure After_rep_spec_nonterminal2(
      I : access DFS;
      N : access rep_spec_Model.rep_spec_nonterminal2'Class) is
   begin
      null;
   end After_rep_spec_nonterminal2;
   procedure Visit_rep_spec_nonterminal2(
         I : access DFS;
         N : access rep_spec_Model.rep_spec_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rep_spec_nonterminal2(N);
      N.record_type_spec_part.Acceptor(I);
      I_Classwide.After_rep_spec_nonterminal2(N);
   end Visit_rep_spec_nonterminal2;
   procedure Before_rep_spec_nonterminal3(
      I : access DFS;
      N : access rep_spec_Model.rep_spec_nonterminal3'Class) is
   begin
      null;
   end Before_rep_spec_nonterminal3;
   procedure After_rep_spec_nonterminal3(
      I : access DFS;
      N : access rep_spec_Model.rep_spec_nonterminal3'Class) is
   begin
      null;
   end After_rep_spec_nonterminal3;
   procedure Visit_rep_spec_nonterminal3(
         I : access DFS;
         N : access rep_spec_Model.rep_spec_nonterminal3'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_rep_spec_nonterminal3(N);
      N.address_spec_part.Acceptor(I);
      I_Classwide.After_rep_spec_nonterminal3(N);
   end Visit_rep_spec_nonterminal3;
   procedure Before_attrib_def_nonterminal(
      I : access DFS;
      N : access attrib_def_Model.attrib_def_nonterminal'Class) is
   begin
      null;
   end Before_attrib_def_nonterminal;
   procedure After_attrib_def_nonterminal(
      I : access DFS;
      N : access attrib_def_Model.attrib_def_nonterminal'Class) is
   begin
      null;
   end After_attrib_def_nonterminal;
   procedure Visit_attrib_def_nonterminal(
         I : access DFS;
         N : access attrib_def_Model.attrib_def_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_attrib_def_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.FOR_part);
      N.mark_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.USE_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_attrib_def_nonterminal(N);
   end Visit_attrib_def_nonterminal;
   procedure Before_record_type_spec_nonterminal(
      I : access DFS;
      N : access record_type_spec_Model.record_type_spec_nonterminal'Class) is
   begin
      null;
   end Before_record_type_spec_nonterminal;
   procedure After_record_type_spec_nonterminal(
      I : access DFS;
      N : access record_type_spec_Model.record_type_spec_nonterminal'Class) is
   begin
      null;
   end After_record_type_spec_nonterminal;
   procedure Visit_record_type_spec_nonterminal(
         I : access DFS;
         N : access record_type_spec_Model.record_type_spec_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_record_type_spec_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.FOR_part);
      N.mark_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.USE_part);
      I_Classwide.Visit_Parseable_Token(N.RECORD_part1);
      N.align_opt_part.Acceptor(I);
      N.comp_loc_s_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.END_part);
      I_Classwide.Visit_Parseable_Token(N.RECORD_part2);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_record_type_spec_nonterminal(N);
   end Visit_record_type_spec_nonterminal;
   procedure Before_align_opt_nonterminal1(
      I : access DFS;
      N : access align_opt_Model.align_opt_nonterminal1'Class) is
   begin
      null;
   end Before_align_opt_nonterminal1;
   procedure After_align_opt_nonterminal1(
      I : access DFS;
      N : access align_opt_Model.align_opt_nonterminal1'Class) is
   begin
      null;
   end After_align_opt_nonterminal1;
   procedure Visit_align_opt_nonterminal1(
         I : access DFS;
         N : access align_opt_Model.align_opt_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_align_opt_nonterminal1(N);
      I_Classwide.After_align_opt_nonterminal1(N);
   end Visit_align_opt_nonterminal1;
   procedure Before_align_opt_nonterminal2(
      I : access DFS;
      N : access align_opt_Model.align_opt_nonterminal2'Class) is
   begin
      null;
   end Before_align_opt_nonterminal2;
   procedure After_align_opt_nonterminal2(
      I : access DFS;
      N : access align_opt_Model.align_opt_nonterminal2'Class) is
   begin
      null;
   end After_align_opt_nonterminal2;
   procedure Visit_align_opt_nonterminal2(
         I : access DFS;
         N : access align_opt_Model.align_opt_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_align_opt_nonterminal2(N);
      I_Classwide.Visit_Parseable_Token(N.AT_part);
      I_Classwide.Visit_Parseable_Token(N.MOD_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_align_opt_nonterminal2(N);
   end Visit_align_opt_nonterminal2;
   procedure Before_comp_loc_s_nonterminal1(
      I : access DFS;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal1'Class) is
   begin
      null;
   end Before_comp_loc_s_nonterminal1;
   procedure After_comp_loc_s_nonterminal1(
      I : access DFS;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal1'Class) is
   begin
      null;
   end After_comp_loc_s_nonterminal1;
   procedure Visit_comp_loc_s_nonterminal1(
         I : access DFS;
         N : access comp_loc_s_Model.comp_loc_s_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_loc_s_nonterminal1(N);
      I_Classwide.After_comp_loc_s_nonterminal1(N);
   end Visit_comp_loc_s_nonterminal1;
   procedure Before_comp_loc_s_nonterminal2(
      I : access DFS;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal2'Class) is
   begin
      null;
   end Before_comp_loc_s_nonterminal2;
   procedure After_comp_loc_s_nonterminal2(
      I : access DFS;
      N : access comp_loc_s_Model.comp_loc_s_nonterminal2'Class) is
   begin
      null;
   end After_comp_loc_s_nonterminal2;
   procedure Visit_comp_loc_s_nonterminal2(
         I : access DFS;
         N : access comp_loc_s_Model.comp_loc_s_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_comp_loc_s_nonterminal2(N);
      N.comp_loc_s_part.Acceptor(I);
      N.mark_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.AT_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.RANGE_part);
      N.range_sym_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_comp_loc_s_nonterminal2(N);
   end Visit_comp_loc_s_nonterminal2;
   procedure Before_address_spec_nonterminal(
      I : access DFS;
      N : access address_spec_Model.address_spec_nonterminal'Class) is
   begin
      null;
   end Before_address_spec_nonterminal;
   procedure After_address_spec_nonterminal(
      I : access DFS;
      N : access address_spec_Model.address_spec_nonterminal'Class) is
   begin
      null;
   end After_address_spec_nonterminal;
   procedure Visit_address_spec_nonterminal(
         I : access DFS;
         N : access address_spec_Model.address_spec_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_address_spec_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.FOR_part);
      N.mark_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.USE_part);
      I_Classwide.Visit_Parseable_Token(N.AT_part);
      N.expression_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_address_spec_nonterminal(N);
   end Visit_address_spec_nonterminal;
   procedure Before_code_stmt_nonterminal(
      I : access DFS;
      N : access code_stmt_Model.code_stmt_nonterminal'Class) is
   begin
      null;
   end Before_code_stmt_nonterminal;
   procedure After_code_stmt_nonterminal(
      I : access DFS;
      N : access code_stmt_Model.code_stmt_nonterminal'Class) is
   begin
      null;
   end After_code_stmt_nonterminal;
   procedure Visit_code_stmt_nonterminal(
         I : access DFS;
         N : access code_stmt_Model.code_stmt_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_code_stmt_nonterminal(N);
      N.qualified_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.SEMICOLON_part);
      I_Classwide.After_code_stmt_nonterminal(N);
   end Visit_code_stmt_nonterminal;
end ada95_DFS;
