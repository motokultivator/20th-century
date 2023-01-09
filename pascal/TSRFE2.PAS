




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure;
{$F+}
procedure tsr; interrupt;var a,b:integer;d:boolean;
begin      d:=true ; if d then begin
a:=wherex;b:=wherey;
     GotoXY(1,1); textcolor(3);
     write('doserorr#',doserror,' ',' dosexitcode#',dosexitcode, 'mem',maxavail,' ',memavail);
      textcolor(14);
     gotoXY(a,b); end;

      if port[$60]=$32 then d:=true;if port[$60]=$23 then d:=false;
  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);
end.






