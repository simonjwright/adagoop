-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package label_opt_model is
   type label_opt_nonterminal is abstract new Parseable with null record;
   type label_opt_nonterminal1 is new label_opt_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access label_opt_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type label_opt_nonterminal2 is new label_opt_nonterminal with record
      identifier_part : Parseable_Token_Ptr;
      COLON_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access label_opt_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end label_opt_model;
