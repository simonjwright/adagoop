-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with address_spec_model;
limited with record_type_spec_model;
limited with attrib_def_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package rep_spec_model is
   type rep_spec_nonterminal is abstract new Parseable with null record;
   type rep_spec_nonterminal1 is new rep_spec_nonterminal with record
      attrib_def_part : access attrib_def_model.attrib_def_nonterminal'Class;
   end record;
   procedure Acceptor(This : access rep_spec_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type rep_spec_nonterminal2 is new rep_spec_nonterminal with record
      record_type_spec_part : access record_type_spec_model.record_type_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access rep_spec_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type rep_spec_nonterminal3 is new rep_spec_nonterminal with record
      address_spec_part : access address_spec_model.address_spec_nonterminal'Class;
   end record;
   procedure Acceptor(This : access rep_spec_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end rep_spec_model;
