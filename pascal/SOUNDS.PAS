  uses crt;
 var i,j : integer;
procedure ton(f,t:integer);
begin sound(f);delay(t);nosound end;
procedure sirena;begin
i:=650;
while i>=-650 do
begin
ton(780-abs(i),30);
i:=i-4
end
end;
procedure ZM ;  begin
for j:=1 to 100 do
begin
i:=50;
while i<=800 do
begin
ton(i,4); i:=i+10 end;end;end;
begin zm; sirenA;
end.