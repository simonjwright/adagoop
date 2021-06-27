-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with A_Model;
limited with bob_Model;
with bob_Visitor_Interface;
use bob_Visitor_Interface;
package bob_DFS is
   type Root is tagged null record;
   type DFS is new Root and 
      bob_Visitor_Interface.Visit_bob_Interface with null record;
   overriding procedure Before_A_nonterminal(
      I : access DFS;
      N : access A_Model.A_nonterminal'Class);
   overriding procedure After_A_nonterminal(
      I : access DFS;
      N : access A_Model.A_nonterminal'Class);
   overriding procedure Visit_A_nonterminal(
      I : access DFS;
      N : access A_Model.A_nonterminal'Class);
end bob_DFS;
