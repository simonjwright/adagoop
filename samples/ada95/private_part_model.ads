-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with decl_item_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package private_part_model is
   type private_part_nonterminal is abstract new Parseable with null record;
   type private_part_nonterminal1 is new private_part_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access private_part_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type private_part_nonterminal2 is new private_part_nonterminal with record
      PRIVATE_part : Parseable_Token_Ptr;
      decl_item_s_part : access decl_item_s_model.decl_item_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access private_part_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end private_part_model;
