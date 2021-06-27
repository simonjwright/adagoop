-- Automatically generated file
-- from AdaGOOP2005 (by Martin C. Carlisle)
-- If modified, be careful about losing work.
with small;
with small_Visitor_Interface;
package small_Model is
   type String_Ptr is access all String;

   type Parseable is abstract tagged null record;
   type Parseable_Ptr is access all Parseable'Class;
   procedure Acceptor(This : access Parseable;
      I : access small_Visitor_Interface.Visit_small_Interface'Class) is abstract;

   type Parseable_Token is new Parseable with record
      Line         : Natural;
      Column       : Natural;
      Token_String : String_Ptr;
      Token_Type   : small.Token;
   end record;
   type Parseable_Token_Ptr is access all Parseable_Token'Class;

   procedure Acceptor(This : access Parseable_Token;
      I : access small_Visitor_Interface.Visit_small_Interface'Class);
end small_Model;
