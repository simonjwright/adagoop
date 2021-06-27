-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with subtype_ind_model;
limited with aliased_opt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package component_subtype_def_model is
   type component_subtype_def_nonterminal is new Parseable with record
      aliased_opt_part : access aliased_opt_model.aliased_opt_nonterminal'Class;
      subtype_ind_part : access subtype_ind_model.subtype_ind_nonterminal'Class;
   end record;
   procedure Acceptor(This : access component_subtype_def_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end component_subtype_def_model;
