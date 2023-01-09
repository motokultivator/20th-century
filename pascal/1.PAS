uses
dos;

var
f:text;k,command:string;
s:char;
n:integer;
begin  write('file to view ');readln(k);
if k='browse' then begin readln(command);

SwapVectors;
      Exec(GetEnv('COMSPEC'), '/C ' +command);
      SwapVectors;
      readln;end else
   begin
assign (f,k);
reset(f);
while not EOF(f) do
begin
read (f,s);
write(s);
end;
close(f);
readln;
end;end.