-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subprog_spec_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package subprog_spec_is_push_model is
   type subprog_spec_is_push_nonterminal is new Parseable with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subprog_spec_is_push_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end subprog_spec_is_push_model;
