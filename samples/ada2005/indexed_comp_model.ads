-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with value_s_model;
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package indexed_comp_model is
   type indexed_comp_nonterminal is new Parseable with record
      name_part : access name_model.name_nonterminal'Class;
      L_PAREN_part : Parseable_Token_Ptr;
      value_s_part : access value_s_model.value_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access indexed_comp_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end indexed_comp_model;
