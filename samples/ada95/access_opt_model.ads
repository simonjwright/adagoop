-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package access_opt_model is
   type access_opt_nonterminal is abstract new Parseable with null record;
   type access_opt_nonterminal1 is new access_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access access_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type access_opt_nonterminal2 is new access_opt_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access access_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end access_opt_model;
