-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body bob_DFS is
   procedure Before_A_nonterminal(
      I : access DFS;
      N : access A_Model.A_nonterminal'Class) is
   begin
      null;
   end Before_A_nonterminal;
   procedure After_A_nonterminal(
      I : access DFS;
      N : access A_Model.A_nonterminal'Class) is
   begin
      null;
   end After_A_nonterminal;
   procedure Visit_A_nonterminal(
         I : access DFS;
         N : access A_Model.A_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_A_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.RANGE_OP_part);
      I_Classwide.After_A_nonterminal(N);
   end Visit_A_nonterminal;
end bob_DFS;
