GENERIC TYPE KeyType IS PRIVATE;
        WITH FUNCTION GetKey (item : ListItem) RETURN KeyType;
        WITH FUNCTION "="(Left, Right : Keytype) RETURN Boolean;

PACKAGE list.key IS

NotFound : exception;

FUNCTION Find(key : KeyType; ptr : ListPtr) RETURN ListItem;
FUNCTION IsPresent(key : KeyType; ptr : ListPtr) RETURN Boolean;
PROCEDURE Replace(item : ListItem; ptr : ListPtr);

END list.key;
