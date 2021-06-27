-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
limited with A_Model;
limited with bob_Model;
package bob_Visitor_Interface is
   type Visit_bob_Interface is interface;

   procedure Visit_Parseable_Token(
      I : access Visit_bob_Interface;
      T : access bob_Model.Parseable_Token'Class) is null;

   procedure Before_A_nonterminal(
      I : access Visit_bob_Interface;
      N : access A_Model.A_nonterminal'Class) is null;
   procedure Visit_A_nonterminal(
      I : access Visit_bob_Interface;
      N : access A_Model.A_nonterminal'Class) is abstract;
   procedure After_A_nonterminal(
      I : access Visit_bob_Interface;
      N : access A_Model.A_nonterminal'Class) is null;

end bob_Visitor_Interface;
