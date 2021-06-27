-- This package defines types and routines for manipulating
-- varying-length character strings, as a_string (access string_rec).

-- SFZ	1/21/86
package body A_Strings is

	pragma suppress(length_check);
	pragma suppress(range_check);
	pragma suppress(index_check);

	procedure check_len(try, bound: integer) is
	begin
		if try < 1 or else try > bound then
			raise constraint_error;
		end if;
	end;

	function to_C(S : A_String) return System.ADDRESS is
		with_nul: A_String;
	begin
		if s.len /= 0 then
			if s.s(s.len) = ascii.nul then
				return s.s(1)'address;
			end if;
		end if;
		with_nul := S & ascii.nul;
		return with_nul.s(1)'address;
	end;

	function to_a(S: String) return A_String is
		result: a_string;
	begin
		result := new string_rec(S'length);
		result.s := S;
		return result;
	end;

	function to_a(C: Character) return A_String is
		result: a_string;
	begin
		result := new string_rec(1);
		result.s(1) := c;
		return result;
	end;

	function "&" (S: A_String; T: A_String) return A_String is
		result: A_String;
	begin
		result := new string_rec(S.len + T.len);
		result.s := S.s & T.s;
		return result;
	end;

	function "&" (S: String; T: A_String) return A_String is
		result: A_String;
	begin
		result := new string_rec(S'length + T.len);
		result.s := S & T.s;
		return result;
	end;

	function "&" (S: A_String; T: String) return A_String is
		result: A_String;
	begin
		result := new string_rec(S.len + T'length);
		result.s := S.s & T;
		return result;
	end;

	function "&" (S: Character; T: A_String) return A_String is
		result: A_String;
	begin
		result := new string_rec(1 + T.len);
		result.s := S & T.s;
		return result;
	end;

	function "&" (S: A_String; T: Character) return A_String is
		result: A_String;
	begin
		result := new string_rec(1 + S.len);
		result.s := S.s & T;
		return result;
	end;

	function Insert
		(S: A_String; Into : A_String; at_char: natural) return A_String is
		result: A_String;
	begin
		check_len(at_char, into.len);
		result := new string_rec(S.len + Into.len);
		result.s :=
			Into.s(1..at_char - 1) & S.s & Into.s(at_char .. Into.len);
		return result;
	end;

	function Insert
		(S: String; Into : A_String; at_char: natural) return A_String
	is
		result: A_String;
	begin
		check_len(at_char, into.len);
		result := new string_rec(S'length + Into.len);
		result.s :=
			Into.s(1..at_char - 1) & S & Into.s(at_char .. Into.len);
		return result;
	end;

	function Insert
		(S: Character; Into : A_String; at_char: natural) return A_String
	is
		result: A_String;
	begin
		check_len(at_char, into.len);
		result := new string_rec(Into.len + 1);
		result.s :=
			Into.s(1..at_char - 1) & S & Into.s(at_char .. Into.len);
		return result;
	end;

	function Change
		(S: A_String; at_char,to_char: natural; Into: A_String) return A_String
	is
		result: A_String;
		deleted: integer := to_char - at_char + 1;
	begin
		check_len(at_char, S.len);
		check_len(to_char, S.len);
		result := new string_rec(S.len + Into.len - deleted);
		result.s :=
			S.s(1..at_char - 1) & Into.s & S.s(to_char+1..S.len);
		return result;
	end;

	function Change
		(S: A_String; at_char,to_char: natural; Into: String) return A_String
	is
		result: A_String;
		deleted: integer := to_char - at_char + 1;
	begin
		check_len(at_char, S.len);
		check_len(to_char, S.len);
		result := new string_rec(S.len + Into'length - deleted);
		result.s :=
			S.s(1..at_char - 1) & Into & S.s(to_char+1..S.len);
		return result;
	end;



	function Next (Pattern, S: A_String; start: natural:=1) return natural is
		len_less_one: integer := Pattern.len - 1;
	begin
		for i in start .. S.len - len_less_one loop
			if S.s(i..i+len_less_one) = Pattern.s then
				return i;
			end if;
		end loop;
		raise not_found;
	end;

	function Next
		(Pattern: String; S: A_String; start: natural:=1) return natural
	is
		len_less_one: integer := Pattern'length - 1;
	begin
		for i in start .. S.len - len_less_one loop
			if S.s(i..i+len_less_one) = Pattern then
				return i;
			end if;
		end loop;
		raise not_found;
	end;

	function Next
		(Pattern: Character; S: A_String; start: natural:=1) return natural is
	begin
		for i in start .. S.len loop
			if S.s(i) = Pattern then
				return i;
			end if;
		end loop;
		raise not_found;
	end;

	function Last (Pattern, S: A_String; start: natural:=1) return natural is
	begin
		return last(pattern.s, s, start);
	end;

	function Last
		(Pattern: String; S: A_String; start: natural:=1) return natural
	is
		i: integer := start-1;
	begin
		loop
			i := next(pattern, S, i+1);
		end loop;
	exception
	when not_found =>
		if i = start-1 then		raise not_found;   end if;
		return i;
	end;

	function Last
		(Pattern: Character; S: A_String; start: natural:=1) return natural is
	begin
		return Last(string'(1=>pattern), S, start);
	end;

	function Substitute
		(For_pattern, To_pattern: string; S: A_String) return A_String is
	begin
		raise program_error;	-- not yet implemented
		return Empty;			--WARNING
	end;

	function Reverse_Order (S : A_String) return A_String is
		result: A_String := new string_rec(S.len);
	begin
		for i in 1..S.len loop
			result.s(i) := S.s(S.len - i + 1);
		end loop;
		return result;
	end;

	function Truncate (S : A_String; at_char: natural) return A_String is
		result: A_String;
	begin
		if at_char > S.len then
			return S;
		end if;
		check_len(at_char, s.len);
		result := new string_rec'(at_char-1, S.s(1..at_char-1) );
		return result;
	end;

	function Trim (S: A_String) return A_String is
		result: A_String;
	begin
		for i in reverse 1..S.len loop
			if s.s(i) /= ' ' then
				result := new string_rec(i);
				result.s := s.s(1..i);
				return result;
			end if;
		end loop;
		return Empty;
	end;

	function Pad_Left
		(S : A_String; to_length: natural; pad_char: Character := ' ')
		return A_String
	is
		result: A_string;
	begin
		if S.len > to_length then
			raise constraint_error;
		end if;
		result := new string_rec(to_length);
		for i in 1..to_length - S.len loop
			result.s(i) := pad_char;
		end loop;
		result.s(to_length-S.len+1 .. to_length) := S.s;
		return result;
	end;

	function Pad_Right
		(S : A_String; to_length: natural; pad_char: Character := ' ')
		return A_String
	is
		result: A_string;
	begin
		if S.len > to_length then
			raise constraint_error;
		end if;
		result := new string_rec(to_length);
		for i in S.len+1..to_length loop
			result.s(i) := pad_char;
		end loop;
		result.s(1 .. S.len) := S.s;
		return result;
	end;

	function Copy (S : A_String) return A_String is
		result: A_String := new string_rec(S.len);
	begin
		result.s := S.s;
		return result;
	end;

	function Lower_To_Upper (S : A_String) return A_String is
		result: A_String := new string_rec(S.len);
	begin
		for i in 1..S.len loop
			result.s(i) := to_upper(s.s(i));
		end loop;
		return result;
	end;

	function Upper_To_Lower (S : A_String) return A_String is
		result: A_String := new string_rec(S.len);
	begin
		for i in 1..S.len loop
			result.s(i) := to_lower(s.s(i));
		end loop;
		return result;
	end;

	function Translate (From_Old, To_New: String; S: A_String) return A_String
	is
		result: A_String := new string_rec(S.len);
		trans: array(character) of character;
	begin
		if From_Old'first /= To_New'first or else From_Old'last /= To_New'last
		then
			raise constraint_error;
		end if;
		for c in character loop
			trans(c) := c;
		end loop;
		for i in From_Old'range loop
			trans(From_Old(i)) := To_New(i);
		end loop;
		for i in 1..S.len loop
			result.s(i) := trans(S.s(i));
		end loop;
		return result;
	end;

	function is_null(s : a_string) return boolean
	is
	begin
		return s = null;
	end;

	function is_empty(s : a_string) return boolean
	is
	begin
		return s.len = 0;
	end;

	procedure Free (S: A_String) is
	begin
		null;
	end;

end A_Strings;
