-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with param_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package formal_part_model is
   type formal_part_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      param_s_part : access param_s_model.param_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access formal_part_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end formal_part_model;
