-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body test_Model is
   procedure Acceptor(This : access Parseable_Token;
      I : access test_Visitor_Interface.Visit_test_Interface'Class) is
   begin
      I.Visit_Parseable_Token(This);
   end Acceptor;
end test_Model;
