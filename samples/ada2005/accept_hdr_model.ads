-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with formal_part_opt_model;
limited with entry_name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package accept_hdr_model is
   type accept_hdr_nonterminal is new Parseable with record
      accept_part : Parseable_Token_Ptr;
      entry_name_part : access entry_name_model.entry_name_nonterminal'Class;
      formal_part_opt_part : access formal_part_opt_model.formal_part_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access accept_hdr_nonterminal;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end accept_hdr_model;
