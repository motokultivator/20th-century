




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure;
{$F+}
procedure tsr; interrupt;
begin
   if port[$60]<$80 then begin    if port[$60]=31 then
    BEGIN setintvec($9,@kbdintvec);     SWAPVECTORS;  EXEC(GETENV('COMSPEC'),'/C'+'DIR');
     SWAPVECTORS ;END;


    write('#');

      end;
  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






