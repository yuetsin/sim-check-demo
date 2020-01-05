(* Copyright (c) 1994,97 XDS Ltd, Russia. All Rights Reserved. *)
<* +M2EXTENSIONS *> (* turned ON for RO  parameters *)
IMPLEMENTATION MODULE PFNConv;

IMPORT CharClass, Strings;

VAR fatfs: BOOLEAN;

PROCEDURE convert_from_host(host-,fname-: ARRAY OF CHAR; VAR str: ARRAY OF CHAR; VAR len: CARDINAL);
  VAR i: CARDINAL;
     ch: CHAR;

  PROCEDURE get;
  BEGIN
    IF i<=HIGH(fname) THEN ch:=fname[i]; INC(i); ELSE ch:=0C END;
  END get;

  PROCEDURE put(ch: CHAR);
  BEGIN
    IF ch = '"' THEN RETURN END;
    IF len<=HIGH(str) THEN str[len]:=ch; END;
    INC(len);
  END put;