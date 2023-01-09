

var
f,d:text;k,command:string;
s:char;
n:integer;
begin  write('file to view ');readln(k);
assign  (d,'c:\pascal\bin\output.dat');
assign (f,k);
reset(f);rewrite(d);
while not EOF(f) do
begin
read (f,s);
write(s);
write(d,s);
end;
close(f);close(d);
readln;
end.