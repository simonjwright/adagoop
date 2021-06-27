-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with limited_opt_model;
limited with tagged_opt_model;
with ada95_model;
use ada95_model;
with ada95_Visitor_Interface;
package private_type_model is
   type private_type_nonterminal is new Parseable with record
      tagged_opt_part : access tagged_opt_model.tagged_opt_nonterminal'Class;
      limited_opt_part : access limited_opt_model.limited_opt_nonterminal'Class;
      PRIVATE_part : Parseable_Token_Ptr;
   end record;
   procedure Acceptor(This : access private_type_nonterminal;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class);
end private_type_model;
