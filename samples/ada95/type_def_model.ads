-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with private_type_model;
limited with derived_type_model;
limited with access_type_model;
limited with record_type_model;
limited with array_type_model;
limited with real_type_model;
limited with integer_type_model;
limited with enumeration_type_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package type_def_model is
   type type_def_nonterminal is abstract new Parseable with null record;
   type type_def_nonterminal1 is new type_def_nonterminal with record
      enumeration_type_part : access enumeration_type_model.enumeration_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type type_def_nonterminal2 is new type_def_nonterminal with record
      integer_type_part : access integer_type_model.integer_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type type_def_nonterminal3 is new type_def_nonterminal with record
      real_type_part : access real_type_model.real_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type type_def_nonterminal4 is new type_def_nonterminal with record
      array_type_part : access array_type_model.array_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type type_def_nonterminal5 is new type_def_nonterminal with record
      record_type_part : access record_type_model.record_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type type_def_nonterminal6 is new type_def_nonterminal with record
      access_type_part : access access_type_model.access_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal6;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type type_def_nonterminal7 is new type_def_nonterminal with record
      derived_type_part : access derived_type_model.derived_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal7;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type type_def_nonterminal8 is new type_def_nonterminal with record
      private_type_part : access private_type_model.private_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access type_def_nonterminal8;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end type_def_model;
