-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with param_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package param_s_model is
   type param_s_nonterminal is abstract new Parseable with null record;
   type param_s_nonterminal1 is new param_s_nonterminal with record
      param_part : access param_model.param_nonterminal'Class;
   end record;
   procedure Acceptor(This : access param_s_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type param_s_nonterminal2 is new param_s_nonterminal with record
      param_s_part : access param_s_model.param_s_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
      param_part : access param_model.param_nonterminal'Class;
   end record;
   procedure Acceptor(This : access param_s_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end param_s_model;
