-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_sym_model;
limited with use_clause_opt_model;
limited with with_clause_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package context_spec_model is
   type context_spec_nonterminal is abstract new Parseable with null record;
   type context_spec_nonterminal1 is new context_spec_nonterminal with record
      with_clause_part : access with_clause_model.with_clause_nonterminal'Class;
      use_clause_opt_part : access use_clause_opt_model.use_clause_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access context_spec_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type context_spec_nonterminal2 is new context_spec_nonterminal with record
      context_spec_part : access context_spec_model.context_spec_nonterminal'Class;
      with_clause_part : access with_clause_model.with_clause_nonterminal'Class;
      use_clause_opt_part : access use_clause_opt_model.use_clause_opt_nonterminal'Class;
   end record;
   procedure Acceptor(This : access context_spec_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type context_spec_nonterminal3 is new context_spec_nonterminal with record
      context_spec_part : access context_spec_model.context_spec_nonterminal'Class;
      pragma_sym_part : access pragma_sym_model.pragma_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access context_spec_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end context_spec_model;
