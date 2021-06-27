package Test_Goto is

    type Small_Integer is range -32_000 .. 32_000;

    type Goto_Entry is record
        Nonterm  : Small_Integer;
        Newstate : Small_Integer;
    end record;

  --pragma suppress(index_check);

    subtype Row is Integer range -1 .. Integer'Last;

    type Goto_Parse_Table is array (Row range <>) of Goto_Entry;

    Goto_Matrix : constant Goto_Parse_Table :=
       ((-1,-1)  -- Dummy Entry.
-- State  0
,(-28, 3),(-27, 2),(-26, 1),(-3, 4)
,(-2, 6)
-- State  1
,(-10, 8)
-- State  2
,(-12, 10)
-- State  3

-- State  4

-- State  5

-- State  6

-- State  7

-- State  8
,(-28, 3)
,(-27, 12),(-3, 4)
-- State  9

-- State  10
,(-28, 13),(-3, 4)

-- State  11

-- State  12
,(-12, 10)
-- State  13

);
--  The offset vector
GOTO_OFFSET : array (0.. 13) of Integer :=
( 0,
 5, 6, 7, 7, 7, 7, 7, 7, 10, 10,
 12, 12, 13);

subtype Rule        is Natural;
subtype Nonterminal is Integer;

   Rule_Length : array (Rule range  0 ..  29) of Natural := ( 2,
 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1,
 1, 1, 1, 1, 1, 1, 1, 1,
 3, 1, 3, 1, 1);
   Get_LHS_Rule: array (Rule range  0 ..  29) of Nonterminal := (-1,
-3,-4,-5,-6,-7,-8,-9,-10,
-11,-12,-13,-14,-15,-16,-17,-18,
-19,-20,-21,-22,-23,-24,-25,-2,
-26,-26,-27,-27,-28);
end Test_Goto;
