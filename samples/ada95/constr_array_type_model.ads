-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with component_subtype_def_model;
limited with iter_index_constraint_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package constr_array_type_model is
   type constr_array_type_nonterminal is new Parseable with record
      ARRAY_part : Parseable_Token_Ptr;
      iter_index_constraint_part : access iter_index_constraint_model.iter_index_constraint_nonterminal'Class;
      OF_part : Parseable_Token_Ptr;
      component_subtype_def_part : access component_subtype_def_model.component_subtype_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access constr_array_type_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end constr_array_type_model;
