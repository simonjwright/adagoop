-- Sample DFS.  Only overrode the parseable_token traverse routine
with Ada.Text_IO;
with Test_Model;
package body DFS_Print is
   procedure Visit_Parseable_Token(
      I : access DFS;
      T : access test_Model.Parseable_Token'Class) is
   begin
      Ada.Text_IO.Put_Line('"' & T.token_String.all & '"');  -- was T.token_String.all
   end Visit_Parseable_Token;
end DFS_Print;
