-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body small_Model is
   procedure Acceptor(This : access Parseable_Token;
      I : access small_Visitor_Interface.Visit_small_Interface'Class) is
   begin
      I.Visit_Parseable_Token(This);
   end Acceptor;
end small_Model;
