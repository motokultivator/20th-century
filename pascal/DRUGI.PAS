type
o=object
fajl:file of integer;
br:integer;
procedure ubaci(n:integer);
procedure izbaci;
procedure prikazi;
end;


procedure o.ubaci(n:integer);
begin
write(fajl,n);
inc(br);
end;

procedure o.izbaci;
var a:integer;
begin
seek(fajl,br-1);
read(fajl,a);
writeln(a);
seek(fajl,br-1);
truncate(fajl);
dec(br);
end;

procedure o.prikazi;
var a:integer;
begin
seek(fajl,0);
while not eof(fajl) do begin
                       read(fajl,a);
                       writeln(a);
                       end;
end;



var k:o;
begin
assign(k.fajl,'stek.txt');
rewrite(k.fajl);
close(k.fajl);
reset(k.fajl);
k.br:=0;
k.ubaci(5);
k.ubaci(4);
k.prikazi;
k.izbaci;
k.izbaci;
close(k.fajl);
end.


