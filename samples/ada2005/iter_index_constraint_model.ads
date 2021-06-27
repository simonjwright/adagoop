-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with iter_discrete_range_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package iter_index_constraint_model is
   type iter_index_constraint_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      iter_discrete_range_s_part : access iter_discrete_range_s_model.iter_discrete_range_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access iter_index_constraint_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end iter_index_constraint_model;
