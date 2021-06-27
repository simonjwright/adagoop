-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrim_spec_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package discrim_part_model is
   type discrim_part_nonterminal is new Parseable with record
      L_PAREN_part : Parseable_Token_Ptr;
      discrim_spec_s_part : access discrim_spec_s_model.discrim_spec_s_nonterminal'Class;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access discrim_part_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end discrim_part_model;
