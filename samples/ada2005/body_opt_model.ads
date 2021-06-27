-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with block_body_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package body_opt_model is
   type body_opt_nonterminal is abstract new Parseable with null record;
   type body_opt_nonterminal1 is new body_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access body_opt_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type body_opt_nonterminal2 is new body_opt_nonterminal with record
      block_body_part : access block_body_model.block_body_nonterminal'Class;
   end record;
   procedure Acceptor(This : access body_opt_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end body_opt_model;
