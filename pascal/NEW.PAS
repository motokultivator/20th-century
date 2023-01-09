




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure;
{$F+}
procedure tsr; interrupt;
var
reg:registers;
begin


reg.ah:=30;
reg.al:=65;
intr($16,reg);





  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






