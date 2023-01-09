




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure; d:boolean absolute $0040:$0000;
{$F+}
procedure tsr; interrupt;var a,b:integer;
begin
gotoXY(random(80),random(25))

                   ;
  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






