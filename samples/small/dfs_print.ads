-- sample DFS.  Only override for a token to print 1 per line
limited with test_Model;
with Test_DFS;
with Test_Visitor_Interface;
package DFS_Print is
   type DFS is new Test_DFS.DFS with null record;
   overriding procedure Visit_Parseable_Token(
      I : access DFS;
      T : access test_Model.Parseable_Token'Class);
end DFS_Print;
