var din,kurs:real;ch:char;dol,dint:longint;cent:byte;
begin
writeln('MENJANCICA');
write('pritisni p da unese novi kurs ili bilo sta za sadasnji');
read(ch); If CH='p' then read(kurs) else kurs:=0.2;
writeln('unesite broj dinara');read(din);dint:=trunc(din*100*kurs);dol:=dint div 100;
;cent:=(dint)mod 100;writeln('imas ',dol,' dolara i',cent,' centi');readln(ch) end.
