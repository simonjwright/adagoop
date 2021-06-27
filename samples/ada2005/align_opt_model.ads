-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with expression_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package align_opt_model is
   type align_opt_nonterminal is abstract new Parseable with null record;
   type align_opt_nonterminal1 is new align_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access align_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type align_opt_nonterminal2 is new align_opt_nonterminal with record
      AT_part : Parseable_Token_Ptr;
      MOD_part : Parseable_Token_Ptr;
      expression_part : access expression_model.expression_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access align_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end align_opt_model;
