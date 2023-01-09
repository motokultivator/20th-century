




{$M $800,0,0 }
uses Crt, Dos;
var
  KbdIntVec : Procedure; d:boolean absolute $0040:$0000;
{$F+}
procedure tsr; interrupt;var a,b:integer;
begin
a:=wherex;b:=wherey;
     GotoXY(1,1); textcolor(3);
     write('doserorr#',doserror,' ',' dosexitcode#',dosexitcode, 'mem',maxavail,' ',memavail);
      textcolor(14);
     gotoXY(a,b);


  inline ($9C);

  KbdIntVec;
end;
{$F-}
begin  while d  do begin

  GetIntVec($9,@KbdIntVec);
  SetIntVec($9,Addr(tsr));
  Keep(0);      end;
end.






