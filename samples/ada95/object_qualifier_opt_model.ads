-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package object_qualifier_opt_model is
   type object_qualifier_opt_nonterminal is abstract new Parseable with null record;
   type object_qualifier_opt_nonterminal1 is new object_qualifier_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access object_qualifier_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type object_qualifier_opt_nonterminal2 is new object_qualifier_opt_nonterminal with record
      aliased_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access object_qualifier_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type object_qualifier_opt_nonterminal3 is new object_qualifier_opt_nonterminal with record
      CONSTANT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access object_qualifier_opt_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type object_qualifier_opt_nonterminal4 is new object_qualifier_opt_nonterminal with record
      aliased_part : Parseable_Token_Ptr;
      CONSTANT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access object_qualifier_opt_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end object_qualifier_opt_model;
