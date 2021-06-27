-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with GE_model;
limited with LT_EQ_model;
limited with NE_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package relational_model is
   type relational_nonterminal is abstract new Parseable with null record;
   type relational_nonterminal1 is new relational_nonterminal with record
      EQ_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access relational_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relational_nonterminal2 is new relational_nonterminal with record
      NE_part : access NE_model.NE_nonterminal'Class;
   end record;
   procedure Acceptor(This : access relational_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relational_nonterminal3 is new relational_nonterminal with record
      LT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access relational_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relational_nonterminal4 is new relational_nonterminal with record
      LT_EQ_part : access LT_EQ_model.LT_EQ_nonterminal'Class;
   end record;
   procedure Acceptor(This : access relational_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relational_nonterminal5 is new relational_nonterminal with record
      GT_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access relational_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type relational_nonterminal6 is new relational_nonterminal with record
      GE_part : access GE_model.GE_nonterminal'Class;
   end record;
   procedure Acceptor(This : access relational_nonterminal6;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end relational_model;
