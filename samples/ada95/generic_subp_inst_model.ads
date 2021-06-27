-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with generic_inst_model;
limited with subprog_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package generic_subp_inst_model is
   type generic_subp_inst_nonterminal is new Parseable with record
      subprog_spec_part : access subprog_spec_model.subprog_spec_nonterminal'Class;
      IS_part : Parseable_Token_Ptr;
      generic_inst_part : access generic_inst_model.generic_inst_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_subp_inst_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end generic_subp_inst_model;
