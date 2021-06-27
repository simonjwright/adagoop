-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with test;
with test_Visitor_Interface;
package test_Model is
   type String_Ptr is access all String;

   type Parseable is abstract tagged null record;
   type Parseable_Ptr is access all Parseable'Class;
   procedure Acceptor(This : access Parseable;
      I : access test_Visitor_Interface.Visit_test_Interface'Class) is abstract;

   type Parseable_Token is new Parseable with record
      Line         : Natural;
      Column       : Natural;
      Token_String : String_Ptr;
      Token_Type   : test.Token;
   end record;
   type Parseable_Token_Ptr is access all Parseable_Token'Class;

   procedure Acceptor(This : access Parseable_Token;
      I : access test_Visitor_Interface.Visit_test_Interface'Class);
end test_Model;
