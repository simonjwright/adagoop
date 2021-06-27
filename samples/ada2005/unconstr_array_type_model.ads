-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with component_subtype_def_model;
limited with index_s_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package unconstr_array_type_model is
   type unconstr_array_type_nonterminal is new Parseable with record
      ARRAY_part : Parseable_Token_Ptr;
      L_PAREN_part : Parseable_Token_Ptr;
      index_s_part : access index_s_model.index_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
      OF_part : Parseable_Token_Ptr;
      component_subtype_def_part : access component_subtype_def_model.component_subtype_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access unconstr_array_type_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end unconstr_array_type_model;
