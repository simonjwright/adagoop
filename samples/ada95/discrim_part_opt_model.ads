-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with discrim_part_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package discrim_part_opt_model is
   type discrim_part_opt_nonterminal is abstract new Parseable with null record;
   type discrim_part_opt_nonterminal1 is new discrim_part_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access discrim_part_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type discrim_part_opt_nonterminal2 is new discrim_part_opt_nonterminal with record
      discrim_part_part : access discrim_part_model.discrim_part_nonterminal'Class;
   end record;
   procedure Acceptor(This : access discrim_part_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type discrim_part_opt_nonterminal3 is new discrim_part_opt_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access discrim_part_opt_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end discrim_part_opt_model;
