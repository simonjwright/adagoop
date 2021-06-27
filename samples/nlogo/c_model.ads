-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with WRITE_model;
with small_model;
use small_model;
with small_Visitor_Interface;
package C_model is
   type C_nonterminal is new Parseable with record
      WRITE_part : access WRITE_model.WRITE_nonterminal'Class;
   end record;
   procedure Acceptor(This : access C_nonterminal;
      I : access small_Visitor_Interface.Visit_small_Interface'Class);
end C_model;
