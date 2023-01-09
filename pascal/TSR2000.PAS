




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure; d:boolean;
{$F+}
procedure tsr; interrupt;var a,b:integer;r:registers;
begin
if (port[$60]=$32) and d  then begin d:=false ;   swapvectors; exec(GETenv('COMSPEC'),'/c'+'dir');swapvectors;end;

  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin
  d:=true;
  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






