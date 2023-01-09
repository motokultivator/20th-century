uses crt;
var i:integer;ind:boolean;
begin
i:=0;ind:=true;
while ind do begin
i:=i+1;GoToXY(i,i);ind:=(wherex<>25) and (whereY<>25);
if ind then begin write('a');delay(3000);
end else write('*********')
end;
end.