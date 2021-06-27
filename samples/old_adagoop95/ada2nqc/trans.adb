
with trans_IO;
package body trans is
   Current_Line : Natural := 1;
   Current_Column : Natural := 1;
   procedure Reset(Filename : in String) is
   begin
      Current_Line := 1;
      Current_Column := 1;
      trans_IO.Open_Input (Filename);
      trans_IO.Create_Output;
   end Reset;

   procedure Close_Files is
   begin
      trans_IO.Close_Input;
      trans_IO.Close_Output;
   end Close_Files;

function YYLex return Token is
subtype short is integer range -32768..32767;
    yy_act : integer;
    yy_c : short;

-- returned upon end-of-file
YY_END_TOK : constant integer := 0;
YY_END_OF_BUFFER : constant := 106;
subtype yy_state_type is integer;
yy_current_state : yy_state_type;
INITIAL : constant := 0;
yy_accept : constant array(0..343) of short :=
    (   0,
        0,    0,  106,  105,  103,  104,   95,  105,   80,   96,
       81,   82,   83,   84,   85,   86,   87,   88,   98,   89,
       90,   91,   92,   93,   97,   97,   97,   97,   97,   97,
       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
       97,   97,   97,   97,   94,    0,  100,    0,   72,  102,
       71,   74,    0,    0,   98,    0,    0,   73,   77,   76,
       79,   70,   75,   78,   97,   97,   97,   97,   97,   97,
       10,    0,   97,   97,   97,   97,   97,   97,   19,   97,
       97,   97,   97,   97,   97,   97,   30,   31,   32,   97,
       97,   97,   97,   97,   97,   39,   40,   97,   97,   97,

       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
       97,   97,   97,   97,    0,  101,  102,    0,   98,   98,
        0,    0,   98,   98,   97,    2,   97,   97,    7,    8,
       97,   97,   97,   97,   97,   97,   97,   97,   97,   22,
       97,   97,   97,   26,   97,   97,   97,   97,   97,   35,
       36,   37,   97,   97,   42,   97,   97,   97,   97,   97,
       97,   97,   51,   97,   97,   97,   97,   97,   97,   97,
       97,   97,   97,   97,   97,   97,   65,   97,   97,   97,
       69,   99,    0,    0,    0,   98,    0,   98,   98,    0,
       97,   97,   97,   97,   97,   97,   12,   13,   97,   97,

       97,   97,   97,   20,   97,   97,   97,   25,   97,   97,
       29,   97,   34,   38,   97,   97,   97,   97,   97,   97,
       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
       97,   60,   97,   62,   63,   97,   66,   97,   68,    0,
        0,    1,   97,   97,   97,   97,    9,   11,   97,   97,
       16,   17,   97,   21,   23,   97,   97,   97,   97,   97,
       97,   97,   97,   97,   97,   48,   49,   97,   97,   97,
       97,   97,   97,   97,   97,   97,   97,   64,   67,    0,
       99,    0,    0,   97,    4,    5,   97,   97,   97,   18,
       97,   97,   97,   97,   41,   97,   44,   97,   97,   97,

       50,   97,   97,   54,   97,   56,   97,   97,   59,   97,
       99,    0,   97,    6,   97,   15,   97,   97,   28,   33,
       43,   45,   97,   97,   52,   53,   55,   97,   58,   97,
        3,   14,   97,   27,   97,   97,   57,   97,   24,   46,
       47,   61,    0
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
       39,   40,   41,   42,   43,   44,   45,   46,   47,   32,
        1,    1,    1,    1,   48,    1,   23,   24,   25,   26,

       27,   28,   29,   30,   31,   32,   33,   34,   35,   36,
       37,   38,   39,   40,   41,   42,   43,   44,   45,   46,
       47,   32,    1,   49,    1,    1,    1
    ) ;

yy_meta : constant array(0..49) of short :=
    (   0,
        1,    1,    2,    1,    1,    3,    1,    1,    1,    1,
        1,    1,    1,    1,    4,    1,    5,    1,    1,    1,
        1,    1,    5,    5,    5,    5,    5,    5,    6,    6,
        6,    6,    6,    6,    6,    6,    6,    6,    6,    6,
        6,    6,    6,    6,    6,    6,    6,    5,    1
    ) ;

yy_base : constant array(0..349) of short :=
    (   0,
        0,    0,  701,  702,  702,  702,  702,  695,  702,    0,
      702,  702,  688,  702,  702,  684,  682,  675,   44,  674,
      702,   31,  672,   33,   32,   33,   39,   36,   43,   21,
       38,  645,   54,   57,   48,   56,   69,   75,   80,   73,
       83,   78,   94,   81,  702,  687,  686,  682,  702,    0,
      702,  702,  110,  672,  126,  132,  671,  702,  702,  702,
      702,  702,  702,  702,  639,  110,   53,  114,  113,  112,
      638,  637,  111,  124,  115,   72,  130,  125,  636,  127,
      139,  145,  129,  131,  135,  138,  635,  634,  633,  147,
      148,  140,  144,  142,  157,  632,  631,  164,  155,  173,

      176,  170,  175,  182,  178,  186,  185,  181,  184,  189,
      201,  208,  194,  198,  673,  702,    0,  235,  226,  242,
      660,  659,  192,  245,  204,  213,  218,  231,  627,  626,
      240,  216,  220,  238,  229,  237,  250,  227,  249,  625,
      241,  251,  252,  624,  257,  260,  247,  265,  253,  623,
      622,  621,  268,  276,  620,  271,  277,  263,  284,  269,
      283,  281,  619,  291,  272,  279,  294,  296,  305,  288,
      304,  301,  300,  302,  310,  309,  618,  307,  311,  316,
      617,  637,  343,  341,  355,  346,  646,  359,  337,  645,
      342,  347,  350,  351,  314,  357,  613,  612,  354,  352,

      356,  374,  364,  611,  373,  361,  303,  610,  368,  371,
      609,  372,  608,  607,  375,  390,  382,  395,  397,  398,
      399,  400,  388,  394,  404,  392,  393,  409,  410,  406,
      408,  606,  413,  605,  604,  403,  603,  412,  602,  450,
      443,  601,  432,  417,  422,  439,  600,  599,  445,  429,
      598,  597,  430,  596,  595,  431,  441,  444,  447,  435,
      452,  459,  442,  460,  463,  594,  593,  468,  458,  453,
      461,  457,  462,  476,  464,  477,  478,  592,  591,  621,
      496,  509,  504,  492,  589,  588,  493,  486,  491,  587,
      489,  498,  508,  497,  586,  511,  585,  515,  500,  505,

      584,  510,  522,  583,  523,  581,  512,  525,  572,  513,
      538,  595,  520,  555,  524,  553,  527,  529,  552,  551,
      550,  548,  534,  540,  547,  546,  545,  542,  544,  536,
      541,  539,  543,  537,  549,  554,  533,  556,  329,  156,
      109,   74,  702,  604,  610,  612,  618,  622,  625
    ) ;

yy_def : constant array(0..349) of short :=
    (   0,
      343,    1,  343,  343,  343,  343,  343,  344,  343,  345,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  343,  344,  343,  343,  343,  347,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,

      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  344,  343,  347,  348,  343,  343,
      343,  343,  343,  343,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  343,  343,  348,  343,  343,  343,  343,  343,  343,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,

      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  343,
      349,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  343,
      343,  349,  343,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,

      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      343,  343,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  346,  346,  346,  346,  346,  346,  346,
      346,  346,    0,  343,  343,  343,  343,  343,  343
    ) ;

yy_nxt : constant array(0..751) of short :=
    (   0,
        4,    5,    6,    7,    8,    4,    9,   10,   11,   12,
       13,   14,   15,   16,   17,   18,   19,   20,   21,   22,
       23,   24,   25,   26,   27,   28,   29,   30,   31,   32,
       33,   32,   32,   34,   35,   36,   37,   38,   32,   39,
       40,   41,   42,   32,   43,   44,   32,    4,   45,   53,
       59,   60,   61,   63,   64,   66,   67,   83,   54,   73,
       55,   75,   77,   84,   85,   68,   78,   69,   72,   74,
       56,   70,   79,   71,   86,   76,   80,  127,   81,   72,
       72,   87,   93,   72,   92,   72,   72,   90,   82,   88,
       72,   57,   94,   91,   89,   72,   96,  100,   95,  104,

       72,   72,  102,   72,   72,  106,  103,  135,   97,  107,
       98,   99,  108,  110,  101,  105,   72,  114,  111,   72,
       72,   72,   72,  112,  113,   72,  118,   72,   72,  109,
       72,   53,  118,  118,  118,  118,  118,  118,  130,  132,
       54,   72,  120,  122,  128,  122,  125,  129,  123,  133,
      126,  131,   56,  138,  136,  134,   72,   72,   72,   72,
       72,   72,   72,  137,  140,  150,  145,  139,  144,  142,
      146,   72,   72,  121,   72,  143,   72,   72,   72,  147,
      141,  148,   72,  152,  149,   72,   72,   72,  151,   72,
      153,   72,   72,  154,   72,   72,  155,  156,  157,  162,

      160,  170,   72,   72,   72,  161,  158,  174,  189,  163,
      164,   72,  159,  165,  171,  168,  166,   72,  167,  169,
       72,  175,   72,   72,  173,   72,  172,  177,   72,   72,
      176,   72,   72,   72,  178,  180,   72,  181,  179,  190,
      182,   72,  186,  191,  193,   72,  196,   53,   72,  183,
       53,   72,   56,  194,  192,   72,   54,  203,  120,   54,
       72,   55,  195,   72,  198,   72,  197,   72,   56,  199,
      200,   56,  201,  187,   72,  204,   72,  207,   72,  205,
      206,  209,  185,  211,   72,   72,  210,   72,   72,  121,
      213,  202,   57,  208,   72,  212,   72,   72,   72,   72,

       72,  214,  215,  216,   72,  217,  218,   72,  219,  221,
       72,  222,   72,  224,  225,   72,   72,  223,   72,   72,
      227,  226,  228,   72,   72,  220,   72,  229,   72,  230,
       72,   72,  231,  232,  233,   72,  235,  234,   72,  236,
      256,   72,  237,   72,  238,  239,  182,   72,   72,   72,
       72,   72,   72,  189,   72,  183,   72,   72,   72,  241,
      247,   72,  186,   72,   53,  241,  241,  241,  241,  241,
      241,  184,   56,   54,  250,  120,   72,  184,  184,  184,
      184,  184,  184,  242,  190,   56,  243,  244,  185,   72,
      245,  246,  248,  187,   72,  249,  252,   72,   72,   72,

      254,   72,  251,   72,   72,  253,  121,  255,   72,  257,
      258,   72,  261,  259,  260,   72,  262,  263,   72,   72,
       72,   72,   72,  264,  265,  266,  267,  268,  269,   72,
      270,  271,  272,  273,  276,   72,  278,   72,  279,   72,
       72,   72,   72,  277,   72,   72,   72,   72,  182,  274,
       72,   72,  275,   72,  284,   72,   72,   72,  285,   72,
       72,  280,  286,  280,   72,  287,  281,  288,  289,   72,
      290,  292,  291,  294,  293,  295,   72,   72,   72,   72,
      296,  297,   72,  298,  302,  299,   72,  300,   72,   72,
      283,   72,   72,  301,   72,  303,  304,  305,  307,   72,

       72,  308,  309,  306,   72,   72,   72,   72,   72,   72,
       72,   72,  311,  310,  182,   72,  313,  316,  314,  317,
      282,  315,  320,   72,   72,   72,  282,  282,  282,  282,
      282,  282,  319,   72,  318,  330,   72,  321,   72,   72,
       72,  322,  323,  312,   72,   72,  324,   72,  326,  327,
      325,  329,   72,  328,  311,   72,  283,   72,   72,   72,
       72,  331,   72,  333,  334,  332,  336,   72,  337,   72,
       72,   72,   72,  335,   72,  340,   72,  338,  339,  341,
       72,   72,  342,   72,   72,  312,   72,   72,   72,   72,
       72,   72,   72,   72,   72,   72,   72,   72,   72,   72,

       72,   72,   72,   72,   46,   46,   46,   46,   46,   46,
       48,  311,   48,   48,   48,   48,   65,   65,  117,   72,
      117,  117,  117,  117,  184,  184,  184,  282,   72,  282,
       72,   72,   72,   72,   72,   72,   72,  281,   72,   72,
       72,   72,   72,   72,   72,   72,   72,   72,   72,   72,
       72,   72,   72,   72,   72,   72,   72,   72,   72,   72,
       72,  189,  186,  240,   72,   72,   72,   72,   72,   72,
       72,   72,   72,   72,   72,  123,  188,   47,   72,   72,
       72,   72,   72,   72,  343,   72,   72,  124,  119,  116,
      115,   47,   72,   62,   58,   52,   51,   50,   49,   47,

      343,    3,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343
    ) ;

yy_chk : constant array(0..751) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,   19,
       22,   22,   22,   24,   24,   25,   25,   30,   19,   26,
       19,   27,   28,   30,   31,   25,   28,   25,   30,   26,
       19,   25,   28,   25,   31,   27,   29,   67,   29,   25,
       26,   33,   36,   28,   35,   31,   27,   34,   29,   33,
       29,   19,   36,   34,   33,   35,   37,   38,   36,   40,

       67,   33,   39,   36,   34,   41,   39,   76,   37,   41,
       37,   37,   41,   42,   38,   40,   37,   44,   42,   76,
       40,  342,   38,   43,   43,   42,   53,   39,   44,   41,
       41,   55,   53,   53,   53,   53,   53,   53,   69,   73,
       55,   43,   55,   56,   68,   56,   66,   68,   56,   74,
       66,   70,   55,   78,   77,   75,  341,   66,   73,   70,
       69,   68,   75,   77,   81,   92,   84,   80,   83,   82,
       85,   74,   78,   55,   80,   82,   83,   77,   84,   86,
       81,   90,   85,   94,   91,   86,   81,   92,   93,   94,
       95,   93,   82,   98,   90,   91,   99,  100,  101,  103,

      102,  105,   99,  340,   95,  102,  101,  108,  123,  103,
      103,   98,  101,  103,  106,  104,  103,  102,  103,  104,
      100,  109,  103,  101,  107,  105,  106,  111,  108,  104,
      110,  109,  107,  106,  112,  113,  110,  114,  112,  123,
      118,  113,  119,  125,  127,  114,  132,  120,  111,  118,
      124,  125,  119,  128,  126,  112,  120,  138,  120,  124,
      126,  124,  131,  132,  134,  127,  133,  133,  120,  135,
      136,  124,  137,  119,  138,  139,  135,  142,  128,  139,
      141,  145,  118,  147,  136,  134,  146,  131,  141,  120,
      149,  137,  124,  143,  147,  148,  139,  137,  142,  143,

      149,  153,  154,  156,  145,  157,  158,  146,  159,  160,
      158,  161,  148,  164,  165,  153,  160,  162,  156,  165,
      167,  166,  168,  154,  157,  159,  166,  169,  162,  170,
      161,  159,  171,  172,  173,  170,  175,  174,  164,  176,
      207,  167,  178,  168,  179,  180,  184,  173,  172,  174,
      207,  171,  169,  189,  178,  184,  176,  175,  179,  183,
      195,  195,  186,  180,  188,  183,  183,  183,  183,  183,
      183,  185,  186,  188,  200,  188,  339,  185,  185,  185,
      185,  185,  185,  191,  189,  188,  192,  193,  184,  191,
      193,  194,  196,  186,  192,  199,  202,  193,  194,  200,

      205,  199,  201,  201,  196,  203,  188,  206,  206,  209,
      210,  203,  216,  212,  215,  209,  217,  218,  210,  212,
      205,  202,  215,  219,  220,  221,  222,  223,  224,  217,
      225,  226,  227,  228,  231,  223,  236,  216,  238,  226,
      227,  224,  218,  233,  219,  220,  221,  222,  241,  229,
      236,  225,  230,  230,  243,  231,  228,  229,  244,  238,
      233,  240,  245,  240,  244,  246,  240,  249,  250,  245,
      253,  257,  256,  259,  258,  260,  250,  253,  256,  243,
      261,  262,  260,  263,  269,  264,  246,  265,  257,  263,
      241,  258,  249,  268,  259,  270,  271,  272,  274,  261,

      270,  275,  276,  273,  272,  269,  262,  264,  271,  273,
      265,  275,  281,  277,  282,  268,  284,  289,  287,  291,
      283,  288,  294,  274,  276,  277,  283,  283,  283,  283,
      283,  283,  293,  288,  292,  310,  291,  296,  289,  284,
      287,  298,  299,  281,  294,  292,  300,  299,  303,  305,
      302,  308,  300,  307,  311,  293,  282,  302,  296,  307,
      310,  313,  298,  317,  318,  315,  324,  313,  328,  303,
      305,  315,  308,  323,  317,  335,  318,  330,  333,  336,
      337,  323,  338,  330,  334,  311,  332,  324,  331,  328,
      333,  329,  327,  326,  325,  322,  335,  321,  320,  319,

      316,  336,  314,  338,  344,  344,  344,  344,  344,  344,
      345,  312,  345,  345,  345,  345,  346,  346,  347,  309,
      347,  347,  347,  347,  348,  348,  348,  349,  306,  349,
      304,  301,  297,  295,  290,  286,  285,  280,  279,  278,
      267,  266,  255,  254,  252,  251,  248,  247,  242,  239,
      237,  235,  234,  232,  214,  213,  211,  208,  204,  198,
      197,  190,  187,  182,  181,  177,  163,  155,  152,  151,
      150,  144,  140,  130,  129,  122,  121,  115,   97,   96,
       89,   88,   87,   79,   72,   71,   65,   57,   54,   48,
       47,   46,   32,   23,   20,   18,   17,   16,   13,    8,

        3,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343,  343,  343,  343,  343,  343,  343,  343,  343,  343,
      343
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
	    if ( yy_current_state >= 344 ) then
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
		    if ( yy_current_state >= 344 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := yy_cp + 1;
if ( yy_current_state = 343 ) then
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
--# line 17 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ABORT_token);

when 2 => 
--# line 18 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ABS_token);

when 3 => 
--# line 19 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ABSTRACT_token);

when 4 => 
--# line 20 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ACCEPT_token);

when 5 => 
--# line 21 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ACCESS_token);

when 6 => 
--# line 22 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ALIASED_token);

when 7 => 
--# line 23 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ALL_token);

when 8 => 
--# line 24 "trans.l"
Current_Column := Current_Column + YYText'Length; return (AND_token);

when 9 => 
--# line 25 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ARRAY_token);

when 10 => 
--# line 26 "trans.l"
Current_Column := Current_Column + YYText'Length; return (AT_token);

when 11 => 
--# line 27 "trans.l"
Current_Column := Current_Column + YYText'Length; return (BEGIN_token);

when 12 => 
--# line 28 "trans.l"
Current_Column := Current_Column + YYText'Length; return (BODY_token);

when 13 => 
--# line 29 "trans.l"
Current_Column := Current_Column + YYText'Length; return (CASE_token);

when 14 => 
--# line 30 "trans.l"
Current_Column := Current_Column + YYText'Length; return (CONSTANT_token);

when 15 => 
--# line 31 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DECLARE_token);

when 16 => 
--# line 32 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DELAY_token);

when 17 => 
--# line 33 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DELTA_token);

when 18 => 
--# line 34 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DIGITS_token);

when 19 => 
--# line 35 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DO_token);

when 20 => 
--# line 36 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ELSE_token);

when 21 => 
--# line 37 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ELSIF_token);

when 22 => 
--# line 38 "trans.l"
Current_Column := Current_Column + YYText'Length; return (END_token);

when 23 => 
--# line 39 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ENTRY_token);

when 24 => 
--# line 40 "trans.l"
Current_Column := Current_Column + YYText'Length; return (EXCEPTION_token);

when 25 => 
--# line 41 "trans.l"
Current_Column := Current_Column + YYText'Length; return (EXIT_token);

when 26 => 
--# line 42 "trans.l"
Current_Column := Current_Column + YYText'Length; return (FOR_token);

when 27 => 
--# line 43 "trans.l"
Current_Column := Current_Column + YYText'Length; return (FUNCTION_token);

when 28 => 
--# line 44 "trans.l"
Current_Column := Current_Column + YYText'Length; return (GENERIC_token);

when 29 => 
--# line 45 "trans.l"
Current_Column := Current_Column + YYText'Length; return (GOTO_token);

when 30 => 
--# line 46 "trans.l"
Current_Column := Current_Column + YYText'Length; return (IF_token);

when 31 => 
--# line 47 "trans.l"
Current_Column := Current_Column + YYText'Length; return (IN_token);

when 32 => 
--# line 48 "trans.l"
Current_Column := Current_Column + YYText'Length; return (IS_token);

when 33 => 
--# line 49 "trans.l"
Current_Column := Current_Column + YYText'Length; return (LIMITED_token);

when 34 => 
--# line 50 "trans.l"
Current_Column := Current_Column + YYText'Length; return (LOOP_token);

when 35 => 
--# line 51 "trans.l"
Current_Column := Current_Column + YYText'Length; return (MOD_token);

when 36 => 
--# line 52 "trans.l"
Current_Column := Current_Column + YYText'Length; return (NEW_token);

when 37 => 
--# line 53 "trans.l"
Current_Column := Current_Column + YYText'Length; return (NOT_token);

when 38 => 
--# line 54 "trans.l"
Current_Column := Current_Column + YYText'Length; return (NULL_token);

when 39 => 
--# line 55 "trans.l"
Current_Column := Current_Column + YYText'Length; return (OF_token);

when 40 => 
--# line 56 "trans.l"
Current_Column := Current_Column + YYText'Length; return (OR_token);

when 41 => 
--# line 57 "trans.l"
Current_Column := Current_Column + YYText'Length; return (OTHERS_token);

when 42 => 
--# line 58 "trans.l"
Current_Column := Current_Column + YYText'Length; return (OUT_token);

when 43 => 
--# line 59 "trans.l"
Current_Column := Current_Column + YYText'Length; return (PACKAGE_token);

when 44 => 
--# line 60 "trans.l"
Current_Column := Current_Column + YYText'Length; return (PRAGMA_token);

when 45 => 
--# line 61 "trans.l"
Current_Column := Current_Column + YYText'Length; return (PRIVATE_token);

when 46 => 
--# line 62 "trans.l"
Current_Column := Current_Column + YYText'Length; return (PROCEDURE_token);

when 47 => 
--# line 63 "trans.l"
Current_Column := Current_Column + YYText'Length; return (PROTECTED_token);

when 48 => 
--# line 64 "trans.l"
Current_Column := Current_Column + YYText'Length; return (RAISE_token);

when 49 => 
--# line 65 "trans.l"
Current_Column := Current_Column + YYText'Length; return (RANGE_token);

when 50 => 
--# line 66 "trans.l"
Current_Column := Current_Column + YYText'Length; return (RECORD_token);

when 51 => 
--# line 67 "trans.l"
Current_Column := Current_Column + YYText'Length; return (REM_token);

when 52 => 
--# line 68 "trans.l"
Current_Column := Current_Column + YYText'Length; return (RENAMES_token);

when 53 => 
--# line 69 "trans.l"
Current_Column := Current_Column + YYText'Length; return (REQUEUE_token);

when 54 => 
--# line 70 "trans.l"
Current_Column := Current_Column + YYText'Length; return (RETURN_token);

when 55 => 
--# line 71 "trans.l"
Current_Column := Current_Column + YYText'Length; return (REVERSE_token);

when 56 => 
--# line 72 "trans.l"
Current_Column := Current_Column + YYText'Length; return (SELECT_token);

when 57 => 
--# line 73 "trans.l"
Current_Column := Current_Column + YYText'Length; return (SEPARATE_token);

when 58 => 
--# line 74 "trans.l"
Current_Column := Current_Column + YYText'Length; return (SUBTYPE_token);

when 59 => 
--# line 75 "trans.l"
Current_Column := Current_Column + YYText'Length; return (TAGGED_token);

when 60 => 
--# line 76 "trans.l"
Current_Column := Current_Column + YYText'Length; return (TASK_token);

when 61 => 
--# line 77 "trans.l"
Current_Column := Current_Column + YYText'Length; return (TERMINATE_token);

when 62 => 
--# line 78 "trans.l"
Current_Column := Current_Column + YYText'Length; return (THEN_token);

when 63 => 
--# line 79 "trans.l"
Current_Column := Current_Column + YYText'Length; return (TYPE_token);

when 64 => 
--# line 80 "trans.l"
Current_Column := Current_Column + YYText'Length; return (UNTIL_token);

when 65 => 
--# line 81 "trans.l"
Current_Column := Current_Column + YYText'Length; return (USE_token);

when 66 => 
--# line 82 "trans.l"
Current_Column := Current_Column + YYText'Length; return (WHEN_token);

when 67 => 
--# line 83 "trans.l"
Current_Column := Current_Column + YYText'Length; return (WHILE_token);

when 68 => 
--# line 84 "trans.l"
Current_Column := Current_Column + YYText'Length; return (WITH_token);

when 69 => 
--# line 85 "trans.l"
Current_Column := Current_Column + YYText'Length; return (XOR_token);

when 70 => 
--# line 86 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ARROW_token);

when 71 => 
--# line 87 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DOUBLE_DOT_token);

when 72 => 
--# line 88 "trans.l"
Current_Column := Current_Column + YYText'Length; return (EXPONENT_token);

when 73 => 
--# line 89 "trans.l"
Current_Column := Current_Column + YYText'Length; return (ASSIGNMENT_token);

when 74 => 
--# line 90 "trans.l"
Current_Column := Current_Column + YYText'Length; return (INEQUALITY_token);

when 75 => 
--# line 91 "trans.l"
Current_Column := Current_Column + YYText'Length; return (GREATER_THAN_OR_EQUAL_token);

when 76 => 
--# line 92 "trans.l"
Current_Column := Current_Column + YYText'Length; return (LESS_THAN_OR_EQUAL_token);

when 77 => 
--# line 93 "trans.l"
Current_Column := Current_Column + YYText'Length; return (LEFT_LABEL_BRACKET_token);

when 78 => 
--# line 94 "trans.l"
Current_Column := Current_Column + YYText'Length; return (RIGHT_LABEL_BRACKET_token);

when 79 => 
--# line 95 "trans.l"
Current_Column := Current_Column + YYText'Length; return (BOX_token);

when 80 => 
--# line 96 "trans.l"
Current_Column := Current_Column + YYText'Length; return (CONCAT_token);

when 81 => 
--# line 97 "trans.l"
Current_Column := Current_Column + YYText'Length; return (L_PAREN_token);

when 82 => 
--# line 98 "trans.l"
Current_Column := Current_Column + YYText'Length; return (R_PAREN_token);

when 83 => 
--# line 99 "trans.l"
Current_Column := Current_Column + YYText'Length; return (STAR_token);

when 84 => 
--# line 100 "trans.l"
Current_Column := Current_Column + YYText'Length; return (PLUS_token);

when 85 => 
--# line 101 "trans.l"
Current_Column := Current_Column + YYText'Length; return (COMMA_token);

when 86 => 
--# line 102 "trans.l"
Current_Column := Current_Column + YYText'Length; return (MINUS_token);

when 87 => 
--# line 103 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DOT_token);

when 88 => 
--# line 104 "trans.l"
Current_Column := Current_Column + YYText'Length; return (SLASH_token);

when 89 => 
--# line 105 "trans.l"
Current_Column := Current_Column + YYText'Length; return (COLON_token);

when 90 => 
--# line 106 "trans.l"
Current_Column := Current_Column + YYText'Length; return (SEMICOLON_token);

when 91 => 
--# line 107 "trans.l"
Current_Column := Current_Column + YYText'Length; return (LT_token);

when 92 => 
--# line 108 "trans.l"
Current_Column := Current_Column + YYText'Length; return (EQ_token);

when 93 => 
--# line 109 "trans.l"
Current_Column := Current_Column + YYText'Length; return (GT_token);

when 94 => 
--# line 110 "trans.l"
Current_Column := Current_Column + YYText'Length; return (PIPE_token);

when 95 => 
--# line 111 "trans.l"
Current_Column := Current_Column + YYText'Length; return (BANG_token);

when 96 => 
--# line 112 "trans.l"
Current_Column := Current_Column + YYText'Length; return (TICK_token);

when 97 => 
--# line 113 "trans.l"
Current_Column := Current_Column + YYText'Length; return (IDENTIFIER_token);

when 98 => 
--# line 114 "trans.l"
Current_Column := Current_Column + YYText'Length; return (DECIMAL_LITERAL_token);

when 99 => 
--# line 115 "trans.l"
Current_Column := Current_Column + YYText'Length; return (BASED_LITERAL_token);

when 100 => 
--# line 116 "trans.l"
Current_Column := Current_Column + YYText'Length; return (STRING_LITERAL_token);

when 101 => 
--# line 117 "trans.l"
Current_Column := Current_Column + YYText'Length; return (CHAR_LITERAL_token);

when 102 => 
--# line 118 "trans.l"
Current_Column := Current_Column + YYText'Length;

when 103 => 
--# line 119 "trans.l"
Current_Column := Current_Column + 1;

when 104 => 
--# line 120 "trans.l"
Current_Line := Current_Line + 1; Current_Column := 1;

when 105 => 
--# line 121 "trans.l"
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
--# line 121 "trans.l"

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

end trans;

