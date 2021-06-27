-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with cond_clause_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package cond_clause_s_model is
   type cond_clause_s_nonterminal is abstract new Parseable with null record;
   type cond_clause_s_nonterminal1 is new cond_clause_s_nonterminal with record
      cond_clause_part : access cond_clause_model.cond_clause_nonterminal'Class;
   end record;
   procedure Acceptor(This : access cond_clause_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type cond_clause_s_nonterminal2 is new cond_clause_s_nonterminal with record
      cond_clause_s_part : access cond_clause_s_model.cond_clause_s_nonterminal'Class;
      ELSIF_part : Parseable_Token_Ptr;
      cond_clause_part : access cond_clause_model.cond_clause_nonterminal'Class;
   end record;
   procedure Acceptor(This : access cond_clause_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end cond_clause_s_model;
