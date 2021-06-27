-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with name_s_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package use_clause_model is
   type use_clause_nonterminal is abstract new Parseable with null record;
   type use_clause_nonterminal1 is new use_clause_nonterminal with record
      USE_part : Parseable_Token_Ptr;
      name_s_part : access name_s_model.name_s_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access use_clause_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type use_clause_nonterminal2 is new use_clause_nonterminal with record
      USE_part : Parseable_Token_Ptr;
      TYPE_part : Parseable_Token_Ptr;
      name_s_part : access name_s_model.name_s_nonterminal'Class;
      SEMICOLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access use_clause_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end use_clause_model;
