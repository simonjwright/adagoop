-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with range_sym_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package range_constraint_model is
   type range_constraint_nonterminal is new Parseable with record
      RANGE_part : Parseable_Token_Ptr;
      range_sym_part : access range_sym_model.range_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access range_constraint_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end range_constraint_model;
