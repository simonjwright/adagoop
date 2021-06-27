-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package subp_default_model is
   type subp_default_nonterminal is abstract new Parseable with null record;
   type subp_default_nonterminal1 is new subp_default_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access subp_default_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subp_default_nonterminal2 is new subp_default_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access subp_default_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subp_default_nonterminal3 is new subp_default_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subp_default_nonterminal3;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type subp_default_nonterminal4 is new subp_default_nonterminal with record
      IS_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access subp_default_nonterminal4;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end subp_default_model;
