
with ada05_IO;
package body ada05 is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      ada05_IO.Open_Input (Filename);
      ada05_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      ada05_IO.Close_Input;
      ada05_IO.Close_Output;
   end Close_Files;

function YYLex return Token is
subtype short is integer range -32768..32767;
    yy_act : integer;
    yy_c : short;

-- returned upon end-of-file
YY_END_TOK : constant integer := 0;
YY_END_OF_BUFFER : constant := 109;
subtype yy_state_type is integer;
yy_current_state : yy_state_type;
INITIAL : constant := 0;
yy_accept : constant array(0..370) of short :=
    (   0,
        0,    0,  109,  108,  106,  107,   98,  108,   83,   99,
       84,   85,   86,   87,   88,   89,   90,   91,  101,   92,
       93,   94,   95,   96,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,   97,    0,  103,    0,   75,  105,
       74,   77,    0,    0,  101,    0,    0,   76,   80,   79,
       82,   73,   78,   81,  100,  100,  100,  100,  100,  100,
       10,    0,  100,  100,  100,  100,  100,  100,   19,  100,
      100,  100,  100,  100,  100,  100,   30,   31,   33,  100,
      100,  100,  100,  100,  100,   40,   41,  100,  100,  100,

      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,    0,  104,  105,    0,
      101,  101,    0,    0,  101,  101,  100,    2,  100,  100,
        7,    8,  100,  100,  100,  100,  100,  100,  100,  100,
      100,   22,  100,  100,  100,   26,  100,  100,  100,  100,
      100,  100,   36,   37,   38,  100,  100,   44,  100,  100,
      100,  100,  100,  100,  100,  100,   53,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,   68,  100,  100,  100,   72,  102,    0,    0,    0,
      101,    0,  101,  101,    0,  100,  100,  100,  100,  100,

      100,   12,   13,  100,  100,  100,  100,  100,   20,  100,
      100,  100,   25,  100,  100,   29,  100,  100,   35,   39,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,  100,   63,
      100,   65,   66,  100,   69,  100,   71,    0,    0,    1,
      100,  100,  100,  100,    9,   11,  100,  100,   16,   17,
      100,   21,   23,  100,  100,  100,  100,  100,  100,  100,
      100,  100,  100,  100,  100,   50,   51,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  100,   67,   70,
        0,  102,    0,    0,  100,    4,    5,  100,  100,  100,

       18,  100,  100,  100,  100,  100,   42,  100,  100,   46,
      100,  100,  100,   52,  100,  100,   56,  100,   58,  100,
      100,  100,   62,  100,  102,    0,  100,    6,  100,   15,
      100,  100,   28,  100,   34,  100,   45,   47,  100,  100,
       54,   55,   57,  100,   60,  100,  100,    3,   14,  100,
       27,  100,  100,  100,  100,   59,  100,  100,   24,   32,
      100,   48,   49,  100,   64,   43,  100,  100,   61,    0
    ) ;

yy_ec : constant array(CHARACTER'FIRST..ASCII.DEL) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    2,    4,    5,    6,    1,    1,    7,    8,    9,
       10,   11,   12,   13,   14,   15,   16,   17,   17,   17,
       17,   17,   17,   17,   17,   17,   17,   18,   19,   20,
       21,   22,    1,    1,   23,   24,   25,   26,   27,   28,
       29,   30,   31,   32,   33,   34,   35,   36,   37,   38,
       39,   40,   41,   42,   43,   44,   45,   46,   47,   48,
        1,    1,    1,    1,   49,    1,   23,   24,   25,   26,

       27,   28,   29,   30,   31,   32,   33,   34,   35,   36,
       37,   38,   39,   40,   41,   42,   43,   44,   45,   46,
       47,   48,    1,   50,    1,    1,    1
    ) ;

yy_meta : constant array(0..50) of short :=
    (   0,
        1,    1,    2,    1,    1,    3,    1,    1,    1,    1,
        1,    1,    1,    1,    4,    1,    5,    1,    1,    1,
        1,    1,    5,    5,    5,    5,    5,    5,    6,    6,
        6,    6,    6,    6,    6,    6,    6,    6,    6,    6,
        6,    6,    6,    6,    6,    6,    6,    6,    5,    1
    ) ;

yy_base : constant array(0..376) of short :=
    (   0,
        0,    0,  756,  757,  757,  757,  757,  750,  757,    0,
      757,  757,  743,  757,  757,  739,  737,  730,   45,  729,
      757,   32,  727,   34,   33,   34,   40,   37,   42,   44,
       43,  699,   62,   48,   47,   72,   74,   82,   77,   81,
      102,   71,  103,   64,  757,  742,  741,  737,  757,    0,
      757,  757,  118,  727,  121,  141,  726,  757,  757,  757,
      757,  757,  757,  757,  693,  113,   70,  125,  111,  117,
      692,  691,  118,  114,  120,  128,  146,  136,  690,  127,
      147,  150,  138,  143,  148,   17,  689,  141,  688,  137,
      145,  162,   61,  149,  159,  687,  686,  170,  160,  174,

      178,  181,  179,  196,  188,  190,  171,  176,  184,  202,
      198,  164,  207,  215,  199,  203,  729,  757,    0,  238,
      232,  248,  716,  715,  233,  251,  218,  213,  234,  237,
      682,  681,  246,  239,  224,  245,  235,  240,  254,  249,
      274,  680,  250,  258,  260,  679,  266,  265,  267,  279,
      262,  270,  678,  677,  676,  276,  285,  675,  273,  284,
      289,  277,  295,  283,  298,  292,  674,  307,  293,  296,
      304,  308,  317,  301,  321,  319,  316,  320,  315,  325,
      323,  673,  322,  326,  329,  672,  693,  356,  361,  368,
      360,  702,  384,  369,  701,  355,  349,  364,  359,  314,

      367,  668,  667,  365,  339,  368,  383,  370,  666,  392,
      374,  386,  665,  380,  385,  664,  387,  388,  663,  662,
      391,  398,  403,  393,  416,  417,  418,  419,  421,  409,
      408,  423,  411,  413,  429,  415,  412,  426,  436,  661,
      438,  660,  659,  437,  658,  446,  657,  462,  471,  656,
      457,  439,  441,  456,  655,  654,  461,  449,  653,  652,
      450,  651,  650,  451,  463,  465,  464,  470,  460,  472,
      473,  481,  466,  485,  482,  649,  648,  490,  491,  474,
      488,  484,  486,  503,  489,  492,  510,  493,  647,  646,
      677,  526,  538,  530,  520,  644,  643,  522,  513,  519,

      642,  529,  514,  525,  541,  535,  641,  539,  540,  640,
      543,  523,  531,  639,  536,  549,  638,  552,  637,  544,
      554,  545,  636,  560,  574,  666,  553,  625,  555,  617,
      559,  563,  608,  575,  607,  576,  606,  605,  565,  579,
      603,  602,  601,  583,  600,  577,  569,  599,  597,  580,
      596,  588,  581,  592,  594,  593,  590,  595,  591,  589,
      598,  587,  230,  585,  167,   90,  604,  609,   16,  757,
      658,  664,  666,  672,  676,  679
    ) ;

yy_def : constant array(0..376) of short :=
    (   0,
      370,    1,  370,  370,  370,  370,  370,  371,  370,  372,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  370,  371,  370,  370,  370,  374,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,

      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  371,  370,  374,  375,
      370,  370,  370,  370,  370,  370,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  370,  370,  375,  370,
      370,  370,  370,  370,  370,  373,  373,  373,  373,  373,

      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  370,  376,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      370,  370,  376,  370,  373,  373,  373,  373,  373,  373,

      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  370,  370,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,  373,
      373,  373,  373,  373,  373,  373,  373,  373,  373,    0,
      370,  370,  370,  370,  370,  370
    ) ;

yy_nxt : constant array(0..807) of short :=
    (   0,
        4,    5,    6,    7,    8,    4,    9,   10,   11,   12,
       13,   14,   15,   16,   17,   18,   19,   20,   21,   22,
       23,   24,   25,   26,   27,   28,   29,   30,   31,   32,
       33,   32,   32,   34,   35,   36,   37,   38,   32,   39,
       40,   41,   42,   32,   43,   44,   32,   32,    4,   45,
       53,   59,   60,   61,   63,   64,   66,   67,  149,   54,
       73,   55,   75,   77,   72,   72,   68,   78,   69,   85,
       74,   56,   70,   79,   71,   80,   76,   81,   90,   86,
       83,   72,   72,   92,   91,   72,   84,   82,   72,   87,
       72,   72,   72,   57,  129,   72,   72,   88,   93,  103,

      116,   96,   89,  104,  101,  154,  112,  105,   94,   72,
       72,  113,   72,   97,   95,   98,   99,  100,   72,   72,
       72,  102,   72,  106,  108,   72,   53,  107,  109,   72,
       72,  110,  114,  115,  120,   54,  132,  122,   72,  135,
      120,  120,  120,  120,  120,  120,  134,   56,  111,  127,
       72,   72,  124,  128,  124,  130,  133,  125,  131,   72,
      136,   72,   72,  137,  140,   72,   72,  141,   72,  123,
      138,  151,  142,   72,  144,   72,   72,  146,  147,  139,
      145,  152,  150,  148,   72,   72,   72,  153,  143,   72,
      155,   72,  156,   72,   72,   72,   72,   72,   72,  157,

      159,  158,  160,  161,  176,  181,  175,   72,   72,  164,
       72,  162,   72,  174,  165,   72,  177,  163,   72,   72,
      166,  172,   72,  178,   72,  173,   72,   72,  179,   72,
      167,  168,   72,  182,  169,  180,   72,  170,   72,  171,
      185,  183,  186,  187,   72,  184,   72,   72,  191,  194,
       72,   72,  188,   53,  197,   72,   53,  196,   56,  199,
      198,   72,   54,   72,  122,   54,   72,   55,  200,  201,
      202,  203,   72,  205,   56,  204,  206,   56,   72,  208,
      192,  195,   72,   72,  212,   72,  190,   72,   72,  211,
      214,  215,  218,   72,   72,  207,  123,   72,   72,   57,

      209,  213,   72,  216,  210,  217,   72,  219,   72,  220,
       72,  221,  222,   72,   72,   72,  223,  224,   72,  226,
      225,   72,   72,  228,   72,   72,  229,   72,  230,  231,
      234,   72,   72,   72,  235,  232,  227,   72,  233,  236,
       72,   72,  237,   72,   72,  238,   72,  239,  240,   72,
      242,  243,   72,  244,  241,   72,   72,  245,  247,  246,
      255,  258,   72,   72,   72,   72,  187,   72,   72,   72,
       72,   72,  249,   72,   72,  188,  191,   72,  249,  249,
      249,  249,  249,  249,  189,  194,   56,   72,  251,   53,
      189,  189,  189,  189,  189,  189,  250,   72,   54,  254,

      122,  252,  256,   72,  253,  260,  257,   72,  192,  190,
       56,  261,   72,   72,  259,   72,   72,  195,   72,  262,
      263,  265,   72,  264,  266,  271,  267,  272,   72,  268,
      269,   72,  123,   72,   72,   72,   72,  270,  273,   72,
       72,   72,  279,  274,  275,  276,   72,  277,  278,  280,
      281,   72,  282,  283,  284,  286,   72,   72,  285,   72,
       72,   72,  287,   72,   72,   72,   72,   72,  288,   72,
      289,   72,  290,  291,   72,  291,  187,   72,  292,  295,
      296,  297,  298,  299,   72,   72,   72,   72,  300,   72,
      301,  305,  302,  303,   72,  304,  306,   72,   72,   72,

      307,  309,  308,  310,   72,   72,  313,  311,   72,   72,
      312,   72,   72,   72,   72,  314,  316,  315,   72,  294,
       72,   72,   72,  317,  318,  320,  321,  319,  324,   72,
       72,  322,   72,   72,   72,  323,   72,   72,   72,   72,
       72,   72,  325,  187,  327,  330,  293,  328,  329,  333,
      332,   72,  293,  293,  293,  293,  293,  293,   72,  331,
      335,   72,   72,  334,  336,  339,  337,   72,   72,  338,
       72,   72,  340,   72,  326,  342,  341,   72,  343,   72,
      345,  346,  347,   72,   72,  344,  294,   72,   72,   72,
      325,   72,   72,   72,  348,  350,  349,   72,  351,  352,

       72,   72,   72,   72,  354,  355,  353,   72,   72,  356,
      358,   72,  357,   72,  360,  359,  361,   72,  362,  363,
      364,  365,  326,   72,   72,   72,  366,   72,   72,   72,
      368,   72,  367,   72,  369,   72,   72,   72,   72,   72,
       72,   72,   72,   72,   72,   72,   72,   72,   72,   72,
       72,   72,   72,   72,   72,   72,   72,   72,   46,   46,
       46,   46,   46,   46,   48,   72,   48,   48,   48,   48,
       65,   65,  119,   72,  119,  119,  119,  119,  189,  189,
      189,  293,  325,  293,   72,   72,   72,   72,   72,   72,
       72,   72,   72,  292,   72,   72,   72,   72,   72,   72,

       72,   72,   72,   72,   72,   72,   72,   72,   72,   72,
       72,   72,   72,   72,   72,   72,   72,  194,  191,  248,
       72,   72,   72,   72,   72,   72,   72,   72,   72,   72,
       72,  125,  193,   47,   72,   72,   72,   72,   72,  370,
       72,   72,  126,  121,  118,  117,   47,   72,   62,   58,
       52,   51,   50,   49,   47,  370,    3,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,

      370,  370,  370,  370,  370,  370,  370
    ) ;

yy_chk : constant array(0..807) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
       19,   22,   22,   22,   24,   24,   25,   25,   86,   19,
       26,   19,   27,   28,  369,   86,   25,   28,   25,   31,
       26,   19,   25,   28,   25,   29,   27,   29,   34,   31,
       30,   25,   26,   35,   34,   28,   30,   29,   27,   33,
       29,   31,   30,   19,   67,   35,   34,   33,   36,   39,

       44,   37,   33,   39,   38,   93,   42,   40,   36,   93,
       33,   42,   44,   37,   36,   37,   37,   37,   67,   42,
       36,   38,   37,   40,   41,   39,   55,   40,   41,   40,
       38,   41,   43,   43,   53,   55,   69,   55,  366,   74,
       53,   53,   53,   53,   53,   53,   73,   55,   41,   66,
       41,   43,   56,   66,   56,   68,   70,   56,   68,   69,
       75,   66,   74,   76,   78,   70,   73,   80,   75,   55,
       77,   90,   81,   68,   82,   80,   76,   83,   84,   77,
       82,   91,   88,   85,   78,   90,   83,   92,   81,   88,
       94,   84,   95,   91,   77,   81,   85,   94,   82,   98,

      100,   99,  101,  102,  108,  112,  107,   95,   99,  103,
       92,  102,  112,  106,  103,  365,  108,  102,   98,  107,
      104,  105,  100,  109,  108,  105,  101,  103,  110,  102,
      104,  104,  109,  113,  104,  111,  105,  104,  106,  104,
      115,  114,  116,  120,  104,  114,  111,  115,  121,  125,
      110,  116,  120,  122,  128,  113,  126,  127,  121,  130,
      129,  128,  122,  114,  122,  126,  127,  126,  133,  134,
      135,  136,  135,  138,  122,  137,  139,  126,  363,  140,
      121,  125,  129,  137,  144,  130,  120,  134,  138,  143,
      147,  148,  151,  136,  133,  139,  122,  140,  143,  126,

      141,  145,  139,  149,  141,  150,  144,  152,  145,  156,
      151,  157,  159,  148,  147,  149,  160,  161,  152,  163,
      162,  159,  141,  164,  156,  162,  165,  150,  166,  168,
      171,  164,  160,  157,  172,  169,  163,  161,  170,  173,
      166,  169,  174,  163,  170,  175,  165,  176,  177,  174,
      179,  180,  171,  181,  178,  168,  172,  183,  185,  184,
      200,  205,  200,  179,  177,  173,  189,  176,  178,  175,
      183,  181,  188,  180,  184,  189,  191,  185,  188,  188,
      188,  188,  188,  188,  190,  194,  191,  205,  197,  193,
      190,  190,  190,  190,  190,  190,  196,  197,  193,  199,

      193,  198,  201,  196,  198,  207,  204,  199,  191,  189,
      193,  208,  198,  204,  206,  201,  206,  194,  208,  210,
      211,  214,  211,  212,  215,  223,  217,  224,  214,  218,
      221,  207,  193,  215,  212,  217,  218,  222,  225,  221,
      210,  224,  231,  226,  227,  228,  222,  229,  230,  232,
      233,  223,  234,  235,  236,  238,  231,  230,  237,  233,
      237,  234,  239,  236,  225,  226,  227,  228,  241,  229,
      244,  232,  246,  248,  238,  248,  249,  235,  248,  251,
      252,  253,  254,  257,  239,  244,  241,  252,  258,  253,
      261,  267,  264,  265,  246,  266,  268,  258,  261,  264,

      269,  271,  270,  272,  254,  251,  275,  273,  269,  257,
      274,  265,  267,  266,  273,  278,  280,  279,  268,  249,
      270,  271,  280,  281,  282,  284,  285,  283,  288,  272,
      275,  286,  282,  274,  283,  287,  281,  285,  278,  279,
      286,  288,  292,  293,  295,  300,  294,  298,  299,  304,
      303,  284,  294,  294,  294,  294,  294,  294,  287,  302,
      306,  299,  303,  305,  308,  312,  309,  300,  295,  311,
      298,  312,  313,  304,  292,  316,  315,  302,  318,  313,
      321,  322,  324,  306,  315,  320,  293,  308,  309,  305,
      325,  311,  320,  322,  327,  331,  329,  316,  332,  334,

      318,  327,  321,  329,  339,  340,  336,  331,  324,  344,
      347,  332,  346,  339,  352,  350,  353,  347,  354,  355,
      357,  358,  325,  334,  336,  346,  361,  340,  350,  353,
      367,  344,  364,  364,  368,  362,  352,  360,  357,  359,
      354,  356,  355,  358,  351,  349,  361,  348,  345,  343,
      342,  341,  367,  338,  337,  335,  333,  368,  371,  371,
      371,  371,  371,  371,  372,  330,  372,  372,  372,  372,
      373,  373,  374,  328,  374,  374,  374,  374,  375,  375,
      375,  376,  326,  376,  323,  319,  317,  314,  310,  307,
      301,  297,  296,  291,  290,  289,  277,  276,  263,  262,

      260,  259,  256,  255,  250,  247,  245,  243,  242,  240,
      220,  219,  216,  213,  209,  203,  202,  195,  192,  187,
      186,  182,  167,  158,  155,  154,  153,  146,  142,  132,
      131,  124,  123,  117,   97,   96,   89,   87,   79,   72,
       71,   65,   57,   54,   48,   47,   46,   32,   23,   20,
       18,   17,   16,   13,    8,    3,  370,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,
      370,  370,  370,  370,  370,  370,  370,  370,  370,  370,

      370,  370,  370,  370,  370,  370,  370
    ) ;


-- copy whatever the last rule matched to the standard output

procedure ECHO is
begin
   if (text_io.is_open(user_output_file)) then
     text_io.put( user_output_file, yytext );
   else
     text_io.put( yytext );
   end if;
end ECHO;

-- enter a start condition.
-- Using procedure requires a () after the ENTER, but makes everything
-- much neater.

procedure ENTER( state : integer ) is
begin
     yy_start := 1 + 2 * state;
end ENTER;

-- action number for EOF rule of a given start state
function YY_STATE_EOF(state : integer) return integer is
begin
     return YY_END_OF_BUFFER + state + 1;
end YY_STATE_EOF;

-- return all but the first 'n' matched characters back to the input stream
procedure yyless(n : integer) is
begin
        yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
        yy_cp := yy_bp + n;
        yy_c_buf_p := yy_cp;
        YY_DO_BEFORE_ACTION; -- set up yytext again
end yyless;

-- redefine this if you have something you want each time.
procedure YY_USER_ACTION is
begin
        null;
end;

-- yy_get_previous_state - get the state just before the EOB char was reached

function yy_get_previous_state return yy_state_type is
    yy_current_state : yy_state_type;
    yy_c : short;
begin
    yy_current_state := yy_start;

    for yy_cp in yytext_ptr..yy_c_buf_p - 1 loop
	yy_c := yy_ec(yy_ch_buf(yy_cp));
	if ( yy_accept(yy_current_state) /= 0 ) then
	    yy_last_accepting_state := yy_current_state;
	    yy_last_accepting_cpos := yy_cp;
	end if;
	while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
	    yy_current_state := yy_def(yy_current_state);
	    if ( yy_current_state >= 371 ) then
		yy_c := yy_meta(yy_c);
	    end if;
	end loop;
	yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
    end loop;

    return yy_current_state;
end yy_get_previous_state;

procedure yyrestart( input_file : file_type ) is
begin
   open_input(text_io.name(input_file));
end yyrestart;

begin -- of YYLex
<<new_file>>
        -- this is where we enter upon encountering an end-of-file and
        -- yywrap() indicating that we should continue processing

    if ( yy_init ) then
        if ( yy_start = 0 ) then
            yy_start := 1;      -- first start state
        end if;

        -- we put in the '\n' and start reading from [1] so that an
        -- initial match-at-newline will be true.

        yy_ch_buf(0) := ASCII.LF;
        yy_n_chars := 1;

        -- we always need two end-of-buffer characters.  The first causes
        -- a transition to the end-of-buffer state.  The second causes
        -- a jam in that state.

        yy_ch_buf(yy_n_chars) := YY_END_OF_BUFFER_CHAR;
        yy_ch_buf(yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;

        yy_eof_has_been_seen := false;

        yytext_ptr := 1;
        yy_c_buf_p := yytext_ptr;
        yy_hold_char := yy_ch_buf(yy_c_buf_p);
        yy_init := false;
    end if; -- yy_init

    loop                -- loops until end-of-file is reached
        yy_cp := yy_c_buf_p;

        -- support of yytext
        yy_ch_buf(yy_cp) := yy_hold_char;

        -- yy_bp points to the position in yy_ch_buf of the start of the
        -- current run.
	yy_bp := yy_cp;
	yy_current_state := yy_start;
	loop
		yy_c := yy_ec(yy_ch_buf(yy_cp));
		if ( yy_accept(yy_current_state) /= 0 ) then
		    yy_last_accepting_state := yy_current_state;
		    yy_last_accepting_cpos := yy_cp;
		end if;
		while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
		    yy_current_state := yy_def(yy_current_state);
		    if ( yy_current_state >= 371 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := yy_cp + 1;
if ( yy_current_state = 370 ) then
    exit;
end if;
	end loop;
	yy_cp := yy_last_accepting_cpos;
	yy_current_state := yy_last_accepting_state;

<<next_action>>
	    yy_act := yy_accept(yy_current_state);
            YY_DO_BEFORE_ACTION;
            YY_USER_ACTION;

        if aflex_debug then  -- output acceptance info. for (-d) debug mode
            text_io.put("--accepting rule #" );
            text_io.put(INTEGER'IMAGE(yy_act) );
            text_io.put_line("(""" & yytext & """)");
        end if;

<<do_action>>   -- this label is used only to access EOF actions
            case yy_act is
		when 0 => -- must backtrack
		-- undo the effects of YY_DO_BEFORE_ACTION
		yy_ch_buf(yy_cp) := yy_hold_char;
		yy_cp := yy_last_accepting_cpos;
		yy_current_state := yy_last_accepting_state;
		goto next_action;


when 1 => 
--# line 17 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ABORT_token);

when 2 => 
--# line 18 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ABS_token);

when 3 => 
--# line 19 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ABSTRACT_token);

when 4 => 
--# line 20 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ACCEPT_token);

when 5 => 
--# line 21 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ACCESS_token);

when 6 => 
--# line 22 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ALIASED_token);

when 7 => 
--# line 23 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ALL_token);

when 8 => 
--# line 24 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (AND_token);

when 9 => 
--# line 25 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ARRAY_token);

when 10 => 
--# line 26 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (AT_token);

when 11 => 
--# line 27 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (BEGIN_token);

when 12 => 
--# line 28 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (BODY_token);

when 13 => 
--# line 29 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (CASE_token);

when 14 => 
--# line 30 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (CONSTANT_token);

when 15 => 
--# line 31 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DECLARE_token);

when 16 => 
--# line 32 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DELAY_token);

when 17 => 
--# line 33 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DELTA_token);

when 18 => 
--# line 34 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DIGITS_token);

when 19 => 
--# line 35 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DO_token);

when 20 => 
--# line 36 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ELSE_token);

when 21 => 
--# line 37 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ELSIF_token);

when 22 => 
--# line 38 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (END_token);

when 23 => 
--# line 39 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ENTRY_token);

when 24 => 
--# line 40 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (EXCEPTION_token);

when 25 => 
--# line 41 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (EXIT_token);

when 26 => 
--# line 42 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (FOR_token);

when 27 => 
--# line 43 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (FUNCTION_token);

when 28 => 
--# line 44 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (GENERIC_token);

when 29 => 
--# line 45 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (GOTO_token);

when 30 => 
--# line 46 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (IF_token);

when 31 => 
--# line 47 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (IN_token);

when 32 => 
--# line 48 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (INTERFACE_token);

when 33 => 
--# line 49 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (IS_token);

when 34 => 
--# line 50 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (LIMITED_token);

when 35 => 
--# line 51 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (LOOP_token);

when 36 => 
--# line 52 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (MOD_token);

when 37 => 
--# line 53 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (NEW_token);

when 38 => 
--# line 54 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (NOT_token);

when 39 => 
--# line 55 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (NULL_token);

when 40 => 
--# line 56 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (OF_token);

when 41 => 
--# line 57 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (OR_token);

when 42 => 
--# line 58 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (OTHERS_token);

when 43 => 
--# line 59 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (OVERRIDING_token);

when 44 => 
--# line 60 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (OUT_token);

when 45 => 
--# line 61 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (PACKAGE_token);

when 46 => 
--# line 62 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (PRAGMA_token);

when 47 => 
--# line 63 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (PRIVATE_token);

when 48 => 
--# line 64 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (PROCEDURE_token);

when 49 => 
--# line 65 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (PROTECTED_token);

when 50 => 
--# line 66 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (RAISE_token);

when 51 => 
--# line 67 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (RANGE_token);

when 52 => 
--# line 68 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (RECORD_token);

when 53 => 
--# line 69 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (REM_token);

when 54 => 
--# line 70 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (RENAMES_token);

when 55 => 
--# line 71 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (REQUEUE_token);

when 56 => 
--# line 72 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (RETURN_token);

when 57 => 
--# line 73 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (REVERSE_token);

when 58 => 
--# line 74 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (SELECT_token);

when 59 => 
--# line 75 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (SEPARATE_token);

when 60 => 
--# line 76 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (SUBTYPE_token);

when 61 => 
--# line 77 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (SYNCHRONIZED_token);

when 62 => 
--# line 78 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (TAGGED_token);

when 63 => 
--# line 79 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (TASK_token);

when 64 => 
--# line 80 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (TERMINATE_token);

when 65 => 
--# line 81 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (THEN_token);

when 66 => 
--# line 82 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (TYPE_token);

when 67 => 
--# line 83 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (UNTIL_token);

when 68 => 
--# line 84 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (USE_token);

when 69 => 
--# line 85 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (WHEN_token);

when 70 => 
--# line 86 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (WHILE_token);

when 71 => 
--# line 87 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (WITH_token);

when 72 => 
--# line 88 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (XOR_token);

when 73 => 
--# line 89 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ARROW_token);

when 74 => 
--# line 90 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DOUBLE_DOT_token);

when 75 => 
--# line 91 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (EXPONENT_token);

when 76 => 
--# line 92 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (ASSIGNMENT_token);

when 77 => 
--# line 93 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (INEQUALITY_token);

when 78 => 
--# line 94 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (GREATER_THAN_OR_EQUAL_token);

when 79 => 
--# line 95 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (LESS_THAN_OR_EQUAL_token);

when 80 => 
--# line 96 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (LEFT_LABEL_BRACKET_token);

when 81 => 
--# line 97 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (RIGHT_LABEL_BRACKET_token);

when 82 => 
--# line 98 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (BOX_token);

when 83 => 
--# line 99 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (BIT_AND_token);

when 84 => 
--# line 100 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (L_PAREN_token);

when 85 => 
--# line 101 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (R_PAREN_token);

when 86 => 
--# line 102 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (STAR_token);

when 87 => 
--# line 103 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (PLUS_token);

when 88 => 
--# line 104 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (COMMA_token);

when 89 => 
--# line 105 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (MINUS_token);

when 90 => 
--# line 106 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DOT_token);

when 91 => 
--# line 107 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (SLASH_token);

when 92 => 
--# line 108 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (COLON_token);

when 93 => 
--# line 109 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (SEMICOLON_token);

when 94 => 
--# line 110 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (LT_token);

when 95 => 
--# line 111 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (EQ_token);

when 96 => 
--# line 112 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (GT_token);

when 97 => 
--# line 113 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (PIPE_token);

when 98 => 
--# line 114 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (BANG_token);

when 99 => 
--# line 115 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (TICK_token);

when 100 => 
--# line 116 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (IDENTIFIER_token);

when 101 => 
--# line 117 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (DECIMAL_LITERAL_token);

when 102 => 
--# line 118 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (BASED_LITERAL_token);

when 103 => 
--# line 119 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (STRING_LITERAL_token);

when 104 => 
--# line 120 "ada05.l"
Current_Column := Current_Column + YYText'Length; return (CHAR_LITERAL_token);

when 105 => 
--# line 121 "ada05.l"
Current_Column := Current_Column + YYText'Length;

when 106 => 
--# line 122 "ada05.l"
Current_Column := Current_Column + 1;

when 107 => 
--# line 123 "ada05.l"
Current_Line := Current_Line + 1; Current_Column := 1;

when 108 => 
--# line 124 "ada05.l"
ECHO;
when YY_END_OF_BUFFER + INITIAL + 1 => 
    return End_Of_Input;
                when YY_END_OF_BUFFER =>
                    -- undo the effects of YY_DO_BEFORE_ACTION
                    yy_ch_buf(yy_cp) := yy_hold_char;

                    yytext_ptr := yy_bp;

                    case yy_get_next_buffer is
                        when EOB_ACT_END_OF_FILE =>
                            begin
                            if ( yywrap ) then
                                -- note: because we've taken care in
                                -- yy_get_next_buffer() to have set up yytext,
                                -- we can now set up yy_c_buf_p so that if some
                                -- total hoser (like aflex itself) wants
                                -- to call the scanner after we return the
                                -- End_Of_Input, it'll still work - another
                                -- End_Of_Input will get returned.

                                yy_c_buf_p := yytext_ptr;

                                yy_act := YY_STATE_EOF((yy_start - 1) / 2);

                                goto do_action;
                            else
                                --  start processing a new file
                                yy_init := true;
                                goto new_file;
                            end if;
                            end;
                        when EOB_ACT_RESTART_SCAN =>
                            yy_c_buf_p := yytext_ptr;
                            yy_hold_char := yy_ch_buf(yy_c_buf_p);
                        when EOB_ACT_LAST_MATCH =>
                            yy_c_buf_p := yy_n_chars;
                            yy_current_state := yy_get_previous_state;

                            yy_cp := yy_c_buf_p;
                            yy_bp := yytext_ptr;
                            goto next_action;
                        when others => null;
                        end case; -- case yy_get_next_buffer()
                when others =>
                    text_io.put( "action # " );
                    text_io.put( INTEGER'IMAGE(yy_act) );
                    text_io.new_line;
                    raise AFLEX_INTERNAL_ERROR;
            end case; -- case (yy_act)
        end loop; -- end of loop waiting for end of file
end YYLex;
--# line 124 "ada05.l"

   function Get_Token return Token is
   begin
      return YYLex;
   exception when Constraint_Error =>
      raise Invalid_Character;
   end Get_Token;

   function Get_Token_String return String is
   begin
      return YYText;
   end Get_Token_String;

   function Get_Current_Line return Natural is
   begin
      return Current_Line;
   end Get_Current_Line;

   function Get_Current_Column return Natural is
   begin
      return Current_Column;
   end Get_Current_Column;

end ada05;

