uses crt;
const jt=50;
 f:array[0..6] of integer=(262,294,330,349,392,440,494);         var
 t,i:integer
;izlaz:boolean;ch:char;
procedure ton(x:integer;y:integer);
begin sound(x);delay(y);Nosound end;
begin readln(t);             while ch <> 'c'  do begin
readln(ch);
case ch of
'q': i:=0;
'w': i:=1;
 'e': i:=2;
'r': i:=3;
't': i:=4;
'y': i:=5;
'u': i:=6;
end;
ton(f[i],jt*t)  end;
end.