-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_arg_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package pragma_arg_s_model is
   type pragma_arg_s_nonterminal is abstract new Parseable with null record;
   type pragma_arg_s_nonterminal1 is new pragma_arg_s_nonterminal with record
      pragma_arg_part : access pragma_arg_model.pragma_arg_nonterminal'Class;
   end record;
   procedure Acceptor(This : access pragma_arg_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type pragma_arg_s_nonterminal2 is new pragma_arg_s_nonterminal with record
      pragma_arg_s_part : access pragma_arg_s_model.pragma_arg_s_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      pragma_arg_part : access pragma_arg_model.pragma_arg_nonterminal'Class;
   end record;
   procedure Acceptor(This : access pragma_arg_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end pragma_arg_s_model;
