-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_s_model;
limited with rep_spec_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package rep_spec_s_model is
   type rep_spec_s_nonterminal is abstract new Parseable with null record;
   type rep_spec_s_nonterminal1 is new rep_spec_s_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access rep_spec_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type rep_spec_s_nonterminal2 is new rep_spec_s_nonterminal with record
      rep_spec_s_part : access rep_spec_s_model.rep_spec_s_nonterminal'Class;
      rep_spec_part : access rep_spec_model.rep_spec_nonterminal'Class;
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
   end record;
   procedure Acceptor(This : access rep_spec_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end rep_spec_s_model;
