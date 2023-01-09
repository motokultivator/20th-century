uses dos,crt;
var aca:char;
reg:registers;a:boolean;i:integer;
{
procedure check(VAR A: boolean);
begin  reg.ah:=2;    intr($16,reg);
a:=(reg.al AND $40)>0;
  end;


begin
FOR I:=1 TO 10 DO BEGIN
check(a) ;
write( a ); END;      READLN
end.
 { }
begin       intr($16,reg);
reg.ah:=32;
reg.ah:=23;
reg.ah:=19;
readln;
;

end.