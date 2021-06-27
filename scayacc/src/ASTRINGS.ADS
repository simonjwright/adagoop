-- This package defines types and routines for manipulating
-- varying-length character strings, as a_string (access string).

-- SFZ	1/21/86
with System;
package A_Strings is

	type string_rec(len: natural) is record
		s: string(1..len);
	end record;
	type A_String is access string_rec;

	Empty : constant A_String := new string_rec(0);
	type convert_t is array(character range ascii.nul .. ascii.del) of character;
	to_upper: constant convert_t := (
		ascii.nul, ascii.soh, ascii.stx, ascii.etx,
		ascii.eot, ascii.enq, ascii.ack, ascii.bel,
		ascii.bs,  ascii.ht,  ascii.lf,  ascii.vt,
		ascii.ff,  ascii.cr,  ascii.so,  ascii.si,
		ascii.dle, ascii.dc1, ascii.dc2, ascii.dc3,
		ascii.dc4, ascii.nak, ascii.syn, ascii.etb,
		ascii.can, ascii.em,  ascii.sub, ascii.esc,
		ascii.fs,  ascii.gs,  ascii.rs,  ascii.us,
		' ', '!', '"', '#', '$', '%', '&', ''', 
		'(', ')', '*', '+', ',', '-', '.', '/', 
		'0', '1', '2', '3', '4', '5', '6', '7', 
		'8', '9', ':', ';', '<', '=', '>', '?', 
		'@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 
		'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 
		'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 
		'X', 'Y', 'Z', '[', '\', ']', '^', '_', 
		'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 
		'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 
		'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 
		'X', 'Y', 'Z', '{', '|', '}', '~', ascii.del);
	to_lower: constant convert_t := (
		ascii.nul, ascii.soh, ascii.stx, ascii.etx,
		ascii.eot, ascii.enq, ascii.ack, ascii.bel,
		ascii.bs,  ascii.ht,  ascii.lf,  ascii.vt,
		ascii.ff,  ascii.cr,  ascii.so,  ascii.si,
		ascii.dle, ascii.dc1, ascii.dc2, ascii.dc3,
		ascii.dc4, ascii.nak, ascii.syn, ascii.etb,
		ascii.can, ascii.em,  ascii.sub, ascii.esc,
		ascii.fs,  ascii.gs,  ascii.rs,  ascii.us,
		' ', '!', '"', '#', '$', '%', '&', ''', 
		'(', ')', '*', '+', ',', '-', '.', '/', 
		'0', '1', '2', '3', '4', '5', '6', '7', 
		'8', '9', ':', ';', '<', '=', '>', '?', 
		'@', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 
		'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 
		'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 
		'x', 'y', 'z', '[', '\', ']', '^', '_', 
		'`', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 
		'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 
		'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 
		'x', 'y', 'z', '{', '|', '}', '~', ascii.del);
	
	function to_C(S : A_String) return System.ADDRESS;
	function to_a(S: String) return A_String;
	function to_a(C: Character) return A_String;

	function "&" (S: A_String; T: A_String) return A_String;
	function "&" (S: String; T: A_String) return A_String;
	function "&" (S: A_String; T: String) return A_String;
	function "&" (S: Character; T: A_String) return A_String;
	function "&" (S: A_String; T: Character) return A_String;

	function Insert
		(S: A_String; Into : A_String; at_char: natural) return A_String;
	function Insert
		(S: String; Into : A_String; at_char: natural) return A_String;
	function Insert
		(S: Character; Into : A_String; at_char: natural) return A_String;
	function Change
		(S: A_String; at_char,to_char: natural; Into: A_String) return A_String;
	function Change
		(S: A_String; at_char,to_char: natural; Into: String) return A_String;

	not_found: exception;

	function Next
		(Pattern, S: A_String; start: natural:=1) return natural;
	function Next
		(Pattern: String; S: A_String; start: natural:=1) return natural;
	function Next
		(Pattern: Character; S: A_String; start: natural:=1) return natural;
	function Last
		(Pattern, S: A_String; start: natural:=1) return natural;
	function Last
		(Pattern: String; S: A_String; start: natural:=1) return natural;
	function Last
		(Pattern: Character; S: A_String; start: natural:=1) return natural;

	function Substitute
		(For_pattern, To_pattern: string; S: A_String) return A_String;

	function Reverse_Order (S : A_String) return A_String;
	function Truncate (S : A_String; at_char: natural) return A_String;
	function Trim (S: A_String) return A_String;

	function Pad_Left
		(S : A_String; to_length: natural; pad_char: Character := ' ')
		return A_String;
	function Pad_Right
		(S : A_String; to_length: natural; pad_char: Character := ' ')
		return A_String;

	function Copy (S : A_String) return A_String;
	function Lower_To_Upper (S : A_String) return A_String;
	function Upper_To_Lower (S : A_String) return A_String;
	function Translate (From_Old, To_New: String; S: A_String) return A_String;

	function is_null(s : a_string) return boolean;
	function is_empty(s : a_string) return boolean;

	procedure Free (S: A_String);

end A_Strings;
