uses dos,crt;
var
p:^string;
begin

P := Ptr(Word(Ptr(prefixseg, $2C)^), 7);
p^:='dbsgdgngnnndshgdns';
write(p^);readln;
end.
