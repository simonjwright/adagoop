-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body ada05_Model is
   procedure Acceptor(This : access Parseable_Token;
      I : access ada05_Visitor_Interface.Visit_ada05_Interface'Class) is
   begin
      I.Visit_Parseable_Token(This);
   end Acceptor;
end ada05_Model;
