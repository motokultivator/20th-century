




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure;
{$F+}
procedure tsr; interrupt;
var
reg:registers;
begin



intr($9,reg);
   write(reg.ah);
   write(reg.al);




  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






