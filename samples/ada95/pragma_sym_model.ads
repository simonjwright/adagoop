-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_arg_s_model;
limited with simple_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package pragma_sym_model is
   type pragma_sym_nonterminal is abstract new Parseable with null record;
   type pragma_sym_nonterminal1 is new pragma_sym_nonterminal with record
      PRAGMA_part : Parseable_Token_Ptr;
      identifier_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access pragma_sym_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type pragma_sym_nonterminal2 is new pragma_sym_nonterminal with record
      PRAGMA_part : Parseable_Token_Ptr;
      simple_name_part : access simple_name_model.simple_name_nonterminal'Class;
      L_PAREN_part : Parseable_Token_Ptr;
      pragma_arg_s_part : access pragma_arg_s_model.pragma_arg_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access pragma_sym_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end pragma_sym_model;
