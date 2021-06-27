-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with index_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package index_s_model is
   type index_s_nonterminal is abstract new Parseable with null record;
   type index_s_nonterminal1 is new index_s_nonterminal with record
      index_part : access index_model.index_nonterminal'Class;
   end record;
   procedure Acceptor(This : access index_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type index_s_nonterminal2 is new index_s_nonterminal with record
      index_s_part : access index_s_model.index_s_nonterminal'Class;
      COMMA_part : Parseable_Token_Ptr;
      index_part : access index_model.index_nonterminal'Class;
   end record;
   procedure Acceptor(This : access index_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end index_s_model;
