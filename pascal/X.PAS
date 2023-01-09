




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure;
{$F+}
procedure tsr; interrupt;
var x,y,a,b:word;
begin
  if Port[$60]= $30 then setintvec($9,@kbdintvec);



asm
mov ax,0
mov bx,0
int $33
mov ax,1
int $33
end;

asm
mov ax,3
int $33
mov x,cx
mov y,dx
end;

a:=wherex;
b:=wherey;
gotoxy(x,y);write(chr(1));
gotoxy(a,b);
  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






