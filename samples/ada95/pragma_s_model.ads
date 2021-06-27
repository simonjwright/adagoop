-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with pragma_sym_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package pragma_s_model is
   type pragma_s_nonterminal is abstract new Parseable with null record;
   type pragma_s_nonterminal1 is new pragma_s_nonterminal with record
      null;
   end record;
   procedure Acceptor(This : access pragma_s_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type pragma_s_nonterminal2 is new pragma_s_nonterminal with record
      pragma_s_part : access pragma_s_model.pragma_s_nonterminal'Class;
      pragma_sym_part : access pragma_sym_model.pragma_sym_nonterminal'Class;
   end record;
   procedure Acceptor(This : access pragma_s_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end pragma_s_model;
