




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure;
{$F+}
procedure tsr; interrupt;var a,b,i:integer;
begin
a:=wherex;b:=wherey;
I:=port[$60]; if i<$80 then begin     GotoXY(1,1); textcolor(i mod 15+1);
         end;
     gotoXY(a,b);


  inline ($9C);

  KbdIntVec;
end;
{$F-}
  begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






