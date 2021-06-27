-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with formal_part_opt_model;
limited with entry_name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package accept_hdr_model is
   type accept_hdr_nonterminal is new Parseable with record
      accept_part : Parseable_Token_Ptr;
      entry_name_part : access entry_name_model.entry_name_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access accept_hdr_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end accept_hdr_model;
