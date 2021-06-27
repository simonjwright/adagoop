-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with constr_array_type_model;
limited with unconstr_array_type_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package array_type_model is
   type array_type_nonterminal is abstract new Parseable with null record;
   type array_type_nonterminal1 is new array_type_nonterminal with record
      unconstr_array_type_part : access unconstr_array_type_model.unconstr_array_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access array_type_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type array_type_nonterminal2 is new array_type_nonterminal with record
      constr_array_type_part : access constr_array_type_model.constr_array_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access array_type_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end array_type_model;
