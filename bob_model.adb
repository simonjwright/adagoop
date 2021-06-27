-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body bob_Model is
   procedure Acceptor(This : access Parseable_Token;
      I : access bob_Visitor_Interface.Visit_bob_Interface'Class) is
   begin
      I.Visit_Parseable_Token(This);
   end Acceptor;
end bob_Model;
