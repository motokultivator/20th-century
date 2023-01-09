uses dos;
var i:integer;p:^string;x:string;
begin
for i:=1 to EnvCount    do writeln(EnvStr(i)) ;  readln;
end.