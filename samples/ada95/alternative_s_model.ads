-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with alternative_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package alternative_s_model is
   type alternative_s_nonterminal is abstract new Parseable with null record;
   type alternative_s_nonterminal1 is new alternative_s_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access alternative_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type alternative_s_nonterminal2 is new alternative_s_nonterminal with record
      alternative_s_part : access alternative_s_model.alternative_s_nonterminal'Class;
      alternative_part : access alternative_model.alternative_nonterminal'Class;
   end record;
   procedure Acceptor(This : access alternative_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end alternative_s_model;
