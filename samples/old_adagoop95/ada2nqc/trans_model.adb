with ada.text_io; use ada.text_io;
with ada.integer_text_io; use ada.integer_text_io;
with trans; use trans;   --for the token types
with ada.characters.handling; use ada.characters.handling;   --for To_Upper()
with ada.strings; use ada.strings;   --for Backward, Forward
with ada.strings.fixed; use ada.strings.fixed;   --for Index()
with ada.strings.unbounded; use ada.strings.unbounded;
with lego;   --for Ada/Mindstorms builtins
with lego_builtins;   --"
with type_membership_template;   --for type membership generics below


package body trans_model is

--generic subprogram instantiations for Ada/Mindstorms type membership checking
--all of form Is_This_Type(This : String) return boolean
function Is_Ada_Mindstorms_Procedure is
   new Type_Membership_Template(Discrete_Type => Lego.Ada_Mindstorms_Procedure);
function Is_Sensor_Port is
   new Type_Membership_Template(Discrete_Type => Lego.Sensor_Port);
function Is_Output_Port is
   new Type_Membership_Template(Discrete_Type => Lego.Output_Port);
function Is_Output_Mode is
   new Type_Membership_Template(Discrete_Type => Lego.Output_Mode);
function Is_Output_Direction is
   new Type_Membership_Template(Discrete_Type => Lego.Output_Direction);
function Is_Configuration is
   new Type_Membership_Template(Discrete_Type => Lego.Configuration);
function Is_Sensor_Type is
   new Type_Membership_Template(Discrete_Type => Lego.Sensor_Type);
function Is_Sound is
   new Type_Membership_Template(Discrete_Type => Lego.Sound);
function Is_Sensor_Mode is
   new Type_Membership_Template(Discrete_Type => Lego.Sensor_Mode);
function Is_Timer is
   new Type_Membership_Template(Discrete_Type => Lego.Timer);
function Is_Transmitter_Power_Setting is
   new Type_Membership_Template(Discrete_Type => Lego.Transmitter_Power_Setting);


Proc_Nesting_Level : Integer := 0;   --current level of procedure nesting
Indent_Level : Integer := 0;         --current indent level, so translated code looks nice

procedure Inc_Indent is
begin
   Indent_Level := Indent_Level+1;
end Inc_Indent;

procedure Dec_Indent is
begin
   Indent_Level := Indent_Level-1;
end Dec_Indent;

procedure my_new_line is
begin
   new_line;
   for i in 1..Indent_Level loop
      put("   ");
   end loop;
end my_new_line;

procedure put_with_space(Item: String) is
begin
   put(Item);
   put(" ");
end put_with_space;

procedure put_with_space(Item: Unbounded_String) is
begin
   put(To_String(Item));
   put(" ");
end put_with_space;

procedure put_with_space(Item : Integer) is
begin
   put(Item => Item, Width => 0);
   put(" ");
end put_with_space;

Input_Filename : Unbounded_String;   --need this for error messages
--called from main program
procedure Set_Input_Filename(Name : in Unbounded_String) is
begin
   --strip off everything but the trailing component of the full path
   Input_Filename := To_Unbounded_String(Slice(
      Source => Name, 
      Low => Index(Source => Name, Pattern => "\", Going => Backward)+1,
      High => Length(Name)));
end Set_Input_Filename;

procedure Error_Msg_Prefix(Line, Column : in integer) is
begin
   put(File => Standard_Error, Item => To_String(Input_Filename));
   put(File => Standard_Error, Item => ":");
   put(File => Standard_Error, Width => 0, Item => Line);
   put(File => Standard_Error, Item => ":");
   put(File => Standard_Error, Width => 0, Item => Column);
end Error_Msg_Prefix;

--Should have an entry for every Ada/Mindstorms identifier, even if
--it's just passed through.  Must be kept consistent with lego.ads.
procedure Translate_Ada_Mindstorms_Identifier(This : String) is
ID_String : Unbounded_String := To_Unbounded_String(To_Upper(This));
begin
   if ID_String = "SET_SENSOR" then
      put("SetSensor");
   elsif ID_String = "CLEAR_SENSOR" then
      put("ClearSensor");
   elsif ID_String = "GET_SENSOR_VALUE" then
      put("");   --Get_Sensor_Value(Sensor_x) becomes (SENSOR_x) in NQC
   elsif ID_String = "OUTPUT_ON" then
      put("On");
   elsif ID_String = "OUTPUT_OFF" then
      put("Off");
   elsif ID_String = "OUTPUT_FLOAT" then
      put("Float");
   elsif ID_String = "OUTPUT_FORWARD" then
      put("Fwd");
   elsif ID_String = "OUTPUT_REVERSE" then
      put("Rev");
   elsif ID_String = "OUTPUT_TOGGLE" then
      put("Toggle");
   elsif ID_String = "OUTPUT_POWER" then
      put("SetPower");
   elsif ID_String = "WAIT" then
      put("Wait");
   elsif ID_String = "PLAY_SOUND" then
      put("PlaySound");
   elsif ID_String = "PLAY_TONE" then
      put("PlayTone");
   elsif ID_String = "STOP_ALL_TASKS" then
      put("StopAllTasks");
   elsif ID_String = "SEND_MESSAGE" then
      put("SendMessage");
   elsif ID_String = "CLEAR_MESSAGE_BUFFER" then
      put("ClearMessage");
   elsif ID_String = "GET_MESSAGE" then
      put("Message");
   elsif ID_String = "CONFIG_SENSOR" then
      put("SetSensor");
   elsif ID_String = "OUTPUT_ON_FORWARD" then
      put("OnFwd");
   elsif ID_String = "OUTPUT_ON_REVERSE" then
      put("OnRev");
   elsif ID_String = "OUTPUT_ON_FOR" then
      put("OnFor");
   elsif ID_String = "SET_OUTPUT_MODE" then
      put("SetOutput");
   elsif ID_String = "SET_OUTPUT_DIRECTION" then
      put("SetDirection");
   elsif ID_String = "SET_SENSOR_MODE" then
      put("SetSensorMode");
   elsif ID_String = "SET_SENSOR_TYPE" then
      put("SetSensorType");
   elsif ID_String = "SENSOR_1" then
      put("SENSOR_1");
   elsif ID_String = "SENSOR_2" then
      put("SENSOR_2");
   elsif ID_String = "SENSOR_3" then
      put("SENSOR_3");
   elsif ID_String = "RANDOM" then
      put("Random");
   elsif ID_String = "GET_TIMER" then
      put("Timer");
   elsif ID_String = "GET_WATCH" then
      put("Watch");
   elsif ID_String = "CLEAR_TIMER" then
      put("ClearTimer");
   elsif ID_String = "SELECT_DISPLAY" then
      put("SelectDisplay");
   elsif ID_String = "CREATE_DATALOG" then
      put("CreateDatalog");
   elsif ID_String = "ADD_TO_DATALOG" then
      put("AddToDatalog");
   elsif ID_String = "SET_TRANSMITTER_POWER_LEVEL" then
      put("SetTxPower");
   elsif Is_Configuration(To_String(ID_String)) then   --sensor configuration type, replace "Config_" with "Sensor_"
      put(To_String("SENSOR_" &
         To_Unbounded_String(Slice(Source => ID_String, Low => Index(Source => ID_String, Pattern => "_")+1,
         High => Length(ID_String)))));
   elsif Is_Sensor_Type(To_String(ID_String)) then   --sensor hardware type
      put(To_String("SENSOR_" & ID_String));
   elsif Is_Sound(To_String(ID_String)) then   --sound type
      put(To_String("SOUND_" & ID_String));
   elsif Is_Sensor_Mode(To_String(ID_String)) then   --mode type
      put(To_String("SENSOR_MODE_" & ID_String));        
   elsif ID_String = "OUTPUT_A" then   --output port designators
      put("OUT_A");
   elsif ID_String = "OUTPUT_B" then
      put("OUT_B");
   elsif ID_String = "OUTPUT_C" then
      put("OUT_C");
   elsif ID_String = "OUTPUT_MODE_ON" then   --output modes
      put("OUT_ON");
   elsif ID_String = "OUTPUT_MODE_OFF" then
      put("OUT_OFF");
   elsif ID_String = "OUTPUT_DIRECTION_FORWARD" then   --output directions
      put("OUT_FWD");
   elsif ID_String = "OUTPUT_DIRECTION_BACKWARD" then
      put("OUT_REV");
   elsif ID_String = "OUTPUT_DIRECTION_TOGGLE" then
      put("OUT_TOGGLE");
   elsif ID_String = "SET_WATCH" then
      put("SetWatch");
   elsif ID_String = "TIMER_0" then   --timers
      put("0");
   elsif ID_String = "TIMER_1" then
      put("1");
   elsif ID_String = "TIMER_2" then
      put("2");
   elsif ID_String = "TIMER_3" then
      put("3");
   elsif ID_String = "POWER_LOW" then   --power constants
      put_with_space(Integer(Lego.Power_Low));
   elsif ID_String = "POWER_HALF" then
      put_with_space(Integer(Lego.Power_Half));
   elsif ID_String = "POWER_HIGH" then
      put_with_space(Integer(Lego.Power_High));
   elsif ID_String = "DISPLAY_WATCH" then   --display constants
      put_with_space(Lego.Display_Watch);
   elsif ID_String = "DISPLAY_SENSOR_1" then
      put_with_space(Lego.Display_Sensor_1);
   elsif ID_String = "DISPLAY_SENSOR_2" then
      put_with_space(Lego.Display_Sensor_2);
   elsif ID_String = "DISPLAY_SENSOR_3" then
      put_with_space(Lego.Display_Sensor_3);
   elsif ID_String = "DISPLAY_OUTPUT_A" then
      put_with_space(Lego.Display_Output_A);
   elsif ID_String = "DISPLAY_OUTPUT_B" then
      put_with_space(Lego.Display_Output_B);
   elsif ID_String = "DISPLAY_OUTPUT_C" then
      put_with_space(Lego.Display_Output_C);
   elsif ID_String = "TRANSMITTER_POWER_LOW" then
      put_with_space("TX_POWER_LO");
   elsif ID_String = "TRANSMITTER_POWER_HIGH" then
      put_with_space("TX_POWER_HI");
      
   end if;

end Translate_Ada_Mindstorms_Identifier;

--must be kept consistent with power constant names in lego.ads
function Is_Power_Constant(This: in String) return boolean is
ID_String : Unbounded_String := To_Unbounded_String(To_Upper(This));
begin
   if ID_String = "POWER_LOW" or 
      ID_String = "POWER_HALF" or 
      ID_String = "POWER_HIGH" then
      return true;
   else
      return false;
   end if;
end Is_Power_Constant;

--must be kept consistent with display constant names in lego.ads
function Is_Display_Constant(This: in String) return boolean is
ID_String : Unbounded_String := To_Unbounded_String(To_Upper(This));
begin
   if ID_String = "DISPLAY_WATCH" or 
      ID_String = "DISPLAY_SENSOR_1" or 
      ID_String = "DISPLAY_SENSOR_2" or 
      ID_String = "DISPLAY_SENSOR_3" or 
      ID_String = "DISPLAY_OUTPUT_A" or 
      ID_String = "DISPLAY_OUTPUT_B" or 
      ID_String = "DISPLAY_OUTPUT_C" then 
      return true;
   else
      return false;
   end if;
end Is_Display_Constant;

function Is_Ada_Mindstorms_Identifier(This : in String) return boolean is
begin
   --call the generic subprograms instantiated at the beginning of this file
   if Is_Ada_Mindstorms_Procedure(This) or
      Is_Sensor_Port(This) or 
      Is_Sensor_Mode(This) or 
      Is_Sensor_Type(This) or
      Is_Output_Port(This) or
      Is_Output_Mode(This) or
      Is_Output_Direction(This) or
      Is_Configuration(This) or
      Is_Sound(This) or
      Is_Timer(This) or
      Is_Transmitter_Power_Setting(This) then
      return true;
   elsif Is_Power_Constant(This) then   --power constants have to be treated specially
      return true;
   elsif Is_Display_Constant(This) then   --display constants have to be treated specially
      return true;
   else
      return false;
   end if;
end Is_Ada_Mindstorms_Identifier;

function Is_In_Proc_Table(This : in String; Arity : in Integer) return boolean is
begin
   for i in 1..Lego_Builtins.Max_Procedures loop
      if (To_Upper(This) = To_Upper(To_String((Lego_Builtins.Procedure_Info_Table(i).Name)))) and 
         (Lego_Builtins.Procedure_Info_Table(i).arity = Arity) then
         return true;
      end if;
   end loop;
   return false;
end Is_In_Proc_Table;

function Get_Proc_Info(This : in String; Arity : in Integer; Line, Column : in Integer) return Lego_Builtins.Procedure_Info_Record_Type is
begin
   for i in 1..Lego_Builtins.Max_Procedures loop
      if (To_Upper(This) = To_Upper(To_String((Lego_Builtins.Procedure_Info_Table(i).Name)))) and 
      (Lego_Builtins.Procedure_Info_Table(i).arity = Arity) then
         return Lego_Builtins.Procedure_Info_Table(i);
      end if;
   end loop;
      
   --should always find the indicated function/proc, something is wrong
   Error_Msg_Prefix(Line, Column);
   put(File => Standard_Error, Item => " Undefined identifier ");
   put(File => Standard_Error, Item => This);
   new_line(File => Standard_Error);
   put(File => Standard_Error, Item => "with arity ");
   put(File => Standard_Error, Width => 0, Item => Arity);
   new_line(File => Standard_Error);
   put(File => Standard_Error, Item => "Did you forget to run your program through AdaGide?");
   new_line(File => Standard_Error);
   raise Parse_Error_Exception;
   return Lego_Builtins.Procedure_Info_Table(1);   --satisfy the squealing compiler
      
end Get_Proc_Info;

function Name_Of_Formal_As_Declared (This : in indexed_comp_nonterminal; i : in Integer; Arity : in Integer) return Unbounded_String is
Info_Rec : Lego_Builtins.Procedure_Info_Record_Type;
Ignored1, Ignored2 : Integer := 0;
begin
   Info_Rec := Get_Proc_Info(This => To_String(LHS_Of_Assoc(This.name_part.all)), 
      Arity => Arity, Line => Ignored1, Column => Ignored2);  
   return Info_Rec.Formal_Parameters(i);
end Name_Of_Formal_As_Declared;

procedure Add_To_Proc_Info_Table(This : in Lego_Builtins.Procedure_Info_Record_Type; Line, Column : in integer) is
slot : integer := 0;
begin
   for i in 1..Lego_Builtins.Max_Procedures loop
      if Lego_Builtins.Procedure_Info_Table(i).Name = To_Unbounded_String("") then
         slot := i;
         exit;
      end if;
   end loop;
   
   if slot = 0 then
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " Your program has too many procedures to be translated");
      new_line(File => Standard_Error);
      put(File => Standard_Error, Item => "(max is ");
      put(File => Standard_Error, Item => Lego_Builtins.Max_Procedures, Width => 0);
      put(File => Standard_Error, Item => " for Ada/Mindstorms).  Reduce the number of procedures and recompile.");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
   else
      Lego_Builtins.Procedure_Info_Table(slot) := This;
   end if;
end Add_To_Proc_Info_Table;


   ---------------------------------
   -- Check For Supported Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in Parseable_Token) is
   Line : Integer := This.Line;
   Column: Integer := This.Column;
   begin
      if To_Unbounded_String(To_Upper(This.Token_String.all)) /= To_Unbounded_String("LEGO") then
         Error_Msg_Prefix(Line, Column);
         put(File => Standard_Error, Item => " Package '");
         put(File => Standard_Error, Item => This.Token_String.all);
         put(File => Standard_Error, Item => "' is not supported by Ada/Mindstorms.");
         new_line(File => Standard_Error);
         put(File => Standard_Error, Item => "Currently, only the package 'lego' can be used here.");
         new_line(File => Standard_Error);
         raise Parse_Error_Exception;
      end if;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in Parseable_Token; Line, Column : out integer) is
   begin
      Line := This.line;
      Column := This.Column;
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------
   --All tokens (keywords, identifiers, operators) translated here.
   procedure Translate (This : in out Parseable_Token) is
   ID_String : Unbounded_String;
   begin
      case This.Token_Type is
      
         --unsupported tokens
         when ABORT_TOKEN | ACCEPT_TOKEN | ARRAY_TOKEN | CASE_TOKEN | CHAR_LITERAL_TOKEN | 
              CONCAT_TOKEN | DECLARE_TOKEN | DIGITS_TOKEN | DO_TOKEN | DOT_TOKEN | DOUBLE_DOT_TOKEN | 
              EXCEPTION_TOKEN | EXPONENT_TOKEN | FUNCTION_TOKEN | GENERIC_TOKEN | GOTO_TOKEN | IN_TOKEN | 
              LEFT_LABEL_BRACKET_TOKEN | NEW_TOKEN | OTHERS_TOKEN | PACKAGE_TOKEN | PIPE_TOKEN | 
              PRAGMA_TOKEN | PRIVATE_TOKEN | PROTECTED_TOKEN | RAISE_TOKEN | RANGE_TOKEN | REM_TOKEN | 
              RENAMES_TOKEN | RETURN_TOKEN | REVERSE_TOKEN | SELECT_TOKEN | SEPARATE_TOKEN | SUBTYPE_TOKEN | 
              TASK_TOKEN | TICK_TOKEN | TYPE_TOKEN | WHEN_TOKEN | XOR_TOKEN =>
            Error_Msg_Prefix(This.Line, This.Column);
            put(File => Standard_Error, Item => "  Ada keyword/operator/literal "); 
            put(File => Standard_Error, Item => This.Token_String.all); 
            put(File => Standard_Error, Item => " not supported.");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
            
         --ignored tokens
         when ARROW_TOKEN | IS_TOKEN | NULL_TOKEN | USE_TOKEN | WITH_TOKEN =>
            null;
            
         --translated tokens/keywords, forced to lower case
         when AND_TOKEN =>
            put_with_space("&&");
         when ASSIGNMENT_TOKEN =>
            put_with_space("=");
         when BASED_LITERAL_TOKEN =>   --only OK if 16#xxxxxxx#
            if Element(To_Unbounded_String(This.Token_String.all),1) = '1' and 
               Element(To_Unbounded_String(This.Token_String.all),2) = '6' then
               put("0x");
               --print out everything between the #'s
               put(Slice(Source => To_Unbounded_String(This.Token_String.all), Low => 4,
                  High => Index(Source => This.Token_String.all, Pattern => "#", 
                          Going => Backward)-1));
            else
               Error_Msg_Prefix(This.Line, This.Column);
               put(File => Standard_Error, Item => ":  non-hex based literals not supported."); 
               raise Parse_Error_Exception;
            end if;
         when BEGIN_TOKEN =>
            my_new_line;
            put("{");
            Inc_Indent;  
            my_new_line;
         when DECIMAL_LITERAL_TOKEN =>
            if Index(Source => This.Token_String.all, Pattern => ".") > 0 or 
            Index(Source => This.Token_String.all, Pattern => "E") > 0 then
               Error_Msg_Prefix(This.Line, This.Column);
               put(File => Standard_Error, 
                  Item => " floating point values/values with exponents not supported."); 
               raise Parse_Error_Exception;
            end if;
            --might contain _'s, use attribute to strip them off
            put_with_space(Integer'Value(This.Token_String.all));
         when ELSIF_Token =>
            put_with_space("else if");
         when END_TOKEN =>
            Dec_Indent;
            my_new_line;
            put_with_space("}");
            my_new_line;  
         when EQ_TOKEN =>
            put_with_space("==");
         when IF_Token =>
            put_with_space("if"); 
         when INEQUALITY_TOKEN =>
            put_with_space("!=");
         when MOD_TOKEN =>
            put_with_space("%");
         when NOT_TOKEN =>
            put_with_space("!");
         when OR_TOKEN =>
            put_with_space("||");
         when WHILE_Token =>
            put_with_space("while");
                     
         --identifiers
         when IDENTIFIER_TOKEN =>
         
            --convert to upper case because Ada is case-insensitive
            ID_String := To_Unbounded_String(To_Upper(This.Token_String.all));
            
            --check for Ada/Mindstorm identifiers, they're usually treated specially
            if Is_Ada_Mindstorms_Identifier(To_String(ID_String)) then
               Translate_Ada_Mindstorms_Identifier(To_String(ID_String));
            else   --any other identifiers get passed through (previously converted to upper case)
               put_with_space(ID_String);
            end if;
            
         when STRING_LITERAL_token =>
            Error_Msg_Prefix(This.Line, This.Column);
            put(File => Standard_Error, Item => " Ada string literals not supported.");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
            
         --anything else is passed through
         when others =>
            put_with_space(This.Token_string.all);
            
      end case;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out NUMERIC_LIT_nonterminal1) is
   begin
      Translate(This.DECIMAL_LITERAL_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out NUMERIC_LIT_nonterminal2) is
   begin
      Translate(This.BASED_LITERAL_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out CHAR_LIT_nonterminal) is
   begin
      Translate(This.CHAR_LITERAL_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out GT_GT_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out LT_LT_nonterminal) is
   begin
      Translate(This.LEFT_LABEL_BRACKET_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out GE_nonterminal) is
   begin
      Translate(This.GREATER_THAN_OR_EQUAL_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out LT_EQ_nonterminal) is
   begin
      Translate(This.LESS_THAN_OR_EQUAL_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out NE_nonterminal) is
   begin
      Translate(This.INEQUALITY_part.all);
   end Translate;

   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in CHAR_STRING_nonterminal; Line, Column : out Integer) is
   begin
      Get_LC(This.STRING_LITERAL_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out CHAR_STRING_nonterminal) is
   begin
      Translate(This.STRING_LITERAL_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pragma_sym_nonterminal1) is
   begin
      Translate(This.PRAGMA_part.all);   
      Translate(This.identifier_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pragma_sym_nonterminal2) is
   begin
      Translate(This.PRAGMA_part.all);   
      Translate(This.simple_name_part.all);
      Translate(This.L_PAREN_part.all);
      Translate(This.pragma_arg_s_part.all);
      Translate(This.R_PAREN_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pragma_arg_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pragma_arg_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pragma_arg_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pragma_arg_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------
--empty pragma part
   procedure Translate (This : in out pragma_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pragma_s_nonterminal2) is
   begin
      Translate(This.pragma_s_part.all);
      Translate(This.pragma_sym_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal1; Id : Parseable_Token_Ptr) return boolean is
   begin
      return Match(This.object_decl_part.all, Id);
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal1) is
   begin
      Translate(This.object_decl_part.all);   
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal2; Id : Parseable_Token_Ptr) return boolean is
   begin
      return Match(This.number_decl_part.all, Id);
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal2) is
   begin
      Translate(This.number_decl_part.all); 
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal3; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal3) is
   begin
      Translate(This.type_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal4; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal4) is
   begin
      Translate(This.subtype_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal5; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal5) is
   begin
      Translate(This.subprog_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal6; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal6) is
   begin
      Translate(This.pkg_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal7; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal7) is
   begin
      Translate(This.task_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal8; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal8) is
   begin
      Translate(This.prot_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal9; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal9) is
   begin
      Translate(This.exception_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal10; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal10) is
   begin
      Translate(This.rename_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal11; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal11) is
   begin
      Translate(This.generic_decl_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in decl_nonterminal12; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_nonterminal12) is
   begin
      Translate(This.body_stub_part.all);
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in object_decl_nonterminal; Id : Parseable_Token_Ptr) return boolean is
   begin
      if In_Id_List(This.def_id_s_part.all, Id) then
         return true;
      else
         return false;
      end if;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   --id1[,id2...] : [constant] subtype [:= expr] ;
   --becomes int id1[,id2...] [= expr];   if it's a variable dec, or
   --#define id1 (expr) if it's a constant dec (other id's are ignored)
   procedure Translate (This : in out object_decl_nonterminal) is
   Line, Column : integer;
   begin
      Line := This.COLON_part.Line;  
      Column := This.COLON_part.Column;
      
      --Is this a constant declaration?
      if Is_Keyword_Constant(This.object_qualifier_opt_part.all) then
      
         -- constants types restricted to those supported by Ada/Mindstorms
         if not Is_Supported_Constant_Type(This.object_subtype_def_part.all) then
            Error_Msg_Prefix(Line, Column);
            put(File => Standard_Error, Item => " constant type not supported by Ada/Mindstorms.  ");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
         end if;
         
         --ignore indent levels for all translations below
         if Contains_Multiple_Ids(This.def_id_s_part.all) then
            Error_Msg_Prefix(Line, Column);
            put(File => Standard_Error, Item => " simultaneous constant declarations not supported.");
            new_line(File => Standard_Error);
            put(File => Standard_Error, Item => "Identifiers after the first one will be ignored.  Recode with");
            new_line(File => Standard_Error);
            put(File => Standard_Error, Item => "each identifier declared individually to process all declarations.");
            raise Parse_Error_Exception;
         end if;
         new_line;   --#define must start in column 1, regardless of indenting level
         put_with_space("#define");
         Translate_First_Id(This.def_id_s_part.all);
         
         --must have an initialization expression for constant declaration
         if Is_Empty(This.init_opt_part.all) then
            Error_Msg_Prefix(Line, Column);
            put(File => Standard_Error, 
               Item => " constant declarations for Ada/Mindstorms require initialization with ':='.  ");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
         end if;
         
         put("(");   --add parentheses for paranoia with C-like macros
         Translate_Expression(This.init_opt_part.all);
         put(")");
         
      else   --must be an integer variable declaration
      
         --variable types even more restricted
         if not Is_Supported_Variable_Type(This.object_subtype_def_part.all) then
            Error_Msg_Prefix(Line, Column);
            put(File => Standard_Error, Item => " variable type not supported by Ada/Mindstorms.  ");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
         end if;
         
         put_with_space("int"); 
         Translate(This.def_id_s_part.all);
         --ignore the colon
         Translate(This.init_opt_part.all);
         Translate(This.SEMICOLON_part.all);
      end if;
      my_new_line;
   end Translate;
   
   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   procedure Build_Formal_Parameter_List(This : in def_id_s_nonterminal1;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      Formal_Parameter_Array(Next_Slot) := To_Unbounded_String(This.def_id_part.IDENTIFIER_part.Token_String.all);
      Next_Slot := Next_Slot + 1;
   end Build_Formal_Parameter_List;

   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in def_id_s_nonterminal1) return integer is
   begin
      return 1;
   end Get_Arity;
   
   ----------------
   -- In_Id_List --
   ----------------
   
   -- a single identifier
   function In_Id_List(This : in def_id_s_nonterminal1; Id : Parseable_Token_Ptr) return boolean is
   ID_String : Unbounded_String;
   begin
      --convert to upper case because all translated identifiers are in upper case
      ID_String := To_Unbounded_String(To_Upper(Id.Token_String.all));
      if ID_String = To_Unbounded_String(To_Upper(This.def_id_part.IDENTIFIER_part.Token_String.all)) then
         return true;
      else
         return false;
      end if;
   end In_Id_List;
   
   ---------------------------
   -- Contains_Multiple_Ids --
   ---------------------------
   
   function Contains_Multiple_Ids(This: in def_id_s_nonterminal1) return boolean is
   begin
      return false;
   end Contains_Multiple_Ids;

   ------------------------
   -- Translate_First_Id --
   ------------------------

   procedure Translate_First_Id (This : in def_id_s_nonterminal1) is
   begin
      Translate(This.def_id_part.all);
   end Translate_First_Id;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out def_id_s_nonterminal1) is
   begin
      Translate(This.def_id_part.all);
   end Translate;
   
   ---------------------------------
   -- Translate_Formal_Parameters --
   ---------------------------------
   
   procedure Translate_Formal_Parameters (This : in out def_id_s_nonterminal1; Reference : in Boolean) is
   begin
      if Reference then
         put_with_space("int&");
      else
         put_with_space("int");
      end if;
      Translate(This.def_id_part.all);
   end Translate_Formal_Parameters;

   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   procedure Build_Formal_Parameter_List(This : in def_id_s_nonterminal2;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      Build_Formal_Parameter_List(This.def_id_s_part.all, Formal_Parameter_Array, Next_Slot);
      Formal_Parameter_Array(Next_Slot) := To_Unbounded_String(This.def_id_part.IDENTIFIER_part.Token_String.all);
      Next_Slot := Next_Slot + 1;
   end Build_Formal_Parameter_List;
   
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in def_id_s_nonterminal2) return integer is
   begin
      return Get_Arity(This.def_id_s_part.all) + 1;
   end Get_Arity;
   
   ----------------
   -- In_Id_List --
   ----------------
   
   -- multiple identifiers
   function In_Id_List(This : in def_id_s_nonterminal2; Id : Parseable_Token_Ptr) return boolean is
   ID_String : Unbounded_String;
   begin
      if In_Id_List(This.def_id_s_part.all, Id) then   --check rest of id's in list
         return true;
      else   --check this one
         --convert to upper case because all translated identifiers are in upper case
         ID_String := To_Unbounded_String(To_Upper(Id.Token_String.all));
         if ID_String = To_Unbounded_String(To_Upper(This.def_id_part.IDENTIFIER_part.Token_String.all)) then
            return true;
         else
            return false;
         end if;
      end if;
   end In_Id_List;
   
   ---------------------------
   -- Contains_Multiple_Ids --
   ---------------------------
   
   function Contains_Multiple_Ids(This: in def_id_s_nonterminal2) return boolean is
   begin
      return true;
   end Contains_Multiple_Ids;
   
   ------------------------
   -- Translate_First_Id --
   ------------------------
   procedure Translate_First_Id (This : in def_id_s_nonterminal2) is
   begin
      Translate_First_Id(This.def_id_s_part.all);
   end Translate_First_Id;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out def_id_s_nonterminal2) is
   begin
      Translate(This.def_id_s_part.all);
      Translate(This.COMMA_part.all);
      Translate(This.def_id_part.all);
   end Translate;

   procedure Translate_Formal_Parameters (This : in out def_id_s_nonterminal2; Reference : in Boolean) is
   begin
      Translate_Formal_Parameters(This.def_id_s_part.all, Reference);
      Translate(This.COMMA_part.all);
      if Reference then
         put_with_space("int&");
      else
         put_with_space("int");
      end if;
      Translate(This.def_id_part.all);
   end Translate_Formal_Parameters;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out def_id_nonterminal) is
   Line, Column : integer;
   begin
      -- identifiers can't match anything in lego.ads, would cause translation problems
      if Is_Ada_Mindstorms_Identifier(This.IDENTIFIER_part.Token_String.all) then
         Line := This.IDENTIFIER_part.Line;
         Column := This.IDENTIFIER_part.column;
         Error_Msg_Prefix(Line, Column);
         put(File => Standard_Error, Item => " Identifier ");
         put(File => Standard_Error, Item => This.identifier_part.Token_String.all);
         put(File => Standard_Error, Item => " is the same name as something that is ");
         new_line(File => Standard_Error);
         put(File => Standard_Error, Item => "already a part of Ada/Mindstorms (look in lego.ads for details).");
         new_line(File => Standard_Error);
         put(File => Standard_Error, Item => "Change the name of the identifier and recompile.");
         new_line(File => Standard_Error);
         raise Parse_Error_Exception;
      else
         Translate(This.identifier_part.all);
      end if;
   end Translate;

   -------------------------
   -- Is_Keyword_Constant --
   -------------------------
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal1) return boolean is
   begin
      return false;
   end Is_Keyword_Constant;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out object_qualifier_opt_nonterminal1) is
   begin
      null;
   end Translate;

   -------------------------
   -- Is_Keyword_Constant --
   -------------------------
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal2) return boolean is
   begin
      return false;
   end Is_Keyword_Constant;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out object_qualifier_opt_nonterminal2) is
   begin
      null;
   end Translate;

   -------------------------
   -- Is_Keyword_Constant --
   -------------------------
   --if dispatched to here, must be the keyword 'constant'
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal3) return boolean is
   begin
      return true;
   end Is_Keyword_Constant;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out object_qualifier_opt_nonterminal3) is
   begin
      null;
   end Translate;
   
   -------------------------
   -- Is_Keyword_Constant --
   -------------------------
   function Is_Keyword_Constant(This: in object_qualifier_opt_nonterminal4) return boolean is
   begin 
      return false;
   end Is_Keyword_Constant;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out object_qualifier_opt_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------------------------
   -- Is_Supported_Constant_Type  --
   ---------------------------------
   function Is_Supported_Constant_Type(This: in object_subtype_def_nonterminal1) return boolean is 
   begin
      return Is_Supported_Constant_Type(This.subtype_ind_part.all);
   end Is_Supported_Constant_Type;
   
   ---------------------------------
   -- Is_Supported_Variable_Type  --
   ---------------------------------
   function Is_Supported_Variable_Type(This: in object_subtype_def_nonterminal1) return boolean is 
   begin
      return Is_Supported_Variable_Type(This.subtype_ind_part.all);
   end Is_Supported_Variable_Type;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out object_subtype_def_nonterminal1) is
   begin
      Translate(This.subtype_ind_part.all);
   end Translate;

   ---------------------------------
   -- Is_Supported_Constant_Type  --
   ---------------------------------
   
   function Is_Supported_Constant_Type(This: in object_subtype_def_nonterminal2) return boolean is 
   begin
      return false;
   end Is_Supported_Constant_Type;
   
   ---------------------------------
   -- Is_Supported_Variable_Type  --
   ---------------------------------
   
   function Is_Supported_Variable_Type(This: in object_subtype_def_nonterminal2) return boolean is 
   begin
      return false;
   end Is_Supported_Variable_Type;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out object_subtype_def_nonterminal2) is
   begin
      Translate(This.array_type_part.all);
   end Translate;

   --------------
   -- Is_Empty --
   --------------
   function Is_Empty(This: in init_opt_nonterminal1) return boolean is
   begin
      return true;
   end Is_Empty;
   
   --------------------------
   -- Translate_Expression --
   --------------------------
   --should never be called, but must silence the squealing compiler
   procedure Translate_Expression(This: in init_opt_nonterminal1) is
   begin
      null;
   end Translate_Expression;
   
   ---------------
   -- Translate --
   ---------------
   --could be empty, that's OK
   procedure Translate (This : in out init_opt_nonterminal1) is
   begin
      null;
   end Translate;

   --------------
   -- Is_Empty --
   --------------
   function Is_Empty(This: in init_opt_nonterminal2) return boolean is
   begin
      return false;
   end Is_Empty;
   
   --------------------------
   -- Translate_Expression --
   --------------------------
   procedure Translate_Expression(This: in init_opt_nonterminal2) is
   begin
      Translate(This.expression_part.all);
   end Translate_Expression;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out init_opt_nonterminal2) is
   begin
      Translate(This.ASSIGNMENT_part.all);
      Translate(This.expression_part.all);  
   end Translate;

   -----------
   -- Match --
   -----------
   function Match(This : in number_decl_nonterminal; Id : Parseable_Token_Ptr) return boolean is
   begin
      if In_Id_List(This.def_id_s_part.all, Id) then
         return true;
      else
         return false;
      end if;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out number_decl_nonterminal) is
   Line, Column : Integer;
   begin
     Line := This.COLON_part.line;
     Column := This.COLON_part.column;
     Error_Msg_Prefix(Line, Column);
     put(File => Standard_Error, Item => " Ada number declarations are not supported ");
     put(File => Standard_Error, Item=>"(missing keyword 'Integer'?).  ");
     new_line(File => Standard_Error);
     raise Parse_Error_Exception;
--     more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_decl_nonterminal) is
   begin
      Translate(This.TYPE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrim_part_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrim_part_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrim_part_opt_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_completion_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_completion_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal5) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal6) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal7) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out type_def_nonterminal8) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subtype_decl_nonterminal) is
   begin
      Translate(This.SUBTYPE_part.all);
   end Translate;

   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   function Is_Supported_Constant_Type(This: in subtype_ind_nonterminal1) return boolean is
   begin
      return false;
   end Is_Supported_Constant_Type;
   
   --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   function Is_Supported_Variable_Type(This: in subtype_ind_nonterminal1) return boolean is
   begin
      return false;
   end Is_Supported_Variable_Type;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subtype_ind_nonterminal1) is
   begin
      Translate(This.name_part.all);
      Translate(This.constraint_part.all);  
   end Translate;

   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   function Is_Supported_Constant_Type(This: in subtype_ind_nonterminal2) return boolean is
   begin
      return Is_Supported_Constant_Type(This.name_part.all);
   end Is_Supported_Constant_Type;
   
   --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   function Is_Supported_Variable_Type(This: in subtype_ind_nonterminal2) return boolean is
   begin
      return Is_Supported_Variable_Type(This.name_part.all);
   end Is_Supported_Variable_Type;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subtype_ind_nonterminal2) is
   begin
      Translate(This.name_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out constraint_nonterminal1) is
   begin
      Translate(This.range_constraint_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out constraint_nonterminal2) is
   begin
      Translate(This.decimal_digits_constraint_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate(This : in out decimal_digits_constraint_nonterminal) is
   begin
      Translate(This.DIGITS_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out derived_type_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out derived_type_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out derived_type_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out derived_type_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out derived_type_nonterminal5) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_constraint_nonterminal) is
   begin
      Translate(This.RANGE_part.all);
      --more tree here
   end Translate;
   
   -------------------------
   -- Get_Left_Expression --
   -------------------------
   function Get_Left_Expression(This : in range_sym_nonterminal1) return
      simple_expression_nonterminal_ptr is
   begin
      return This.simple_expression_part1;
   end Get_Left_Expression;
   
   --------------------------
   -- Get_Right_Expression --
   --------------------------
  function Get_Right_Expression(This : in range_sym_nonterminal1) return
      simple_expression_nonterminal_ptr is
   begin
      return This.simple_expression_part2;
   end Get_Right_Expression;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_sym_nonterminal1) is
   begin
      Translate(This.simple_expression_part1.all);
      Translate(This.DOUBLE_DOT_part.all);
      --more tree here
   end Translate;

   -------------------------
   -- Get_Left_Expression --
   -------------------------
   --should never be called, but has to exist to keep compiler happy
   function Get_Left_Expression(This : in range_sym_nonterminal2) return
      simple_expression_nonterminal_ptr is
   begin
      return null;
   end Get_Left_Expression;
   
   --------------------------
   -- Get_Right_Expression --
   --------------------------
   --should never be called, but has to exist to keep compiler happy
   function Get_Right_Expression(This : in range_sym_nonterminal2) return
      simple_expression_nonterminal_ptr is
   begin
      return null;
   end Get_Right_Expression;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_sym_nonterminal2) is
   begin
      Translate(This.name_part.all);
      Translate(This.TICK_part.all);
      --more tree here
   end Translate;

   -------------------------
   -- Get_Left_Expression --
   -------------------------
   --should never be called, but has to exist to keep compiler happy
   function Get_Left_Expression(This : in range_sym_nonterminal3) return
      simple_expression_nonterminal_ptr is
   begin
      return null;
   end Get_Left_Expression;
   
   --------------------------
   -- Get_Right_Expression --
   --------------------------
   --should never be called, but has to exist to keep compiler happy
   function Get_Right_Expression(This : in range_sym_nonterminal3) return
      simple_expression_nonterminal_ptr is
   begin
      return null;
   end Get_Right_Expression;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_sym_nonterminal3) is
   begin
      Translate(This.name_part.all);
      Translate(This.TICK_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out enumeration_type_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out enum_id_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out enum_id_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out enum_id_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out enum_id_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out integer_type_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out integer_type_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_spec_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_spec_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_spec_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out real_type_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out real_type_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out float_type_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out fixed_type_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out fixed_type_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out array_type_nonterminal1) is
   begin
      Translate(this.unconstr_array_type_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out array_type_nonterminal2) is
   begin
      Translate(This.constr_array_type_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unconstr_array_type_nonterminal) is
   begin
      Translate(This.ARRAY_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out constr_array_type_nonterminal) is
   begin
      Translate(This.ARRAY_Part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out component_subtype_def_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out aliased_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out aliased_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out index_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out index_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out index_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out iter_index_constraint_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out iter_discrete_range_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out iter_discrete_range_s_nonterminal2) is
   begin
      null;
   end Translate;
   
   -------------------------
   -- Get_Left_Expression --
   -------------------------
   --should never be called, but has to exist to keep compiler happy
   function Get_Left_Expression(This : in discrete_range_nonterminal1) return
      simple_expression_nonterminal_ptr is
   begin
      return null;
   end Get_Left_Expression;
   
   -------------------------
   -- Get_Right_Expression --
   -------------------------
   --should never be called, but has to exist to keep compiler happy
   function Get_Right_Expression(This : in discrete_range_nonterminal1) return
      simple_expression_nonterminal_ptr is
   begin
      return null;
   end Get_Right_Expression;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrete_range_nonterminal1) is
   begin
      null;
   end Translate;

   -------------------------
   -- Get_Left_Expression --
   -------------------------
   function Get_Left_Expression(This : in discrete_range_nonterminal2) return
      simple_expression_nonterminal_ptr is
   begin
      return Get_Left_Expression(This.range_sym_part.all);
   end Get_Left_Expression;
   
   -------------------------
   -- Get_Right_Expression --
   -------------------------
  function Get_Right_Expression(This : in discrete_range_nonterminal2) return
      simple_expression_nonterminal_ptr is
   begin
      return Get_Right_Expression(This.range_sym_part.all);
   end Get_Right_Expression;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrete_range_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_constr_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out range_constr_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out record_type_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out record_def_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out record_def_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out tagged_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out tagged_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out tagged_opt_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_list_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_list_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_list_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_decl_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_decl_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out variant_part_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out variant_part_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_decl_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrim_part_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrim_spec_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrim_spec_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrim_spec_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out access_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out access_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out variant_part_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out variant_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out variant_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out variant_nonterminal) is
   begin
      null;
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc(This : in choice_s_nonterminal1) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.choice_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out choice_s_nonterminal1) is
   begin
      Translate(This.choice_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   -- should never be called
   function LHS_Of_Assoc(This : in choice_s_nonterminal2) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out choice_s_nonterminal2) is
   begin
      Translate(This.choice_s_part.all);
      Translate(This.PIPE_part.all);
      Translate(This.choice_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc (This : in choice_nonterminal1) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.expression_part.all);
   end LHS_Of_Assoc;
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out choice_nonterminal1) is
   begin
      Translate(This.expression_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   --should never be called
   function LHS_Of_Assoc (This : in choice_nonterminal2) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out choice_nonterminal2) is
   begin
      Translate(This.discrete_with_range_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   --should never be called
   function LHS_Of_Assoc (This : in choice_nonterminal3) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out choice_nonterminal3) is
   begin
      Translate(This.OTHERS_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrete_with_range_nonterminal1) is
   begin
      Translate(This.name_part.all);
      Translate(This.range_constraint_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out discrete_with_range_nonterminal2) is
   begin
      Translate(This.range_sym_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out access_type_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out access_type_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out access_type_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out access_type_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out access_type_nonterminal5) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_opt_nonterminal2) is
   begin
      null;
   end Translate;

   -----------------------
   -- Search_And_Insert --
   -----------------------
   --decl section is empty, must build a new one in the calling procedure
   procedure Search_And_Insert(This : in out decl_part_nonterminal1; Id : Parseable_Token_Ptr; 
      Result : out Decl_Search_Result_Type) is
   begin
      Result := Decls_Are_Empty;
   end Search_And_Insert;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_part_nonterminal1) is
   begin
      null;
   end Translate;

   --need some access types not automatically included in trans_model.ads
   type def_id_s_nonterminal1_ptr is access all def_id_s_nonterminal1'Class;
   type name_nonterminal1_ptr is access all name_nonterminal1'Class;
   type subtype_ind_nonterminal2_ptr is access all subtype_ind_nonterminal2'Class;
   type object_subtype_def_nonterminal1_ptr is access all object_subtype_def_nonterminal1'Class;
   type object_qualifier_opt_nonterminal1_ptr is access all object_qualifier_opt_nonterminal1'Class;
   type init_opt_nonterminal1_ptr is access all init_opt_nonterminal1'Class;
   
   --construct new piece of the tree for "id : integer ;"
   function Make_Object_Decl(Id : in Parseable_Token_Ptr) return object_decl_nonterminal_ptr is
   New_Def_Id : def_id_nonterminal_ptr;
   New_Def_Id_S : def_id_s_nonterminal1_Ptr;
   New_Simple_Name : simple_name_nonterminal_ptr;
   New_Name : name_nonterminal1_ptr;
   New_Subtype_Ind : subtype_ind_nonterminal2_ptr;
   New_Object_Subtype_Def : object_subtype_def_nonterminal1_ptr;
   New_Object_Decl : object_decl_nonterminal_ptr;
   Colon_Tkn, Integer_Tkn, Semicolon_Tkn : Parseable_Token_Ptr;
   begin
      New_Object_Decl := new object_decl_nonterminal; --pointer to object we'll be returning
      
      --build from bottom up
      New_Def_Id := new def_id_nonterminal;
      New_Def_Id.Identifier_part := Id;
      New_Def_Id_S := new def_id_s_nonterminal1; 
      New_Def_Id_S.def_id_part := New_Def_Id;
      New_Object_Decl.def_id_s_part := def_id_s_nonterminal_ptr(New_Def_Id_S);
      
      --add the colon
      Colon_Tkn := new Parseable_Token;
      Colon_Tkn.Line := 0;
      Colon_Tkn.Column := 0;   --not worth it to set these to correct values
      Colon_Tkn.Token_String := new String'(":");
      Colon_Tkn.Token_Type := Colon_Token;
      New_Object_Decl.COLON_part := Colon_Tkn;
      
      --no qualifier, must be nonterminal1 since that's the empty version
      New_Object_Decl.object_qualifier_opt_part := new object_qualifier_opt_nonterminal1;
      
      --add the "Integer" keyword
      Integer_Tkn := new Parseable_Token;
      Integer_Tkn.Line := 0;
      Integer_Tkn.Column := 0;
      Integer_Tkn.Token_String := new String'("Integer");
      Integer_Tkn.Token_Type := Identifier_Token;
      New_Simple_Name := new simple_name_nonterminal;
      New_Simple_Name.IDENTIFIER_part := Integer_Tkn;
      New_Name := new name_nonterminal1;
      New_Name.simple_name_part := New_Simple_Name;
      New_Subtype_Ind := new subtype_ind_nonterminal2;
      New_Subtype_Ind.name_part := name_nonterminal_ptr(New_Name);
      New_Object_Subtype_Def := new object_subtype_def_nonterminal1;
      New_Object_Subtype_Def.subtype_ind_part := subtype_ind_nonterminal_ptr(New_Subtype_Ind);
      New_Object_Decl.object_subtype_def_part := object_subtype_def_nonterminal_ptr(New_Object_Subtype_Def);
      
      --no initialization, must be nonterminal1 since that's the empty version
      New_Object_Decl.init_opt_part := new init_opt_nonterminal1;
      
      --add the semicolon
      Semicolon_Tkn := new Parseable_Token;
      Semicolon_Tkn.Line := 0;
      Semicolon_Tkn.Column := 0;
      Semicolon_Tkn.Token_String := new String'(";");
      Semicolon_Tkn.Token_Type := Semicolon_Token;
      New_Object_Decl.SEMICOLON_part := SEMICOLON_Tkn;
      
      --all done!
      return New_Object_Decl;
      
   end Make_Object_Decl;
   
   --need new pointer types not automatically included in trans_model.ads
   type decl_item_or_body_s1_nonterminal2_ptr is access all decl_item_or_body_s1_nonterminal2'Class;
   type decl_item_or_body_nonterminal2_ptr is access all decl_item_or_body_nonterminal2'Class;
   type decl_item_nonterminal1_ptr is access all decl_item_nonterminal1'Class;
   type decl_nonterminal1_ptr is access all decl_nonterminal1'Class;
   
   -----------------------
   -- Search_And_Insert --
   -----------------------
   procedure Search_And_Insert(This : in out decl_part_nonterminal2; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type) is
   

   Search_Result : Decl_Search_Result_Type;
   New_Decl_Item_Or_Body : decl_item_or_body_nonterminal2_ptr;
   New_Decl_Item_Or_Body_s1 : decl_item_or_body_s1_nonterminal2_ptr;
   New_Decl_Item : decl_item_nonterminal1_ptr;
   New_Decl : decl_nonterminal1_ptr;
   New_Object_Decl : object_decl_nonterminal_ptr;
   begin
      Search_Result := Not_Found_In_Decls;  
      Search(This.decl_item_or_body_s1_part.all, Id, Search_Result);
      if Search_Result = Found_In_Decls then
         Result := Found_In_Decls;
      else   --replace tree with the same one plus new identifier
         New_Object_Decl := Make_Object_Decl(Id);   --build from the bottom up
         New_Decl := new decl_nonterminal1;
         New_Decl.object_decl_part := New_Object_Decl;
         New_Decl_Item := new decl_item_nonterminal1;
         New_Decl_Item.decl_part := decl_nonterminal_ptr(New_Decl);
         New_Decl_Item_Or_Body := new decl_item_or_body_nonterminal2;
         New_Decl_Item_Or_Body.decl_item_part := decl_item_nonterminal_ptr(New_Decl_Item);
         New_Decl_Item_Or_Body_s1 := new decl_item_or_body_s1_nonterminal2;
         New_Decl_Item_Or_Body_s1.decl_item_or_body_part := decl_item_or_body_nonterminal_ptr(New_Decl_Item_Or_Body);
         New_Decl_Item_Or_Body_s1.decl_item_or_body_s1_part := This.decl_item_or_body_s1_part;   --save old tree
         This.decl_item_or_body_s1_part := decl_item_or_body_s1_nonterminal_ptr(New_Decl_Item_Or_Body_S1);  --add new piece
         Result := Added_To_Decls;
      end if;
   end Search_And_Insert;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_part_nonterminal2) is
   begin
      Translate(This.decl_item_or_body_s1_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_s1_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_s1_nonterminal2) is
   begin
      null;
   end Translate;
   
   -------------
   -- Match --
   -------------

   function Match(This : in decl_item_nonterminal1; Id : Parseable_Token_Ptr) return boolean is
   begin
      return Match(This.decl_part.all, Id);
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_nonterminal1) is
   begin
      Translate(This.decl_part.all);
   end Translate;

   -------------
   -- Match --
   -------------

   function Match(This : in decl_item_nonterminal2; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_nonterminal2) is
   begin
      Translate(This.use_clause_part.all);
   end Translate;

   -------------
   -- Match --
   -------------

   function Match(This : in decl_item_nonterminal3; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_nonterminal3) is
   begin
      Translate(This.rep_spec_part.all);
   end Translate;

   -------------
   -- Match --
   -------------

   function Match(This : in decl_item_nonterminal4; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_nonterminal4) is
   begin
      Translate(This.pragma_sym_part.all);
   end Translate;

   -------------
   -- Search --
   -------------
   
   procedure Search(This : in decl_item_or_body_s1_nonterminal1; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type) is
   begin
      if Match(This.decl_item_or_body_part.all, Id) then
         Result := Found_In_Decls;
      else
         Result := Not_Found_In_Decls;
      end if;
   end Search;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_or_body_s1_nonterminal1) is
   begin
      Translate(This.decl_item_or_body_part.all);
   end Translate;

   -------------
   -- Search --
   -------------
   
   procedure Search(This : in decl_item_or_body_s1_nonterminal2; Id : Parseable_Token_Ptr;
      Result : out Decl_Search_Result_Type) is
   begin
      Search(This.decl_item_or_body_s1_part.all, Id, Result);   --check rest of decl tree
      if Result = Not_Found_In_Decls then   --check this entry
         if Match(This.decl_item_or_body_part.all, Id) then
            Result := Found_In_Decls;
         end if;
      end if;
   end Search;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_or_body_s1_nonterminal2) is
   begin
      Translate(This.decl_item_or_body_s1_part.all);
      Translate(This.decl_item_or_body_part.all);
   end Translate;

   -------------
   -- Search --
   -------------
   --points to a body, can't contain what we're looking for
   function Match(This : in decl_item_or_body_nonterminal1; Id : Parseable_Token_Ptr) return boolean is
   begin
      return false;
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_or_body_nonterminal1) is
   begin
      Translate(This.body_nt_part.all);
   end Translate;

   -------------
   -- Match --
   -------------
   --points to a decl_item
   function Match(This : in decl_item_or_body_nonterminal2; Id : Parseable_Token_Ptr) return boolean is
   begin
      return Match(This.decl_item_part.all, Id);
   end Match;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out decl_item_or_body_nonterminal2) is
   begin
      Translate(This.decl_item_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_nt_nonterminal1) is
   begin
      Translate(This.subprog_body_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_nt_nonterminal2) is
   begin
      Translate(This.pkg_body_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_nt_nonterminal3) is
   begin
      Translate(This.task_body_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_nt_nonterminal4) is
   begin
      Translate(This.prot_body_part.all);
   end Translate;

   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in name_nonterminal1) return integer is
   begin
      return Get_Arity(This.simple_name_part.all);
   end Get_Arity;
   
   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   function Is_Supported_Constant_Type(This: in name_nonterminal1) return boolean is
   begin
      return Is_Supported_Constant_Type(This.simple_name_part.all);
   end Is_Supported_Constant_Type;
   
   --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   function Is_Supported_Variable_Type(This: in name_nonterminal1) return boolean is
   begin
      return Is_Supported_Variable_Type(This.simple_name_part.all);
   end Is_Supported_Variable_Type;
   
   ------------------
   -- LHS_Of_Assoc --
   ------------------
   function LHS_Of_Assoc(This : in name_nonterminal1) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.simple_name_part.all);
   end LHS_Of_Assoc;
   
   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in name_nonterminal1) is
   begin
      Check_For_Supported_Package(This.simple_name_part.all);
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in name_nonterminal1; Line, Column : out integer) is
   begin
      Get_LC(This.simple_name_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_nonterminal1) is
   begin
      Translate(This.simple_name_part.all);   
   end Translate;
   
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in name_nonterminal2) return integer is
   begin
      return Get_Arity(This.indexed_comp_part.all);
   end Get_Arity;
   
   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   function Is_Supported_Constant_Type(This: in name_nonterminal2) return boolean is
   begin
      return false;
   end Is_Supported_Constant_Type;
   
   --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   function Is_Supported_Variable_Type(This: in name_nonterminal2) return boolean is
   begin
      return false;
   end Is_Supported_Variable_Type;
   
   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called
   function LHS_Of_Assoc(This : in name_nonterminal2) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   -- should never be called
   procedure Check_For_Supported_Package(This : in name_nonterminal2) is
   begin
      null;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in name_nonterminal2; Line, Column : out integer) is
   begin
      Get_LC(This.indexed_comp_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------
   procedure Translate (This : in out name_nonterminal2) is
   begin
      Translate(This.indexed_comp_part.all);
   end Translate;
   
   ---------------
   -- Get_Arity --
   ---------------
   --should never be called
   function Get_Arity(This : in name_nonterminal3) return integer is
   begin
      return -1;
   end Get_Arity;
   
   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   function Is_Supported_Constant_Type(This: in name_nonterminal3) return boolean is
   begin
      return false;
   end Is_Supported_Constant_Type;
   
   --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   function Is_Supported_Variable_Type(This: in name_nonterminal3) return boolean is
   begin
      return false;
   end Is_Supported_Variable_Type;
   
   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called
   function LHS_Of_Assoc(This : in name_nonterminal3) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in name_nonterminal3) is
   begin
      Check_For_Supported_Package(This.selected_comp_part.all);
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in name_nonterminal3; Line, Column : out integer) is
   begin
      Get_LC(This.selected_comp_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_nonterminal3) is
   begin
      Translate(This.selected_comp_part.all);
   end Translate;
   
   ---------------
   -- Get_Arity --
   ---------------
   --should never be called
   function Get_Arity(This : in name_nonterminal4) return integer is
   begin
      return -1;
   end Get_Arity;
   
   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   function Is_Supported_Constant_Type(This: in name_nonterminal4) return boolean is
   begin
      return false;
   end Is_Supported_Constant_Type;
   
   --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   function Is_Supported_Variable_Type(This: in name_nonterminal4) return boolean is
   begin
      return false;
   end Is_Supported_Variable_Type;
   
   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called
   function LHS_Of_Assoc(This : in name_nonterminal4) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   --should never be called
   procedure Check_For_Supported_Package(This : in name_nonterminal4) is
   begin
      null;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in name_nonterminal4; Line, Column : out integer) is
   begin
      Get_LC(This.attribute_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_nonterminal4) is
   begin
      Translate(This.attribute_part.all);
   end Translate;
   
   ---------------
   -- Get_Arity --
   ---------------
   --should never be called
   function Get_Arity(This : in name_nonterminal5) return integer is
   begin
      return -1;
   end Get_Arity;
   
   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   function Is_Supported_Constant_Type(This: in name_nonterminal5) return boolean is
   begin
      return false;
   end Is_Supported_Constant_Type;
   
   --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   function Is_Supported_Variable_Type(This: in name_nonterminal5) return boolean is
   begin
      return false;
   end Is_Supported_Variable_Type;
   
   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called
   function LHS_Of_Assoc(This : in name_nonterminal5) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   --should never be called
   procedure Check_For_Supported_Package(This : in name_nonterminal5) is
   begin
      null;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in name_nonterminal5; Line, Column : out integer) is
   begin
      Get_LC(This.operator_symbol_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_nonterminal5) is
   begin
      Translate(This.operator_symbol_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mark_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mark_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mark_nonterminal3) is
   begin
      null;
   end Translate;
   
   ---------------
   -- Get_Arity --
   ---------------
   -- A simple name has no arguments, so return 0
   function Get_Arity(This : in simple_name_nonterminal) return integer is
   begin
      return 0;
   end Get_Arity;
   
   --------------------------------
   -- Is_Supported_Constant_Type --
   --------------------------------
   --must be kept consistent with types in lego.ads
   function Is_Supported_Constant_Type(This: in simple_name_nonterminal) return boolean is
   ID_String : Unbounded_String;
   begin
      ID_String := To_Unbounded_String(To_Upper(This.identifier_part.Token_String.all));
      if ID_String = To_String("INTEGER") or
      ID_String = To_String("SENSOR_PORT") or
      ID_String = To_String("OUTPUT_PORT") or
      ID_String = To_String("CONFIGURATION") or
      ID_String = To_String("OUTPUT_MODE") or
      ID_String = To_String("OUTPUT_DIRECTION") or
      ID_String = To_String("SENSOR_TYPE") or
      ID_String = To_String("POWER_TYPE") or
      ID_String = To_String("TRANSMITTER_POWER_SETTING") or
      ID_String = To_String("SOUND") or
      ID_String = To_String("MESSAGE") or
      ID_String = To_String("HOUR") or
      ID_String = To_String("MINUTE") or
      ID_String = To_String("DATALOG_RANGE") or
      ID_String = To_String("DURATION") or
      ID_String = To_String("FREQUENCY") or
      ID_String = To_String("SENSOR_VALUE") or
      ID_String = To_String("SENSOR_MODE") or
      ID_String = To_String("TIMER") or
      ID_String = To_String("WATCH_VALUE_IN_MINUTES") then
         return true;
      else
         return false;
      end if;
   end Is_Supported_Constant_Type;
   
    --------------------------------
   -- Is_Supported_Variable_Type --
   --------------------------------
   -- currently integers only
   function Is_Supported_Variable_Type(This: in simple_name_nonterminal) return boolean is
   ID_String : Unbounded_String;
   begin
      ID_String := To_Unbounded_String(To_Upper(This.identifier_part.Token_String.all));
      if ID_String = To_String("INTEGER") or
      ID_String = To_String("SENSOR_PORT") or
      ID_String = To_String("OUTPUT_PORT") or
      ID_String = To_String("CONFIGURATION") or
      ID_String = To_String("OUTPUT_MODE") or
      ID_String = To_String("OUTPUT_DIRECTION") or
      ID_String = To_String("SENSOR_TYPE") or
      ID_String = To_String("POWER_TYPE") or
      ID_String = To_String("TRANSMITTER_POWER_SETTING") or
      ID_String = To_String("SOUND") or
      ID_String = To_String("MESSAGE") or
      ID_String = To_String("HOUR") or
      ID_String = To_String("MINUTE") or
      ID_String = To_String("DATALOG_RANGE") or
      ID_String = To_String("DURATION") or
      ID_String = To_String("FREQUENCY") or
      ID_String = To_String("SENSOR_VALUE") or
      ID_String = To_String("SENSOR_MODE") or
      ID_String = To_String("TIMER") or
      ID_String = To_String("WATCH_VALUE_IN_MINUTES") then
         return true;
      else
         return false;
      end if;
   end Is_Supported_Variable_Type;

   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in simple_name_nonterminal) is
   begin
      Check_For_Supported_Package(This.IDENTIFIER_part.all);
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in simple_name_nonterminal; Line, Column : out integer) is
   begin
      Get_LC(This.identifier_part.all, Line, Column);
   end Get_LC;
   
   ------------------
   -- LHS_Of_Assoc --
   ------------------
   function LHS_Of_Assoc(This : in simple_name_nonterminal) return Unbounded_String is
   begin
      return To_Unbounded_String(This.identifier_part.Token_String.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_name_nonterminal) is
   begin
      Translate(This.identifier_part.all);
   end Translate;

   ---------------------
   -- Get_Simple_Name --
   ---------------------

   function Get_Simple_Name (This : in compound_name_nonterminal1) return Parseable_Token_Ptr is
   begin
      return(This.simple_name_part.Identifier_part);
   end Get_Simple_Name;
   
   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in compound_name_nonterminal1) is
   begin
      Check_For_Supported_Package(This.simple_name_part.all);
   end Check_For_Supported_Package;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compound_name_nonterminal1) is
   begin
      Translate(This.simple_name_part.all);
   end Translate;

   ---------------------
   -- Get_Simple_Name --
   ---------------------

   function Get_Simple_Name (This : in compound_name_nonterminal2) return Parseable_Token_Ptr is
   begin
      return(This.simple_name_part.Identifier_part);
   end Get_Simple_Name;
   
   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in compound_name_nonterminal2) is
   begin
      Check_For_Supported_Package(This.compound_name_part.all);
      Check_For_Supported_Package(This.simple_name_part.all);
   end Check_For_Supported_Package;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compound_name_nonterminal2) is
   Line, Column: Integer;
   begin
      Line := This.DOT_part.line;
      Column := This.DOT_part.column;
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " Ada compound naming not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
      --more tree here
   end Translate;

   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in c_name_list_nonterminal1) is
   begin
      Check_For_Supported_Package(This.compound_name_part.all);
   end Check_For_Supported_Package;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out c_name_list_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------------------------
   -- Check_For_Supported_Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in c_name_list_nonterminal2) is
   begin
      Check_For_Supported_Package(This.c_name_list_part.all);
      Check_For_Supported_Package(This.compound_name_part.all);
   end Check_For_Supported_Package;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out c_name_list_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out used_char_nonterminal) is
   begin
      Translate(This.char_lit_part.all);
   end Translate;

   ------------
   -- Get_LC --
   ------------
   procedure Get_LC (This : in operator_symbol_nonterminal; Line, Column : out integer) is
   begin
      Get_LC(This.char_string_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out operator_symbol_nonterminal) is
   begin
      Translate(This.char_string_part.all);
   end Translate;

   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in indexed_comp_nonterminal) return integer is
   begin
      return Get_Arity(This.value_s_part.all);
   end Get_Arity;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in indexed_comp_nonterminal; Line, Column : out integer) is
   begin
      Get_LC(This.name_part.all, Line, Column);
   end Get_LC;
   
   procedure Put_Args_In_Right_Positions(This : in out indexed_comp_nonterminal) is
   Val, Val_t : Value_nonterminal_ptr;
   Chase : Value_s_nonterminal_ptr;
   Arity : Integer := Get_Arity(This);
   As_Called, As_Declared : Unbounded_String;
   found : Boolean := false;
   Line, Column : Integer;
   begin
      for i in 1..Arity loop
         Val := Find_Nth_Argument(This.value_s_part.all, i, Arity);
         
         if Is_Named_Association(Val.all) then
            As_Called := To_Unbounded_String(To_Upper(To_String(LHS_Of_Assoc(Val.all))));
            As_Declared := To_Unbounded_String(To_Upper(To_String(Name_Of_Formal_As_Declared(This => This, 
               i => i, Arity => Arity))));
            if  As_Called /= As_Declared then
               --find the correct argument in the value list
               for j in (i+1)..Arity loop
                  Val_t := Find_Nth_Argument(This.value_s_part.all, j, Arity);
                  As_Called := To_Unbounded_String(To_Upper(To_String(LHS_Of_Assoc(Val_t.all))));
                  --when found, swap it with the one in the current (incorrect) position
                  if As_Called = As_Declared then
                     --set ith value to val_t (the correct one)
                     Chase := This.value_s_part;
                     for k in 1..(Arity-i) loop
                        Chase := Get_Value_S_Part(Chase.all);
                     end loop;
                     Set_Value_Part(Chase.all,Val_t);
                     --set jth value to val (the incorrect one, will be fixed in succeeding iterations)
                     Chase := This.value_s_part;
                     for k in 1..(Arity-j) loop
                        Chase := Get_Value_S_Part(Chase.all);
                     end loop;
                     Set_Value_Part(Chase.all,Val);
                     found := true; 
                     exit;   
                  end if;
               end loop;
                 
               --should always find the indicated function/proc, something is wrong
               if not found then
                  Get_LC(This, Line, Column);
                  Error_Msg_Prefix(Line, Column);
                  put(File => Standard_Error, Item => " no match for formal parameter ");                   
                  put(File => Standard_Error, Item => To_String(As_Declared));
                  new_line(File => Standard_Error);
                  put(File => Standard_Error, Item => "Did you forget to run your program through AdaGide?");
                  new_line(File => Standard_Error);
                  raise Parse_Error_Exception;
               end if;
            end if;
         end if;
      end loop;
   end Put_Args_In_Right_Positions;
   
   ---------------
   -- Translate --
   ---------------
   --procedure or function call:  name '(' values ')'
   procedure Translate (This : in out indexed_comp_nonterminal) is
   Arity : Integer := Get_Arity(This);
   Line, Column : Integer;
   Info_Rec : Lego_Builtins.Procedure_Info_Record_Type;
   begin
      --do this to check for undefined/misspelled procedure
      Get_LC(This, Line, Column);
      Info_Rec := Get_Proc_Info(This => To_String(LHS_Of_Assoc(This.name_part.all)), 
         Arity => Arity, Line => Line, Column => Column);  
      if Arity > 1 then
         Put_Args_In_Right_Positions(This);   
      end if;
      Translate(This.name_part.all);
      Translate(This.L_PAREN_part.all);
      Translate(This.value_s_part.all);
      Translate(This.R_PAREN_part.all);
      end Translate;

   -----------------------
   -- Find Nth Argument --
   -----------------------
   function Find_Nth_Argument(This : in value_s_nonterminal1; Target, Arity : in integer)
      return value_nonterminal_ptr is
   begin
      return Find_Nth_Argument_From_Right(This, Arity-Target+1, 1);
   end Find_Nth_Argument;
   
   ----------------------------------
   -- Find Nth Argument_From_Right --
   ----------------------------------
   --defined this way because of left-recursive definition of the nonterminal
   function Find_Nth_Argument_From_Right(This : in value_s_nonterminal1; Target, Current : in integer)
      return value_nonterminal_ptr is
   begin
      return This.value_part;
   end Find_Nth_Argument_From_Right;
   
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in value_s_nonterminal1) return integer is
   begin
      return 1;
   end Get_Arity;
   
   ----------------------
   -- Get_Value_S_Part --
   ----------------------
   -- should never be called
   function Get_Value_S_Part(This : in value_s_nonterminal1) return value_s_nonterminal_ptr is
   begin
      return null;
   end Get_Value_S_Part;
   
   --------------------
   -- Set_Value_Part --
   --------------------
   procedure Set_Value_Part(This : in out value_s_nonterminal1; Val : in value_nonterminal_ptr) is
   begin
      This.value_part := Val;
   end;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out value_s_nonterminal1) is
   begin
      Translate(This.value_part.all);
   end Translate;
   
   -----------------------
   -- Find Nth Argument --
   -----------------------
   function Find_Nth_Argument(This : in value_s_nonterminal2; Target, Arity : in integer)
      return value_nonterminal_ptr is
   begin
      return Find_Nth_Argument_From_Right(This, Arity-Target+1, 1);
   end Find_Nth_Argument;
   
   ----------------------------------
   -- Find Nth Argument_From_Right --
   ----------------------------------
   --defined this way because of left-recursive definition of the nonterminal
   function Find_Nth_Argument_From_Right(This : in value_s_nonterminal2; Target, Current : in integer)
      return value_nonterminal_ptr is
   begin
      if Target = Current then
         return This.value_part;
      else
         return Find_Nth_Argument_From_Right(This.value_s_part.all, Target, Current+1);
      end if;
   end Find_Nth_Argument_From_Right;
   
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in value_s_nonterminal2) return integer is
   begin
      return Get_Arity(This.value_s_part.all) + 1;
   end Get_Arity;
   
   ----------------------
   -- Get_Value_S_Part --
   ----------------------
   function Get_Value_S_Part(This : in value_s_nonterminal2) return value_s_nonterminal_ptr is
   begin
      return This.value_s_part;
   end Get_Value_S_Part;
   
   --------------------
   -- Set_Value_Part --
   --------------------
   procedure Set_Value_Part(This : in out value_s_nonterminal2; Val : in value_nonterminal_ptr) is
   begin
      This.value_part := Val;
   end;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out value_s_nonterminal2) is
   begin
      Translate(This.value_s_part.all);
      Translate(This.COMMA_part.all);
      Translate(This.value_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   --should never be called
   function LHS_Of_Assoc(This : in value_nonterminal1) return Unbounded_String is
   begin
      return(To_Unbounded_String(""));
   end LHS_Of_Assoc;
   
   --------------------------
   -- Is_Named_Association --
   --------------------------
   function Is_Named_Association(This : in value_nonterminal1) return boolean is
   begin
      return false;
   end Is_Named_Association;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out value_nonterminal1) is
   begin
      Translate(This.expression_part.all); 
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc(This : in value_nonterminal2) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.comp_assoc_part.all);
   end LHS_Of_Assoc;
   
   --------------------------
   -- Is_Named_Association --
   --------------------------
   function Is_Named_Association(This : in value_nonterminal2) return boolean is
   begin
      return true;
   end Is_Named_Association;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out value_nonterminal2) is
   begin
      Translate(This.comp_assoc_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   --should never be called
   function LHS_Of_Assoc(This : in value_nonterminal3) return Unbounded_String is
   begin
      return(To_Unbounded_String(""));
   end LHS_Of_Assoc;
   
   --------------------------
   -- Is_Named_Association --
   --------------------------
   function Is_Named_Association(This : in value_nonterminal3) return boolean is
   begin
      return false;
   end Is_Named_Association;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out value_nonterminal3) is
   begin
      Translate(This.discrete_with_range_part.all);
   end Translate;

   ---------------------------------
   -- Check For Supported Package --
   ---------------------------------
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal1) is
   Line : Integer := This.simple_name_part.IDENTIFIER_part.Line;
   Column : Integer := This.simple_name_part.IDENTIFIER_part.Column;
   --Currently, Ada/Mindstorms doesn't support compound packages      
   --Would be nice at some point to reconstruct the actual offending package name
   begin
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " This package is not supported by Ada/Mindstorms.");
      new_line(File => Standard_Error);
      put(File => Standard_Error, Item => "Currently, only the package 'lego' can be used here.");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in selected_comp_nonterminal1; Line, Column : out integer) is
   begin
      Get_LC(This.name_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out selected_comp_nonterminal1) is
   begin
      Translate(This.name_part.all);
      Translate(This.DOT_part.all);
      --more tree here
   end Translate;

   ---------------------------------
   -- Check For Supported Package --
   ---------------------------------
   -- should never be called
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal2) is
   begin
     null;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in selected_comp_nonterminal2; Line, Column : out integer) is
   begin
      Get_LC(This.name_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out selected_comp_nonterminal2) is
   begin
      Translate(This.name_part.all);
      Translate(This.DOT_part.all);
      --more tree here
   end Translate;

   ---------------------------------
   -- Check For Supported Package --
   ---------------------------------
   -- should never be called
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal3) is
   begin
     null;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in selected_comp_nonterminal3; Line, Column : out integer) is
   begin
      Get_LC(This.name_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out selected_comp_nonterminal3) is
   begin
      Translate(This.name_part.all);
      Translate(This.DOT_part.all);
      --more tree here
   end Translate;

   ---------------------------------
   -- Check For Supported Package --
   ---------------------------------
   -- should never be called
   procedure Check_For_Supported_Package(This : in selected_comp_nonterminal4) is
   begin
     null;
   end Check_For_Supported_Package;
   
   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in selected_comp_nonterminal4; Line, Column : out integer) is
   begin
      Get_LC(This.name_part.all, Line, Column);
   end Get_LC;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out selected_comp_nonterminal4) is
   begin
      Translate(This.name_part.all);
      Translate(This.DOT_part.all);
      --more tree here
   end Translate;

   ------------
   -- Get_LC --
   ------------
   procedure Get_LC(This : in attribute_nonterminal; Line, Column : out integer) is
   begin
      Get_LC(This.name_part.all, Line, Column);
   end Get_LC;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out attribute_nonterminal) is
   begin
      Translate(This.name_part.all);
      Translate(This.TICK_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out attribute_id_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out attribute_id_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out attribute_id_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out attribute_id_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out literal_nonterminal1) is
   begin
      Translate(This.numeric_lit_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out literal_nonterminal2) is
   begin
      Translate(This.used_char_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out literal_nonterminal3) is
   begin
      Translate(This.NULL_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out aggregate_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out aggregate_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out aggregate_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out aggregate_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out aggregate_nonterminal5) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out value_s_2_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out value_s_2_nonterminal2) is
   begin
      null;
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc(This : in comp_assoc_nonterminal) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.choice_s_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------
   --formal => actual
   procedure Translate (This : in out comp_assoc_nonterminal) is
   begin
   --ignore the left hand argument and the arrow, previous code
   --should have fixed the tree for named association
      Translate(This.expression_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc(This : in expression_nonterminal1) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.relation_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out expression_nonterminal1) is
   begin
      Translate(This.relation_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   --should never be called
   function LHS_Of_Assoc(This : in expression_nonterminal2) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out expression_nonterminal2) is
   begin
      put_with_space("(");
      Translate(This.expression_part.all);
      put_with_space(")");
      Translate(This.logical_part.all);
      put_with_space("(");
      Translate(This.relation_part.all);
      put_with_space(")");
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   --should never be called
   function LHS_Of_Assoc(This : in expression_nonterminal3) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out expression_nonterminal3) is
   begin
      Translate(This.expression_part.all);
      Translate(This.short_circuit_part.all);
      Translate(This.relation_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out logical_nonterminal1) is
   begin
      Translate(This.AND_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out logical_nonterminal2) is
   begin
      Translate(This.OR_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out logical_nonterminal3) is
   begin
      Translate(This.XOR_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out short_circuit_nonterminal1) is
   Line : Integer := This.AND_part.Line;
   Column : Integer := This.AND_part.Column;
   begin
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " Ada short circuits not supported.");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out short_circuit_nonterminal2) is
   Line : Integer := This.OR_part.Line;
   Column : Integer := This.OR_part.Column;
   begin
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " Ada short circuits not supported.");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc(This: in relation_nonterminal1) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.simple_expression_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relation_nonterminal1) is
   begin
      Translate(This.simple_expression_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   -- should never be called --
   function LHS_Of_Assoc(This: in relation_nonterminal2) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relation_nonterminal2) is
   begin
      Translate(This.simple_expression_part1.all);
      Translate(This.relational_part.all);
      Translate(This.simple_expression_part2.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   -- should never be called --
   function LHS_Of_Assoc(This: in relation_nonterminal3) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relation_nonterminal3) is
   begin
      Translate(This.simple_expression_part.all);
      Translate(This.membership_part.all);
      Translate(This.range_sym_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   -- should never be called --
   function LHS_Of_Assoc(This: in relation_nonterminal4) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relation_nonterminal4) is
   begin
      Translate(This.simple_expression_part.all);
      Translate(This.membership_part.all);
      Translate(This.name_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relational_nonterminal1) is
   begin
      Translate(This.EQ_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relational_nonterminal2) is
   begin
      Translate(This.NE_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relational_nonterminal3) is
   begin
      Translate(This.LT_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relational_nonterminal4) is
   begin
      Translate(This.LT_EQ_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relational_nonterminal5) is
   begin
      Translate(This.GT_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out relational_nonterminal6) is
   begin
      Translate(This.GE_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out membership_nonterminal1) is
   begin
      Translate(This.IN_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out membership_nonterminal2) is
   begin
      Translate(This.NOT_part.all);
      Translate(This.IN_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   -- should never be called
   function LHS_Of_Assoc(This : in simple_expression_nonterminal1) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_expression_nonterminal1) is
   begin
      Translate(This.unary_part.all);
      Translate(This.term_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc(This : in simple_expression_nonterminal2) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.term_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_expression_nonterminal2) is
   begin
      Translate(This.term_part.all);
   end Translate;

   ------------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   -- should never be called
   function LHS_Of_Assoc(This : in simple_expression_nonterminal3) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_expression_nonterminal3) is
   begin
      Translate(This.simple_expression_part.all);
      Translate(This.adding_part.all);
      Translate(This.term_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unary_nonterminal1) is
   Line : Integer := This.PLUS_part.line;
   Column : Integer := This.PLUS_part.column;
   begin
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => ", unary plus not supported.");
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unary_nonterminal2) is
   begin
      Translate(This.MINUS_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out adding_nonterminal1) is
   begin
      Translate(This.PLUS_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out adding_nonterminal2) is
   begin
      Translate(This.MINUS_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out adding_nonterminal3) is
   begin
      Translate(This.CONCAT_part.all);
   end Translate;

   -----------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   function LHS_Of_Assoc(This : in term_nonterminal1) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.factor_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out term_nonterminal1) is
   begin
      Translate(This.factor_part.all);
   end Translate;

   -----------------------------
   -- LHS_Of_Assoc --
   ------------------------------
   -- should never be called
   function LHS_Of_Assoc(This : in term_nonterminal2) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out term_nonterminal2) is
   begin
      Translate(This.term_part.all);
      Translate(This.multiplying_part.all);
      Translate(This.factor_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out multiplying_nonterminal1) is
   begin
      Translate(This.STAR_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out multiplying_nonterminal2) is
   begin
      Translate(This.SLASH_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out multiplying_nonterminal3) is
   begin
      Translate(This.MOD_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out multiplying_nonterminal4) is
   begin
      Translate(This.REM_part.all);
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   function LHS_Of_Assoc (This : in factor_nonterminal1) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.primary_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out factor_nonterminal1) is
   begin
      Translate(This.primary_part.all);
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called
   function LHS_Of_Assoc (This : in factor_nonterminal2) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out factor_nonterminal2) is
   begin
      Translate(This.NOT_part.all);
      Translate(This.primary_part.all);
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called
   function LHS_Of_Assoc (This : in factor_nonterminal3) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out factor_nonterminal3) is
   begin
      Translate(This.ABS_part.all);   --ABS in Ada becomes a function call in NQC
      put("(");
      Translate(This.primary_part.all);
      put(")");
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called
   function LHS_Of_Assoc (This : in factor_nonterminal4) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out factor_nonterminal4) is
   begin
      Translate(This.primary_part1.all);
      Translate(This.EXPONENT_part.all);
      Translate(This.primary_part2.all);
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called --
   function LHS_Of_Assoc (This : in primary_nonterminal1) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out primary_nonterminal1) is
   begin
      Translate(This.literal_part.all);
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   function LHS_Of_Assoc (This : in primary_nonterminal2) return Unbounded_String is
   begin
      return LHS_Of_Assoc(This.name_part.all);
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out primary_nonterminal2) is
   begin
      Translate(This.name_part.all);
      --Ada doesn't have different syntax for integers and 0-arity functions that return
      --integers, but NQC does [foo vs foo()]
      if Get_Arity(This.name_part.all) = 0 and Is_In_Proc_Table(This => To_String(LHS_Of_Assoc(This.name_part.all)), 
      Arity => 0 ) then
         put_with_space("()"); 
      end if;
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called --
   function LHS_Of_Assoc (This : in primary_nonterminal3) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out primary_nonterminal3) is
   begin
      Translate(This.allocator_part.all);
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called --
   function LHS_Of_Assoc (This : in primary_nonterminal4) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out primary_nonterminal4) is
   begin
      Translate(This.qualified_part.all);
   end Translate;

   ------------------
   -- LHS_Of_Assoc --
   ------------------
   -- should never be called --
   function LHS_Of_Assoc (This : in primary_nonterminal5) return Unbounded_String is
   begin
      return To_Unbounded_String("");
   end LHS_Of_Assoc;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out primary_nonterminal5) is
   begin
      Translate(This.parenthesized_primary_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out parenthesized_primary_nonterminal1) is
   begin
      Translate(This.aggregate_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out parenthesized_primary_nonterminal2) is
   begin
      Translate(This.L_PAREN_part.all);
      Translate(This.expression_part.all);
      Translate(This.R_PAREN_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out qualified_nonterminal) is
   begin
      Translate(This.name_part.all);
      Translate(This.TICK_part.all);
      Translate(This.parenthesized_primary_part.all);
      
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out allocator_nonterminal1) is
   begin
      Translate(This.NEW_part.all);
      Translate(This.name_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out allocator_nonterminal2) is
   begin
      Translate(This.NEW_part.all);
      Translate(This.qualified_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in statement_s_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_part.all, Decls);
   end Mark_For_Loops;
                        
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out statement_s_nonterminal1) is
   begin
      Translate(This.statement_part.all);
      my_new_line;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in statement_s_nonterminal2;
   Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_s_part.all, Decls);
      Mark_For_Loops(This.statement_part.all, Decls);
   end Mark_For_Loops;
         
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out statement_s_nonterminal2) is
   begin
      Translate(This.statement_s_part.all);
      Translate(This.statement_part.all);
   end Translate;
            
   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in statement_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.unlabeled_part.all, Decls);
   end Mark_For_Loops;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out statement_nonterminal1) is
   begin
      Translate(This.unlabeled_part.all);
   end Translate;
   
   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in statement_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out statement_nonterminal2) is
   begin
      Translate(This.label_part.all);
      Translate(This.statement_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in unlabeled_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.simple_stmt_part.all, Decls);
   end Mark_For_Loops;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unlabeled_nonterminal1) is
   begin
      Translate(This.simple_stmt_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in unlabeled_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.compound_stmt_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unlabeled_nonterminal2) is
   begin
      Translate(This.compound_stmt_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in unlabeled_nonterminal3;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      null;
   end Mark_For_Loops;
      
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unlabeled_nonterminal3) is
   begin
      Translate(This.pragma_sym_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   --no need to use dispatching, no simple statements can be for loops
   procedure Mark_For_Loops (This : in simple_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      null;
   end Mark_For_Loops;
      
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal1) is
   begin
      Translate(This.null_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal2) is
   begin
      Translate(This.assign_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal3) is
   begin
      Translate(This.exit_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal4) is
   begin
      Translate(This.return_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal5) is
   begin
      Translate(This.goto_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal6) is
   begin
      Translate(This.procedure_call_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal7) is
   begin
      Translate(This.delay_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal8) is
   begin
      Translate(This.abort_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal9) is
   begin
      Translate(This.raise_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal10) is
   begin
      Translate(This.code_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out simple_stmt_nonterminal11) is
   begin
      Translate(This.requeue_stmt_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in compound_stmt_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.if_stmt_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------
   -- if cond_clause_s else_opt END IF ;
   procedure Translate (This : in out compound_stmt_nonterminal1) is
   begin
      Translate(This.if_stmt_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in compound_stmt_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.case_stmt_part.all, Decls); 
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------
   procedure Translate (This : in out compound_stmt_nonterminal2) is
   begin
      Translate(This.case_stmt_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in compound_stmt_nonterminal3;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.loop_stmt_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compound_stmt_nonterminal3) is
   begin
      Translate(This.loop_stmt_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in compound_stmt_nonterminal4;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.block_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compound_stmt_nonterminal4) is
   begin
      Translate(This.block_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in compound_stmt_nonterminal5;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.accept_stmt_part.all, Decls);
   end Mark_For_Loops;
      
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compound_stmt_nonterminal5) is
   begin
      Translate(This.accept_stmt_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in compound_stmt_nonterminal6;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.select_stmt_part.all, Decls);
   end Mark_For_Loops;
               
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compound_stmt_nonterminal6) is
   begin
      Translate(This.select_stmt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------
   procedure Translate (This : in out label_nonterminal) is
   begin
      Translate(This.LT_LT_part.all);   --terminates translation
      Translate(This.identifier_part.all);
      Translate(This.GT_GT_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out null_stmt_nonterminal) is
   begin
      Translate(This.NULL_part.all);
      --Don't translate the semicolon, so that nulls will be ignored.
      --A single semicolon is not legal in NQC
      --Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out assign_stmt_nonterminal) is
   begin
      Translate(This.name_part.all);
      Translate(This.ASSIGNMENT_part.all);
      Translate(This.expression_part.all);
      Translate(This.SEMICOLON_part.all);
      my_new_line;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in if_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.cond_clause_s_part.all, Decls);
      Mark_For_Loops(This.else_opt_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------
   -- if cond_clause_s else_opt END IF ;
   procedure Translate (This : in out if_stmt_nonterminal) is
   begin
      Translate(This.IF_part1.all);
      Translate(This.cond_clause_s_part.all);
      Translate(This.else_opt_part.all);
      --ignore END IF ;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in cond_clause_s_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.cond_clause_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out cond_clause_s_nonterminal1) is
   begin
      Translate(This.cond_clause_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in cond_clause_s_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.cond_clause_s_part.all, Decls);
      Mark_For_Loops(This.cond_clause_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out cond_clause_s_nonterminal2) is
   begin
      Translate(This.cond_clause_s_part.all);
      Translate(This.ELSIF_part.all);   
      Translate(This.cond_clause_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in cond_clause_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_s_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out cond_clause_nonterminal) is
   begin
      Translate(This.cond_part_part.all);
      my_new_line;
      put("{");
      Inc_Indent;
      my_new_line;
      Translate(This.statement_s_part.all);
      Dec_Indent;
      my_new_line;
      put("}");
      my_new_line;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out cond_part_nonterminal) is
   begin
      put_with_space("(");
      Translate(This.condition_part.all);
      put_with_space(")");
      --ignore THEN keyword
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out condition_nonterminal) is
   begin
      Translate(This.expression_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in else_opt_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      null;
   end Mark_For_Loops;
      
   ---------------
   -- Translate --
   ---------------
   --could be empty, that's fine
   procedure Translate (This : in out else_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in else_opt_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_s_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out else_opt_nonterminal2) is
   begin
      Translate(This.ELSE_part.all);
      my_new_line;
      put("{");
      Inc_Indent;
      my_new_line;
      Translate(This.statement_s_part.all);
      Dec_Indent;
      my_new_line;
      put("}");
      my_new_line;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   
   procedure Mark_For_Loops (This : in case_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.alternative_s_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------
   
   procedure Translate (This : in out case_stmt_nonterminal) is
   begin
      Translate(This.case_hdr_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out case_hdr_nonterminal) is
   begin
      Translate(This.CASE_part.all);   
      Translate(This.expression_part.all);
      Translate(This.IS_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   
   procedure Mark_For_Loops (This : in alternative_s_nonterminal1;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      null;
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out alternative_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   
   procedure Mark_For_Loops (This : in alternative_s_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.alternative_s_part.all, Decls);
      Mark_For_Loops(This.alternative_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out alternative_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   
   procedure Mark_For_Loops (This : in alternative_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_s_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out alternative_nonterminal) is
   begin
      null;
   end Translate;
  
   --------------------
   -- Mark_For_Loops --
   --------------------
   --need some access types not automatically included in trans_model.ads
   type decl_part_nonterminal2_ptr is access all decl_part_nonterminal2'Class;
   type decl_item_or_body_s1_nonterminal1_ptr is access all decl_item_or_body_s1_nonterminal1'Class;

   procedure Mark_For_Loops(This : in loop_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   Range_Identifier : Parseable_Token_Ptr;
   Stop_Identifier : Parseable_Token_Ptr;
   Decl_Search_Result : Decl_Search_Result_Type;
   Line, Column : Integer;
   New_Decl : decl_nonterminal1_ptr;
   New_Decl_Item : decl_item_nonterminal1_ptr;
   New_Decl_Item_Or_Body : decl_item_or_body_nonterminal2_ptr;
   New_Decl_Item_Or_Body_S1 : decl_item_or_body_s1_nonterminal1_ptr;
   New_Decl_Part : decl_part_nonterminal2_ptr;
   
   begin
      if Is_For_Loop(This.Iteration_part.all) then
   
         --1) check identifier in iteration_part
         --2) if it's previously declared in scope, print error message and terminate
         --3) otherwise, generate another identifier by appending "_stop" to it
         --4) if that's previously declared in scope, print error message and terminate
         --5) otherwise, add both identifiers to the declaration
         --6) continue marking for loops in case of nesting
   
         Range_Identifier := Get_Range_Identifier(This.iteration_part.all);
         Search_And_Insert(Decls.all, Range_Identifier, Decl_Search_Result);
         if Decl_Search_Result = Found_In_Decls then
            Line := This.SEMICOLON_Part.line;
            Column := This.SEMICOLON_Part.column;
            Error_Msg_Prefix(Line, Column);
            put(File => Standard_Error, Item => " FOR loop identifier ");
            put(File => Standard_Error, Item => Range_Identifier.Token_String.all);
            put(File => Standard_Error, Item => " previously declared in this procedure.");
            new_line(File => Standard_Error);
            put(File => Standard_Error, Item => "Not permitted in Ada/Mindstorms.  Give identifier a different");
            put_line(File => Standard_Error, Item => "name and recompile.");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
         elsif Decl_Search_Result = Decls_Are_Empty then   --must build a new decl section
            New_Decl := new decl_nonterminal1;
            New_Decl.object_decl_part := Make_Object_Decl(Range_Identifier);
            New_Decl_Item := new decl_item_nonterminal1;
            New_Decl_Item.decl_part := decl_nonterminal_ptr(New_Decl);
            New_Decl_Item_Or_Body := new decl_item_or_body_nonterminal2;
            New_Decl_Item_Or_Body.decl_item_part := decl_item_nonterminal_ptr(New_Decl_Item);
            New_Decl_Item_Or_Body_S1 := new decl_item_or_body_s1_nonterminal1;
            New_Decl_Item_Or_Body_S1.decl_item_or_body_part := decl_item_or_body_nonterminal_ptr(New_Decl_Item_Or_Body);
            New_Decl_Part := new decl_part_nonterminal2;
            New_Decl_Part.decl_item_or_body_s1_part := decl_item_or_body_s1_nonterminal_ptr(New_Decl_Item_Or_Body_S1);
            Decls := decl_part_nonterminal_ptr(New_Decl_Part);
         end if;   --processing range identifier
         
         Stop_Identifier := new Parseable_Token;
         Stop_Identifier.Line := 0;   --not worth it to set these to their correct values
         Stop_Identifier.Column := 0;
         Stop_Identifier.Token_String := new String'(Range_Identifier.Token_String.all & "_stop");
         Stop_Identifier.Token_Type := IDENTIFIER_Token;
         Search_And_Insert(Decls.all, Stop_Identifier, Decl_Search_Result);
         if Decl_Search_Result = Found_In_Decls then
            Line := This.SEMICOLON_Part.line;
            Column := This.SEMICOLON_Part.column;
            Error_Msg_Prefix(Line, Column);
            put(File => Standard_Error, Item => " Internally generated identifier for FOR loop (");
            put(File => Standard_Error, Item => Stop_Identifier.Token_String.all);
            put(File => Standard_Error, Item => ") conflicts with a variable you've declared earlier in your program.");
            new_line(File => Standard_Error);
            put(File => Standard_Error, Item => "Change the name of your loop control variable and recompile.");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
         end if;   --Stop_Identifier previously declared
         Mark_For_Loops(This.basic_loop_part.all, Decls);   --check for nesting
      else   --this is not a for loop, but might be one inside it, continue checking
         Mark_For_Loops(This.basic_loop_part.all, Decls);
      end if;
   end Mark_For_Loops;

   ---------------
   -- Translate --
   ---------------
  --label opt iteration basic_loop id_opt ;
   procedure Translate (This : in out loop_stmt_nonterminal) is
   exp1, exp2, Start_Exp, Stop_Exp : Simple_Expression_Nonterminal_Ptr;
   Loop_Control_Var, Comp_Op_String, Change_Op_String : Unbounded_String;
   begin
      --ignore optional label
      if Is_While_Loop(This.iteration_part.all) then
         Translate(This.iteration_part.all);
         my_new_line;
         put("{");
         Inc_Indent;
         my_new_line;
         Translate_Statements(This.basic_loop_part.all);
         Dec_Indent;
         my_new_line;
         put("}");
         my_new_line;
      elsif Is_For_Loop(This.iteration_part.all) then
           
         --FOR I IN A..B LOOP stmts END LOOP becomes
         --I = A;   (decls for these previously added)
         --I_stop = B;
         --while I <= I_stop
         --{
         --   stmts
         --   I = I+1;
         --}
         --(with the obvious changes for reverse loops)
         
         exp1 := Get_Left_Expression(This.iteration_part.all);
         exp2 := Get_Right_Expression(This.iteration_part.all);
         Loop_Control_Var := To_Unbounded_String(To_Upper(Get_Range_Identifier(This.iteration_part.all).Token_String.all));
         Start_Exp := exp1;
         Stop_Exp := exp2;
         Comp_Op_String := To_Unbounded_String("<=");
         Change_Op_String := To_Unbounded_String("+");
         if Is_Reverse_For_Loop(This.iteration_part.all) then
            Start_Exp := exp2;
            Stop_Exp := exp1;
            Comp_Op_String := To_Unbounded_String(">=");
            Change_Op_String := To_Unbounded_String("-");
         end if;
         
         my_new_line; 
         put_with_space(Loop_Control_Var);
         put_with_space("=");
         Translate(Start_Exp.all);
         put(";");
         my_new_line;
         put_with_space(Loop_Control_Var & "_STOP");
         put_with_space("=");
         Translate(Stop_Exp.all);
         put(";");
         my_new_line;
         put_with_space("while (");
         put_with_space(Loop_Control_Var);
         put_with_space(Comp_Op_String);
         put_with_space(Loop_Control_Var & "_STOP");
         put_with_space(")");
         my_new_line;
         put("{");
         Inc_Indent;
         my_new_line;
         Translate_Statements(This.basic_loop_part.all);
         put_with_space(Loop_Control_Var);
         put_with_space("=");
         put_with_space(Loop_Control_Var);
         put_with_space(Change_Op_String);
         put_with_space("1;");
         Dec_Indent;
         my_new_line;
         put("}");
         my_new_line;
      else   --basic loop
         put_with_space("while (true)");
         my_new_line;
         put("{");
         Inc_Indent;
         my_new_line;
         Translate_Statements(This.basic_loop_part.all);
         Dec_Indent;
         my_new_line;
         put("}");
         my_new_line;
      end if;
      --ignore optional identifier and ';'
   end Translate;

   ---------------
   -- Translate --
   ---------------
   --could be empty, that's OK
   procedure Translate (This : in out label_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------
   --labels ignored
   procedure Translate (This : in out label_opt_nonterminal2) is
   begin
      null;
   end Translate;
   
   -------------------------
   -- Is_Reverse_For_Loop --
   -------------------------
   function Is_Reverse_For_Loop(This : in iteration_nonterminal1) return boolean is
   begin
      return false;
   end Is_Reverse_For_Loop;
   
   -------------------------
   -- Get_Left_Expression --
   -------------------------
   --empty, should never be called
   function Get_Left_Expression(This : in iteration_nonterminal1) return Simple_Expression_Nonterminal_Ptr is
   begin
      return null;
   end Get_Left_Expression;
   
   -------------------------
   -- Get_Right_Expression --
   -------------------------
   --empty, should never be called
   function Get_Right_Expression(This : in iteration_nonterminal1) return Simple_Expression_Nonterminal_Ptr is
   begin
      return null;
   end Get_Right_Expression;
   
   -------------------
   -- Is_While_Loop --
   -------------------
   function Is_While_Loop (This : in iteration_nonterminal1) return boolean is
   begin
      return false;
   end Is_While_Loop;
   
   -----------------
   -- Is_For_Loop --
   -----------------
   function Is_For_Loop (This : in iteration_nonterminal1) return boolean is
   begin
      return false;
   end Is_For_Loop;
   
   --------------------------
   -- Get_Range_Identifier --
   --------------------------
   function Get_Range_Identifier(This: in iteration_nonterminal1) return Parseable_Token_Ptr is
   begin
      return null;
   end;
   ---------------
   -- Translate --
   ---------------
   procedure Translate (This : in out iteration_nonterminal1) is
   begin
      null;
   end Translate;
   
   -------------------------
   -- Is_Reverse_For_Loop --
   -------------------------
   function Is_Reverse_For_Loop(This : in iteration_nonterminal2) return boolean is
   begin
      return false;
   end Is_Reverse_For_Loop;
   
   -------------------------
   -- Get_Left_Expression --
   -------------------------
   --for a WHILE loop, should never be called
   function Get_Left_Expression(This : in iteration_nonterminal2) return Simple_Expression_Nonterminal_Ptr is
   begin
      return null;
   end Get_Left_Expression;
   
   -------------------------
   -- Get_Right_Expression --
   -------------------------
   --for a WHILE loop, should never be called
   function Get_Right_Expression(This : in iteration_nonterminal2) return Simple_Expression_Nonterminal_Ptr is
   begin
      return null;
   end Get_Right_Expression;
   
   -------------------
   -- Is_While_Loop --
   -------------------
   function Is_While_Loop (This : in iteration_nonterminal2) return boolean is
   begin
      return true;
   end Is_While_Loop;
   
   -------------------
   -- Is_For_Loop --
   -------------------
   function Is_For_Loop (This : in iteration_nonterminal2) return boolean is
   begin
      return false;
   end Is_For_Loop;
   
   --------------------------
   -- Get_Range_Identifier --
   --------------------------
   function Get_Range_Identifier(This: in iteration_nonterminal2) return Parseable_Token_Ptr is
   begin
      return null;
   end;
  
   ---------------
   -- Translate --
   ---------------
   --while loops, pretty straightforward
   procedure Translate (This : in out iteration_nonterminal2) is
   begin
      Translate(This.WHILE_part.all);
      put_with_space("(");
      Translate(This.condition_part.all);
      put_with_space(")");      
   end Translate;

   -------------------------
   -- Is_Reverse_For_Loop --
   -------------------------
   function Is_Reverse_For_Loop(This : in iteration_nonterminal3) return boolean is
   begin
      return not Is_Empty(This.reverse_opt_part.all);
   end Is_Reverse_For_Loop;
   
   -------------------------
   -- Get_Left_Expression --
   -------------------------
   function Get_Left_Expression(This : in iteration_nonterminal3) return Simple_Expression_Nonterminal_Ptr is
   begin
      return Get_Left_Expression(This.discrete_range_part.all);
   end Get_Left_Expression;
   
   -------------------------
   -- Get_Right_Expression --
   -------------------------
   function Get_Right_Expression(This : in iteration_nonterminal3) return Simple_Expression_Nonterminal_Ptr is
   begin
      return Get_Right_Expression(This.discrete_range_part.all);
   end Get_Right_Expression;
   
   -------------------
   -- Is_While_Loop --
   -------------------
   function Is_While_Loop (This : in iteration_nonterminal3) return boolean is
   begin
      return false;
   end Is_While_Loop;
   
   -------------------
   -- Is_For_Loop --
   -------------------
   function Is_For_Loop (This : in iteration_nonterminal3) return boolean is
   begin
      return true;
   end Is_For_Loop;
   
   --------------------------
   -- Get_Range_Identifier --
   --------------------------
   function Get_Range_Identifier(This: in iteration_nonterminal3) return Parseable_Token_Ptr is
   begin
      return This.iter_part_part.IDENTIFIER_part;
   end;

   ---------------
   -- Translate --
   ---------------
   --for a FOR loop, should never be called
   procedure Translate (This : in out iteration_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------
   procedure Translate (This : in out iter_part_nonterminal) is
   begin
      null;
   end Translate;

   --------------
   -- Is_Empty --
   --------------
   function Is_Empty(This : in reverse_opt_nonterminal1) return boolean is
   begin
      return true;
   end Is_Empty;

   ---------------
   -- Translate --
   ---------------
   --could be empty, OK
   procedure Translate (This : in out reverse_opt_nonterminal1) is
   begin
      null;
   end Translate;

   --------------
   -- Is_Empty --
   --------------
   function Is_Empty(This : in reverse_opt_nonterminal2) return boolean is
   begin
      return false;
   end Is_Empty;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out reverse_opt_nonterminal2) is
   begin
      Translate(This.REVERSE_part.all);
   end Translate;
      
   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops(This : in basic_loop_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_s_part.all, Decls);
   end Mark_For_Loops;
   
   --------------------------
   -- Translate_Statements --
   --------------------------

   procedure Translate_Statements (This : in out basic_loop_nonterminal) is
   begin
      Translate(This.statement_s_part.all);
   end Translate_Statements;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out basic_loop_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out id_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out id_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in block_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.block_body_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out block_nonterminal) is
   begin
      --ignore optional label
      Translate(This.block_decl_part.all);
      Translate(This.block_body_part.all);
      Translate(This.END_part.all);
      --ignore optional id
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------
   --OK if empty
   procedure Translate (This : in out block_decl_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out block_decl_nonterminal2) is
   begin
      Translate(This.DECLARE_part.all);
      Translate(This.decl_part_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   procedure Mark_For_Loops (This : in block_body_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.handled_stmt_s_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out block_body_nonterminal) is
   begin
      if Proc_Nesting_Level = 1 then
         put_line("task main()");
         Translate(This.BEGIN_part.all);
      end if;
      Translate(This.handled_stmt_s_part.all); 
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in handled_stmt_s_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.statement_s_part.all, Decls);
   end Mark_For_Loops;
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out handled_stmt_s_nonterminal) is
   begin
      Translate(This.statement_s_part.all); 
      Translate(This.except_handler_part_opt_part.all);
      
   end Translate;

   ---------------
   -- Translate --
   ---------------
   --Must be empty for successful translation
   procedure Translate (This : in out except_handler_part_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out except_handler_part_opt_nonterminal2) is
   begin
      Translate(This.except_handler_part_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------
   procedure Translate (This : in out exit_stmt_nonterminal) is
   begin
      if not Is_Empty(This.when_opt_part.all) then
         my_new_line;
         put_with_space("if (");
         Translate_Condition(This.when_opt_part.all);
         put(")");
         Inc_Indent;
         my_new_line;
      end if;
      put("break");
      Translate(This.SEMICOLON_part.all);
      Dec_Indent;
      my_new_line;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_opt_nonterminal2) is
   begin
      null;
   end Translate;

   --------------------------
   -- Translate_Condition --
   --------------------------
   --should never be called
   procedure Translate_Condition (This : in when_opt_nonterminal1) is
   begin
      null;
   end Translate_Condition;
   
   ---------------
   -- Is_Empty  --
   ---------------

   function Is_Empty (This : in when_opt_nonterminal1) return boolean is
   begin
      return true;
   end Is_Empty;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out when_opt_nonterminal1) is
   begin
      null;
   end Translate;

   --------------------------
   -- Translate_Condition --
   --------------------------
   procedure Translate_Condition (This : in when_opt_nonterminal2) is
   begin
      Translate(This.condition_part.all);
   end Translate_Condition;
   
  ----------------
   -- Is_Empty  --
   ---------------

   function Is_Empty (This : in when_opt_nonterminal2) return boolean is
   begin
      return false;
   end Is_Empty;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out when_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out return_stmt_nonterminal1) is
   begin
      Translate(This.RETURN_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out return_stmt_nonterminal2) is
   begin
      Translate(This.RETURN_part.all);
      Translate(This.expression_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out goto_stmt_nonterminal) is
   begin
      Translate(This.GOTO_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------
   --Things like "procedure foo (...) ; "
   procedure Translate (This : in out subprog_decl_nonterminal1) is
   Line, Column : Integer;
   begin
      Line := This.SEMICOLON_part.line;
      Column := This.SEMICOLON_part.line;
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " Ada subprogram headers without bodies are not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   --procedure foo (...) is generic;
   procedure Translate (This : in out subprog_decl_nonterminal2) is
   Line, Column : Integer;
   begin
      Line := This.SEMICOLON_part.line;
      Column := This.SEMICOLON_part.column;
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => ": Ada generics are not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subprog_decl_nonterminal3) is
   Line, Column : Integer;
   begin
      Line := This.ABSTRACT_part.line;
      Column := This.ABSTRACT_part.column;
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " Ada 'abstract' keyword not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
   end Translate;

   ---------------
   -- Translate --
   ---------------
   --procedure foo (optional formals)
   procedure Translate (This : in out subprog_spec_nonterminal1) is
   Line, Column : Integer;
   Proc_Name : Parseable_Token_ptr;
   Info_Rec : Lego_Builtins.Procedure_Info_Record_Type;
   Formal_Parameter_Array : Lego_Builtins.Formal_Parameter_Array_Type;
   Start_Slot : Integer := 1;   --for building formal parameter list for user-defined procedures
   
   begin
      case Proc_Nesting_Level is
         when 0 =>
            put(File => Standard_Error, 
               Item => "Internal error in translator (procedure Translate(subprog_spec_nonterminal1)),");
            new_line(File => Standard_Error);
            put(File => Standard_Error, 
               Item => "please report this error to the program maintainer at your site.");
            new_line(File => Standard_Error);
      
         when 1 =>   --top level procedure, don't translate now, eventually
            null;    --replace with "task main" once user-defined procs parsed
            
         when 2 =>   --user defined procedure, turn it into a function and
                     --translate the formals
                     
            --first check for name clash with predefined Ada/Mindstorms procedures
            Proc_Name := Get_Simple_Name(This.compound_name_part.all);
            Line := Proc_Name.Line;
            Column := Proc_Name.column;
            if Is_Ada_Mindstorms_Identifier(Proc_Name.Token_String.all) then
               Error_Msg_Prefix(Line, Column);
               put(File => Standard_Error, Item => " Procedure ");
               put(File => Standard_Error, Item => Proc_Name.Token_String.all);
               put(File => Standard_Error, Item => " has the same name as a procedure that is ");
               new_line(File => Standard_Error);
               put(File => Standard_Error, Item => "already a part of Ada/Mindstorms (look in lego.ads for details).");
               new_line(File => Standard_Error);
               put(File => Standard_Error, Item => "Change the name of the procedure and recompile.");                
               new_line(File => Standard_Error);
               raise Parse_Error_Exception;
            else
               --add new proc to proc info table
               Info_Rec.Name := To_Unbounded_String(Proc_Name.Token_String.all);
               Info_Rec.Arity := Get_Arity(This.formal_part_opt_part.all);
               if Info_Rec.Arity > Lego_Builtins.Max_Procedure_Arity then
                  Error_Msg_Prefix(Line, Column);
                  put(File => Standard_Error, Item => " Procedure ");
                  put(File => Standard_Error, Item => Proc_Name.Token_String.all);
                  put(File => Standard_Error, Item => " has too many parameters (max is ");
                  put(File => Standard_Error, Item => Lego_Builtins.Max_Procedure_Arity, width => 0);
                  put(File => Standard_Error, Item => ") for Ada/Mindstorms");
                  new_line(File => Standard_Error);
                  put(File => Standard_Error, Item => "Reduce the number of parameters and recompile.");
                  new_line(File => Standard_Error);
                  raise Parse_Error_Exception;
               end if;
                  
               Build_Formal_Parameter_List(This.formal_part_opt_part.all, Formal_Parameter_Array, Start_Slot);
               Info_Rec.Formal_Parameters := Formal_Parameter_Array;
               Add_To_Proc_Info_Table(Info_Rec, Line, Column);
      
               --and do the translation
               put_with_space("void");
               Translate(This.compound_name_part.all);
               Translate(This.formal_part_opt_part.all);
               my_new_line;
            end if;
            
         when others =>
            Line := This.PROCEDURE_part.Line;
            Column := This.PROCEDURE_part.Column;
            Error_Msg_Prefix(Line, Column);
            put(File => Standard_Error, Item => " Nesting of user-defined procedures not supported.  ");
            new_line(File => Standard_Error);
            raise Parse_Error_Exception;
      end case;
 
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subprog_spec_nonterminal2) is
   begin
      Translate(This.FUNCTION_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subprog_spec_nonterminal3) is
   begin
      Translate(This.FUNCTION_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out designator_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out designator_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   --no formal parameters
   procedure Build_Formal_Parameter_List(This : in formal_part_opt_nonterminal1;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      null;
   end Build_Formal_Parameter_List;
      
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in formal_part_opt_nonterminal1) return integer is
   begin
      return 0;
   end Get_Arity;
   
   ---------------
   -- Translate --
   ---------------
   --empty formal parameter declaration
   procedure Translate (This : in out formal_part_opt_nonterminal1) is
   begin
      put("()");
   end Translate;

   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   procedure Build_Formal_Parameter_List(This : in formal_part_opt_nonterminal2;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      Build_Formal_Parameter_List(This.formal_part_part.all, Formal_Parameter_Array,
         Next_Slot);
   end Build_Formal_Parameter_List;

   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in formal_part_opt_nonterminal2) return integer is
   begin
      return Get_Arity(This.formal_part_part.all);
   end Get_Arity;
   
   ---------------
   -- Translate --
   ---------------
   --one or more formal parameter declarations
   procedure Translate (This : in out formal_part_opt_nonterminal2) is
   begin
      Translate(This.formal_part_part.all);
   end Translate;

   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   procedure Build_Formal_Parameter_List(This : in formal_part_nonterminal;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      Build_Formal_Parameter_List(This.param_s_part.all, Formal_Parameter_Array,
         Next_Slot);
   end Build_Formal_Parameter_List;
              
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in formal_part_nonterminal) return integer is
   begin
      return Get_Arity(This.param_s_part.all);
   end Get_Arity;
   
   ---------------
   -- Translate --
   ---------------
   -- ( formal parameters )
   procedure Translate (This : in out formal_part_nonterminal) is
   begin
      Translate(This.L_PAREN_part.all);
      Translate(This.param_s_part.all);
      Translate(This.R_PAREN_part.all);
   end Translate;

   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   procedure Build_Formal_Parameter_List(This : in param_s_nonterminal1;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      Build_Formal_Parameter_List(This.param_part.all, Formal_Parameter_Array,
         Next_Slot);
   end Build_Formal_Parameter_List;
         
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in param_s_nonterminal1) return integer is
   begin
      return Get_Arity(This.param_part.all);
   end Get_Arity;
      
   ---------------
   -- Translate --
   ---------------
   --one formal parameter declaration
   procedure Translate (This : in out param_s_nonterminal1) is
   begin
      Translate(This.param_part.all);
   end Translate;

   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   procedure Build_Formal_Parameter_List(This : in param_s_nonterminal2;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      Build_Formal_Parameter_List(This.param_s_part.all, Formal_Parameter_Array,
         Next_Slot);
      Build_Formal_Parameter_List(This.param_part.all, Formal_Parameter_Array,
         Next_Slot);
   end Build_Formal_Parameter_List;
               
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in param_s_nonterminal2) return integer is
   begin
      return (Get_Arity(This.param_part.all) + Get_Arity(This.param_s_part.all));
   end Get_Arity;
      
   ---------------
   -- Translate --
   ---------------
   --multiple formal parameter declarations
   procedure Translate (This : in out param_s_nonterminal2) is
   begin
      Translate(This.param_s_part.all);
      put_with_space(",");   --semicolon connecting Ada formals replaced with comma for NQC
      Translate(This.param_part.all);
   end Translate;

   --for looking down the tree and determining if a mode is OUT
   
   --empty mode spec
   function Is_Out(This : in mode_nonterminal1) return boolean is
   Ignored : mode_nonterminal1;
   begin
      Ignored := This;   --avoid warning for unreferenced parameter
      return false;
   end Is_Out;
   
   --IN only
   function Is_Out(This : in mode_nonterminal2) return boolean is
   Ignored : mode_nonterminal2;
   begin
      Ignored := This;   --avoid warning for unreferenced parameter
      return false;
   end Is_Out;
   
   --OUT only
   function Is_Out(This : in mode_nonterminal3) return boolean is
   Ignored : mode_nonterminal3;
   begin
      Ignored := This;   --avoid warning for unreferenced parameter
      return true;
   end Is_Out;
   
   --IN OUT
   function Is_Out(This : in mode_nonterminal4) return boolean is
   Ignored : mode_nonterminal4;
   begin
      Ignored := This;   --avoid warning for unreferenced parameter
      return true;
   end Is_Out;
  
   --ACCESS
   function Is_Out(This : in mode_nonterminal5) return boolean is
   Ignored : mode_nonterminal5;
   begin
      Ignored := This;   --avoid warning for unreferenced parameter
      return false;
   end Is_Out;
   
   --simple name, might be supported type
   function Is_Supported_Variable_Type(This : in mark_nonterminal1) return boolean is
   begin
      return Is_Supported_Variable_Type(This.simple_name_part.all);
   end Is_Supported_Variable_Type;
   
   --has a tick mark, can't be supported type
   function Is_Supported_Variable_Type(This : in mark_nonterminal2) return boolean is
   Ignored : mark_nonterminal2;
   begin
      Ignored := This;   --avoid warning for unreferenced parameter
      return false;
   end Is_Supported_Variable_Type;
   
   --has a dot, can't be supported type
   function Is_Supported_Variable_Type(This : in mark_nonterminal3) return boolean is
   Ignored : mark_nonterminal3;
   begin
      Ignored := This;   --avoid warning for unreferenced parameter
      return false;
   end Is_Supported_Variable_Type;
               
   ---------------------------------
   -- Build_Formal_Parameter_List --
   ---------------------------------
   procedure Build_Formal_Parameter_List(This : in param_nonterminal;
      Formal_Parameter_Array : in out Lego_Builtins.Formal_Parameter_Array_Type; Next_Slot : in out integer) is
   begin
      Build_Formal_Parameter_List(This.def_id_s_part.all, Formal_Parameter_Array,
         Next_Slot);
   end Build_Formal_Parameter_List;
   
   ---------------
   -- Get_Arity --
   ---------------
   function Get_Arity(This : in param_nonterminal) return integer is
   begin
      return Get_Arity(This.def_id_s_part.all);
   end Get_Arity;
               
   ---------------
   -- Translate --
   ---------------
   -- translate a formal parameter declaration
   -- id1[,id2 ...] : [mode] name_list [initialization]
   -- becomes int[&] id1[, int[&] id2 ...]
   procedure Translate (This : in out param_nonterminal) is
   Line, Column : Integer;
   Reference : Boolean;
   begin
      --pass by reference if out parameter
      if Is_Out(This.mode_part.all) then
         Reference := true;
      else
         Reference := false;
      end if;
      
      --formal parameter types restricted to those for variables
      if not Is_Supported_Variable_Type(This.mark_part.all) then
         Line := This.COLON_part.line;
         Column := This.COLON_part.column;
         Error_Msg_Prefix(Line, Column);
         put(File => Standard_Error, Item => " This type of formal parameter not supported.  ");
         new_line(File => Standard_Error);
         raise Parse_Error_Exception;
      end if;
      
      --formal parameter default values not supported
      if not Is_Empty(This.init_opt_part.all) then
         Line := This.COLON_part.line;
         Column := This.COLON_part.column;
         Error_Msg_Prefix(Line, Column);
         put(File => Standard_Error, Item => " Default values for formal parameters not supported.  ");
         new_line(File => Standard_Error);
         raise Parse_Error_Exception;
      end if;

      --translate list of formal parameter names
      Translate_Formal_Parameters(This.def_id_s_part.all, Reference);

   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mode_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mode_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mode_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mode_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out mode_nonterminal5) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subprog_spec_is_push_nonterminal) is
   begin
      Translate(This.subprog_spec_part.all);
      Translate(This.IS_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   --procedure (...) is {decls} begin {statements} end [id]
   procedure Translate (This : in out subprog_body_nonterminal) is
   begin
      Proc_Nesting_Level := Proc_Nesting_Level + 1;
      Translate(This.subprog_spec_is_push_part.all);
      
      --Each 'for' loop in a procedure requires two new identifier
      --declarations.  This is taken care of here.  The 'Mark_For_Loops' walks the tree
      --to find 'for' loops.  When it finds one, it checks the range identifier for uniqueness,
      --creates a stop identifier and checks that for uniqueness, then adds the identifiers to the decl part.
      
--      FOR I in A..B LOOP
--         stmts;
--      END LOOP
--      
--      becomes
--      
--      int i, i_stop; (in decl section)
--      ...
--      i := A;
--      i_stop := B;
--      while i <= i_stop
--      {
--         stmts;
--         i++;
--      }
--      
--      similar for FOR I in reverse A..B LOOP
      
      Mark_For_Loops(This.block_body_part.all, This.decl_part_part);

      my_new_line;
      if Proc_Nesting_Level > 1 then
         put_with_space("{");
         Inc_Indent;
      end if;
      my_new_line;
      Translate(This.decl_part_part.all);  
      Translate(This.block_body_part.all); 
      my_new_line;
      Translate(This.END_part.all);   -- calls dec_indent
      my_new_line;
      --ignore id_opt part
      --ignore semicolon
      Proc_Nesting_Level := Proc_Nesting_Level - 1;
   
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out procedure_call_nonterminal) is
   begin
      Translate(This.name_part.all);
      if Get_Arity(This.name_part.all) = 0 then
         put_with_space("()");   --NQC requires parentheses for 0-arity calls
      end if;
      Translate(This.SEMICOLON_part.all);
      my_new_line;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pkg_decl_nonterminal1) is
   begin
      Translate(This.pkg_spec_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pkg_decl_nonterminal2) is
   begin
      Translate(This.generic_pkg_inst_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pkg_spec_nonterminal) is
   begin
      Translate(This.PACKAGE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out private_part_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out private_part_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out c_id_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out c_id_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out pkg_body_nonterminal) is
   begin
      Translate(This.PACKAGE_part.all);   
   --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out private_type_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out limited_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out limited_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out use_clause_nonterminal1) is
   begin
      Translate(This.USE_part.all);
      Check_For_Supported_Packages(This.name_s_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out use_clause_nonterminal2) is
   begin
      Translate(This.USE_part.all);
      Translate(This.TYPE_part.all);
      --more tree here
   end Translate;

   ----------------------------------
   -- Check_For_Supported_Packages --
   ----------------------------------

   procedure Check_For_Supported_Packages (This : in name_s_nonterminal1) is
   begin
      Check_For_Supported_Package(This.name_part.all);
   end Check_For_Supported_Packages;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_s_nonterminal1) is
   begin
      null;
   end Translate;

   ----------------------------------
   -- Check_For_Supported_Packages --
   ----------------------------------

   procedure Check_For_Supported_Packages (This : in name_s_nonterminal2) is
   begin
      Check_For_Supported_Packages(This.name_s_part.all);
      Check_For_Supported_Package(This.name_part.all);
   end Check_For_Supported_Packages;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out name_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rename_decl_nonterminal1) is
   Line, Column : Integer;
   begin
      Line := This.COLON_part.Line;
      Column := This.COLON_part.Column;
      put(File => Standard_Error, Item => " Ada rename statements not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
      --more tree here
   end Translate;


   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rename_decl_nonterminal2) is
   Line, Column : Integer;
   begin
      Line := This.COLON_part.Line;
      Column := This.COLON_part.Column;
      Error_Msg_Prefix(Line, Column);
      put(File => Standard_Error, Item => " Ada rename statements not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rename_decl_nonterminal3) is
   begin
      Translate(This.rename_unit_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rename_unit_nonterminal1) is
   begin
      --more tree here
      Translate(This.renaming_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rename_unit_nonterminal2) is
   begin
      --more tree here
      Translate(This.renaming_part.all);
      --more tree here
   end Translate;
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rename_unit_nonterminal3) is
   begin
      --more tree here
      Translate(This.renaming_part.all);
      --more tree here
   end Translate;
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rename_unit_nonterminal4) is
   begin
      --more tree here
      Translate(This.renaming_part.all);
      --more tree here
   end Translate;
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out renaming_nonterminal) is
   begin
      Translate(This.RENAMES_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_decl_nonterminal) is
   begin
      Translate(This.task_spec_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_spec_nonterminal1) is
   begin
      Translate(This.TASK_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_spec_nonterminal2) is
   begin
      Translate(This.TASK_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_def_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_def_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_private_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_private_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out task_body_nonterminal) is
   begin
      Translate(This.TASK_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_decl_nonterminal) is
   begin
      Translate(This.prot_spec_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_spec_nonterminal1) is
   begin
      Translate(This.PROTECTED_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_spec_nonterminal2) is
   begin
      Translate(This.PROTECTED_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_def_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_private_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_private_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_decl_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_decl_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_decl_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_decl_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_decl_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_decl_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_elem_decl_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_elem_decl_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_elem_decl_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_elem_decl_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_body_nonterminal) is
   begin
      Translate(This.PROTECTED_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_body_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_body_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_body_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_body_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out prot_op_body_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_decl_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_decl_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_decl_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_decl_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_body_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_body_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_body_part_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_body_part_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rep_spec_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rep_spec_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_call_nonterminal) is
   begin
      null;
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in accept_stmt_nonterminal1; 
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      null;
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out accept_stmt_nonterminal1) is
   begin
      Translate(This.accept_hdr_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------

   procedure Mark_For_Loops (This : in accept_stmt_nonterminal2;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      Mark_For_Loops(This.handled_stmt_s_part.all, Decls);
   end Mark_For_Loops;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out accept_stmt_nonterminal2) is
   begin
      Translate(This.accept_hdr_part.all);
      Translate(This.DO_part.all);
      Translate(This.handled_stmt_s_part.all);
      Translate(This.END_part.all);
      Translate(This.id_opt_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out accept_hdr_nonterminal) is
   begin
      Translate(This.ACCEPT_part.all);
      Translate(This.entry_name_part.all);
      Translate(This.formal_part_opt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_name_nonterminal1) is
   begin
      Translate(This.simple_name_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out entry_name_nonterminal2) is
   begin
      Translate(This.entry_name_part.all);
      Translate(This.L_PAREN_Part.all);
      Translate(This.expression_part.all);
      Translate(This.R_PAREN_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out delay_stmt_nonterminal1) is
   begin
      Translate(This.DELAY_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out delay_stmt_nonterminal2) is
   begin
      Translate(This.DELAY_part.all);
      --more tree here
   end Translate;

   ---------------------
   -- Mark_For_Loops --
   ---------------------
   --need to replace this with dispatched methods if SELECT statements are ever supported
   procedure Mark_For_Loops (This : in select_stmt_nonterminal;
      Decls : in out decl_part_nonterminal_ptr) is
   begin
      null;
   end Mark_For_Loops;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_stmt_nonterminal1) is
   begin
      Translate(This.select_wait_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_stmt_nonterminal2) is
   begin
      Translate(This.async_select_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_stmt_nonterminal3) is
   begin
      Translate(This.timed_entry_call_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_stmt_nonterminal4) is
   begin
      Translate(This.cond_entry_call_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_wait_nonterminal) is
   begin
      Translate(This.SELECT_part1.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out guarded_select_alt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out guarded_select_alt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out or_select_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out or_select_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_alt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_alt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out select_alt_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out delay_or_entry_alt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out delay_or_entry_alt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out async_select_nonterminal) is
   begin
      Translate(This.SELECT_part1.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out timed_entry_call_nonterminal) is
   begin
      Translate(This.SELECT_part1.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out cond_entry_call_nonterminal) is
   begin
      Translate(This.SELECT_part1.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out stmts_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out stmts_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out abort_stmt_nonterminal) is
   begin
      Translate(This.abort_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compilation_nonterminal1) is
   begin
      null;   --empty compilation unit
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compilation_nonterminal2) is
   begin
      Translate(This.compilation_part.all);  
      Translate(This.comp_unit_part.all);    --primary translation path
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out compilation_nonterminal3) is
   begin
      Translate(This.pragma_sym_part.all);
      Translate(This.pragma_s_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_unit_nonterminal1) is
   begin
      Translate(This.context_spec_part.all);
      Translate(This.private_opt_part.all);
      Translate(This.unit_part.all);
      Translate(This.pragma_s_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_unit_nonterminal2) is
   begin
      Translate(This.private_opt_part.all);
      Translate(This.unit_part.all);
      Translate(This.pragma_s_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out private_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out private_opt_nonterminal2) is
   begin
      Translate(This.PRIVATE_part.all);
   end Translate;
   
   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out context_spec_nonterminal1) is
   begin
      Translate(This.with_clause_part.all);
      Translate(This.use_clause_opt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out context_spec_nonterminal2) is
   begin
      Translate(This.context_spec_part.all);
      Translate(This.with_clause_part.all);
      Translate(This.use_clause_opt_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out context_spec_nonterminal3) is
   begin
      Translate(This.context_spec_part.all);
      Translate(This.pragma_sym_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out with_clause_nonterminal) is
   begin
      Check_For_Supported_Package(This.c_name_list_part.all);      
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out use_clause_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out use_clause_opt_nonterminal2) is
   begin
      Translate(This.use_clause_opt_part.all);
      Translate(This.use_clause_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unit_nonterminal1) is
   begin
      Translate(This.pkg_decl_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unit_nonterminal2) is
   begin
       Translate(This.pkg_body_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unit_nonterminal3) is
   begin
       Translate(This.subprog_decl_part.all);   
   end Translate;


   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unit_nonterminal4) is
   begin
       Translate(This.subprog_body_part.all);   --primary translation path
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unit_nonterminal5) is
   begin
       Translate(This.subunit_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unit_nonterminal6) is
   begin
       Translate(This.generic_decl_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out unit_nonterminal7) is
   begin
       Translate(This.rename_unit_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subunit_nonterminal) is
   begin
      Translate(This.SEPARATE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subunit_body_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subunit_body_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subunit_body_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subunit_body_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_stub_nonterminal1) is
   begin
      Translate(This.TASK_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_stub_nonterminal2) is
   begin
      Translate(This.PACKAGE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_stub_nonterminal3) is
   begin
      Translate(This.SEPARATE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out body_stub_nonterminal4) is
   begin
      Translate(This.PROTECTED_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out exception_decl_nonterminal) is
   begin
      Translate(This.EXCEPTION_part.all);
      --more tree here
   end Translate;


   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out except_handler_part_nonterminal1) is
   begin
      Translate(This.EXCEPTION_part.all);   --terminates translation
      Translate(This.exception_handler_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out except_handler_part_nonterminal2) is
   begin
      Translate(This.except_handler_part_part.all);
      Translate(This.exception_handler_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out exception_handler_nonterminal1) is
   begin
      Translate(This.WHEN_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out exception_handler_nonterminal2) is
   begin
      Translate(This.WHEN_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out except_choice_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out except_choice_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out except_choice_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out except_choice_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out raise_stmt_nonterminal) is
   begin
      Translate(This.raise_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out requeue_stmt_nonterminal1) is
   begin
      Translate(This.REQUEUE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out requeue_stmt_nonterminal2) is
   begin
      Translate(This.REQUEUE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_decl_nonterminal1) is
   begin
      Translate(This.generic_formal_part_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_decl_nonterminal2) is
   begin
      Translate(This.generic_formal_part_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_part_nonterminal1) is
   begin
      Translate(This.GENERIC_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_part_nonterminal2) is
   begin
      Translate(This.generic_formal_part_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_nonterminal5) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_nonterminal6) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_formal_nonterminal7) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate
     (This : in out generic_discrim_part_opt_nonterminal1)
   is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate
     (This : in out generic_discrim_part_opt_nonterminal2)
   is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate
     (This : in out generic_discrim_part_opt_nonterminal3)
   is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subp_default_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subp_default_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out subp_default_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal4) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal5) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal6) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal7) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal8) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal9) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_type_def_nonterminal10) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_derived_type_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_derived_type_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_derived_type_nonterminal3) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_subp_inst_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_pkg_inst_nonterminal) is
   begin
      Translate(This.PACKAGE_part.all);
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out generic_inst_nonterminal) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rep_spec_nonterminal1) is
   begin
      Translate(This.attrib_def_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rep_spec_nonterminal2) is
   begin
      Translate(This.record_type_spec_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out rep_spec_nonterminal3) is
   begin
      Translate(This.address_spec_part.all);
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out attrib_def_nonterminal) is
   Line, Column : Integer;
   begin
      Line := This.FOR_part.Line;
      Column := This.FOR_part.Column;
      put(File => Standard_Error, Item => " Ada attribute definitions not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out record_type_spec_nonterminal) is
   Line, Column : Integer;
   begin
      Line := This.FOR_part.Line;
      Column := This.FOR_part.Line;
      put(File => Standard_Error, Item => " Ada record specifications not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out align_opt_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out align_opt_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_loc_s_nonterminal1) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out comp_loc_s_nonterminal2) is
   begin
      null;
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out address_spec_nonterminal) is
   Line, Column : Integer;
   begin
      Line := This.FOR_part.Line;
      Column := This.FOR_part.Column;
      put(File => Standard_Error, Item => " Ada address specifications not supported.  ");
      new_line(File => Standard_Error);
      raise Parse_Error_Exception;
      --more tree here
   end Translate;

   ---------------
   -- Translate --
   ---------------

   procedure Translate (This : in out code_stmt_nonterminal) is
   begin
      Translate(This.qualified_part.all);
      Translate(This.SEMICOLON_part.all);
   end Translate;

end trans_Model;