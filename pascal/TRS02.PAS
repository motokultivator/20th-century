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
  Command: string[127];
       st:string[80];
begin
  repeat   {I+}  GetDir(0,st) ;    {I+}   write(st,'>');

    ReadLn(Command);
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
