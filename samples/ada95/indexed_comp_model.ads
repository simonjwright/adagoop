-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with value_s_model;
limited with name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package indexed_comp_model is
   type indexed_comp_nonterminal is new Parseable with record
      name_part : access name_model.name_nonterminal'Class;
      L_PAREN_part : Parseable_Token_Ptr;
      value_s_part : access value_s_model.value_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access indexed_comp_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end indexed_comp_model;
