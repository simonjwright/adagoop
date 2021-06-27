-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with prot_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package prot_decl_model is
   type prot_decl_nonterminal is new Parseable with record
      prot_spec_part : access prot_spec_model.prot_spec_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access prot_decl_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end prot_decl_model;
