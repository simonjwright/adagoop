-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with ada05_model;
use ada05_model;
with ada05_Visitor_Interface;
package not_null_opt_access_model is
   type not_null_opt_access_nonterminal is abstract new Parseable with null record;
   type not_null_opt_access_nonterminal1 is new not_null_opt_access_nonterminal with record
      NOT_part : Parseable_Token_Ptr;
      NULL_part : Parseable_Token_Ptr;
      aCCESS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access not_null_opt_access_nonterminal1;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
   type not_null_opt_access_nonterminal2 is new not_null_opt_access_nonterminal with record
      ACCESS_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access not_null_opt_access_nonterminal2;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class);
end not_null_opt_access_model;
