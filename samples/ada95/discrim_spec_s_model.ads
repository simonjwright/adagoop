-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrim_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package discrim_spec_s_model is
   type discrim_spec_s_nonterminal is abstract new Parseable with null record;
   type discrim_spec_s_nonterminal1 is new discrim_spec_s_nonterminal with record
      discrim_spec_part : access discrim_spec_model.discrim_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access discrim_spec_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type discrim_spec_s_nonterminal2 is new discrim_spec_s_nonterminal with record
      discrim_spec_s_part : access discrim_spec_s_model.discrim_spec_s_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
      discrim_spec_part : access discrim_spec_model.discrim_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access discrim_spec_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end discrim_spec_s_model;
