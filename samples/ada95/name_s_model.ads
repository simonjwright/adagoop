-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package name_s_model is
   type name_s_nonterminal is abstract new Parseable with null record;
   type name_s_nonterminal1 is new name_s_nonterminal with record
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type name_s_nonterminal2 is new name_s_nonterminal with record
      name_s_part : access name_s_model.name_s_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      name_part : access name_model.name_nonterminal'Class;
   end record;
   procedure Acceptor(This : access name_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end name_s_model;
