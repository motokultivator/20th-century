




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure;
{$F+}
procedure tsr; interrupt;
begin
  if Port[$60] < $80 then
    write('h');



  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));        swapvectors;exec(getenv('comspec'),'/c'+'dir');swapvectors;
  Keep(0);
end.






