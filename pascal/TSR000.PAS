{ Turbo Exec }
{ Copyright (c) 1985,90 by Borland International, Inc. }

program ExecDemo;

(*
  Demonstration program that shows how to use the Dos
  unit's Exec procedure to execute DOS commands (including
  running other programs or batch files).

  This program keeps prompting you for a DOS command until
  you enter a blank line.

  When using Exec, make sure you specify a {$M} directive
  so the heap leaves some memory available for the child
  process.
*)

{$M 8192,0,0}           { Leave memory for child process }

uses Dos,crt;

var
  Command: string[127];        i:integer;
       st:string[80];   ch:array[1..70] of char;
Function RST(i:integer):string;   begin
if i=1 then RST:=ch[1]
else RST:=RST(i-1)+ch[i]; end;
begin
  repeat   {I+}  GetDir(0,st) ;    {I+}   write(st,'>');   i:=1
    ;  repeat  read(ch[i]);i:=i+1; until ch[i]='#';
    Command:=rst(i);
    if Command <> ''  then
    begin
      SwapVectors;
      Exec(GetEnv('COMSPEC'), '/C ' + Command);
      SwapVectors;   textcolor(2); write('TSR active,guess what is doing...');textcolor(15);
 writeln;     if DosError <> 0 then
        WriteLn('Could not execute COMMAND.COM');

    end;
  until Command = 'xxxxx';
end.
