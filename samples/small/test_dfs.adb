-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body test_DFS is
   procedure Before_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class) is
   begin
      null;
   end Before_A_nonterminal1;
   procedure After_A_nonterminal1(
      I : access DFS;
      N : access A_Model.A_nonterminal1'Class) is
   begin
      null;
   end After_A_nonterminal1;
   procedure Visit_A_nonterminal1(
         I : access DFS;
         N : access A_Model.A_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_A_nonterminal1(N);
      N.A_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.PROCEDURE_part);
      N.B_part.Acceptor(I);
      I_Classwide.After_A_nonterminal1(N);
   end Visit_A_nonterminal1;
   procedure Before_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class) is
   begin
      null;
   end Before_A_nonterminal2;
   procedure After_A_nonterminal2(
      I : access DFS;
      N : access A_Model.A_nonterminal2'Class) is
   begin
      null;
   end After_A_nonterminal2;
   procedure Visit_A_nonterminal2(
         I : access DFS;
         N : access A_Model.A_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_A_nonterminal2(N);
      N.B_part.Acceptor(I);
      I_Classwide.After_A_nonterminal2(N);
   end Visit_A_nonterminal2;
   procedure Before_B_nonterminal1(
      I : access DFS;
      N : access B_Model.B_nonterminal1'Class) is
   begin
      null;
   end Before_B_nonterminal1;
   procedure After_B_nonterminal1(
      I : access DFS;
      N : access B_Model.B_nonterminal1'Class) is
   begin
      null;
   end After_B_nonterminal1;
   procedure Visit_B_nonterminal1(
         I : access DFS;
         N : access B_Model.B_nonterminal1'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_B_nonterminal1(N);
      N.B_part.Acceptor(I);
      I_Classwide.Visit_Parseable_Token(N.OPEN_part);
      N.C_part.Acceptor(I);
      I_Classwide.After_B_nonterminal1(N);
   end Visit_B_nonterminal1;
   procedure Before_B_nonterminal2(
      I : access DFS;
      N : access B_Model.B_nonterminal2'Class) is
   begin
      null;
   end Before_B_nonterminal2;
   procedure After_B_nonterminal2(
      I : access DFS;
      N : access B_Model.B_nonterminal2'Class) is
   begin
      null;
   end After_B_nonterminal2;
   procedure Visit_B_nonterminal2(
         I : access DFS;
         N : access B_Model.B_nonterminal2'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_B_nonterminal2(N);
      N.C_part.Acceptor(I);
      I_Classwide.After_B_nonterminal2(N);
   end Visit_B_nonterminal2;
   procedure Before_C_nonterminal(
      I : access DFS;
      N : access C_Model.C_nonterminal'Class) is
   begin
      null;
   end Before_C_nonterminal;
   procedure After_C_nonterminal(
      I : access DFS;
      N : access C_Model.C_nonterminal'Class) is
   begin
      null;
   end After_C_nonterminal;
   procedure Visit_C_nonterminal(
         I : access DFS;
         N : access C_Model.C_nonterminal'Class) is
      I_Classwide : access DFS'Class := I;
   begin
      I_Classwide.Before_C_nonterminal(N);
      I_Classwide.Visit_Parseable_Token(N.WRITE_part);
      I_Classwide.After_C_nonterminal(N);
   end Visit_C_nonterminal;
end test_DFS;
