-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with generic_derived_type_model;
limited with private_type_model;
limited with access_type_model;
limited with array_type_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package generic_type_def_model is
   type generic_type_def_nonterminal is abstract new Parseable with null record;
   type generic_type_def_nonterminal1 is new generic_type_def_nonterminal with record
      L_PAREN_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
      R_PAREN_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal1;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal2 is new generic_type_def_nonterminal with record
      RANGE_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal2;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal3 is new generic_type_def_nonterminal with record
      MOD_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal3;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal4 is new generic_type_def_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal4;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal5 is new generic_type_def_nonterminal with record
      DELTA_part : Parseable_Token_Ptr;
      BOX_part1 : Parseable_Token_Ptr;
      DIGITS_part : Parseable_Token_Ptr;
      BOX_part2 : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal5;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal6 is new generic_type_def_nonterminal with record
      DIGITS_part : Parseable_Token_Ptr;
      BOX_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal6;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal7 is new generic_type_def_nonterminal with record
      array_type_part : access array_type_model.array_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal7;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal8 is new generic_type_def_nonterminal with record
      access_type_part : access access_type_model.access_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal8;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal9 is new generic_type_def_nonterminal with record
      private_type_part : access private_type_model.private_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal9;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
   type generic_type_def_nonterminal10 is new generic_type_def_nonterminal with record
      generic_derived_type_part : access generic_derived_type_model.generic_derived_type_nonterminal'Class;
   end record;
   procedure Acceptor(This : access generic_type_def_nonterminal10;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end generic_type_def_model;
