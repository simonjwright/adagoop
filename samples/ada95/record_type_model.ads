-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with record_def_model;
limited with limited_opt_model;
limited with tagged_opt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package record_type_model is
   type record_type_nonterminal is new Parseable with record
      tagged_opt_part : access tagged_opt_model.tagged_opt_nonterminal'Class;
      limited_opt_part : access limited_opt_model.limited_opt_nonterminal'Class;
      record_def_part : access record_def_model.record_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access record_type_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end record_type_model;
