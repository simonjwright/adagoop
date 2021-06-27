-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
package body ada95_Model is
   procedure Acceptor(This : access Parseable_Token;
      I : access ada95_Visitor_Interface.Visit_ada95_Interface'Class) is
   begin
      I.Visit_Parseable_Token(This);
   end Acceptor;
end ada95_Model;
