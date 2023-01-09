uses dos,crt;
var
reg:registers;a:boolean;i:integer;
procedure check(A:boolean);
begin  reg.ah:=2;    intr($16,reg);
a:=(reg.al AND $80)>0;  end;
begin
FOR I:=1 TO 10 DO BEGIN
check(a) ;
write( a ); END;
end.