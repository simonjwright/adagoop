-------------------------------------------------------------
--
-- LISP-like Generic list package
--
-- By: Dr. Martin Carlisle
-- 
-- Last modified: February 28, 2006
-------------------------------------------------------------

generic
   type Listitem is private; -- list of what?

package List is

   type Node is private; 

   type Listptr is access Node; 

   -- Emulate LISP functions

   -- car is first item in list
   function Car (
         Ptr : Listptr ) 
     return Listitem; 

   -- cdr is list containing 2nd element and following
   function Cdr (
         Ptr : Listptr ) 
     return Listptr; 

   -- cons places val at the front of list and returns new list
   function Cons (
         Val : Listitem; 
         Ptr : Listptr   ) 
     return Listptr; 

   -- length : how many items are in list?
   function Length (
         Ptr : Listptr ) 
     return Integer; 

   -- append : add val to end of list, NOTE ptr (list) may be modified!
   procedure Append (
         Val :        Listitem; 
         Ptr : in out Listptr   ); 

   -- Like second: cadr(ptr) = car(cdr(ptr))
   function Cadr (
         Ptr : Listptr ) 
     return Listitem; 

   -- Like third: caddr(ptr) = car(cdr(cdr(ptr)))
   function Caddr (
         Ptr : Listptr ) 
     return Listitem; 

   -- Like fourth: cadddr(ptr) = car(cdr(cdr(cdr(ptr))))
   function Cadddr (
         Ptr : Listptr ) 
     return Listitem; 

   -- foreach does fnptr(x) for each x in list 
   procedure Foreach (
         Ptr   : Listptr;     
         Fnptr : not null access procedure (Item : Listitem) ); 

   -- free deallocates an entire list
   -- setting the pointer to null
   procedure Free(Ptr : in out Listptr);
   
private
   type Node is 
      record 
         Nodecar : Listitem;  
         Nodecdr : Listptr;  
      end record; 


end List;
