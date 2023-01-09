uses dos,crt;
var i,j,jp,ip,b1,b2,s,o,s1,o1,p1,p2,d1,d2,p:word;
t:integer;            reg:registers;
type aqw=array[1..4096] of byte;
var a:^aqw;r:aqw; b:aqw;
function sim(a:byte):byte;
begin
if a=1 then sim:=4 else
if a=3 then sim:=5 else
if a=4 then sim:=1 else
sim:=a;
end;
begin

asm
mov ah,11h
mov al,30h
mov bh,6
int 10h
mov s,es
mov o,bp
end;
{         writeln(s,' ',o);}
a:=ptr(s,o);
   for t:=0 to 255 do write(chr(t));
   t:=1;             jp:=0;
repeat                                        begin

for I:=1 to 4096
do b[i]:=a^[i];
jp:=jp+t;
if jp=3 then t:=-1;
if jp=0 then t:=1;

for ip:=0 to {4096} 255 do begin
i:=ip*16+1;
if jp=1 then begin b[i]:=0;b[i+15]:=0;b[i+1]:=a^[i] or a^[i+1]  ;
   b[i+14]:=a^[i+14] or a^[i+15];
   end;
if jp=2 then begin b[i]:=0;b[i+1]:=0;b[i+14]:=0;b[i+15]:=0;
b[i+2]:=a^[i] or a^[i+1]  ;
b[i+3]:=a^[i+2];
b[i+4]:=a^[i+3];
b[i+5]:=a^[i+4];
b[i+6]:=a^[i+5];
b[i+7]:=a^[i+6] or a^[i+7];
b[i+8]:=a^[i+8] or a^[i+9];
b[i+9]:=a^[i+10];
b[i+10]:=a^[i+11];
b[i+11]:=a^[i+12];
b[i+12]:=a^[i+13];
b[i+13]:=a^[i+14] or a^[i+15]  ;
                         end;
if jp=3 then begin b[i]:=0;  b[i+1]:=0;  b[i+2]:=0;     b[i+13]:=0;   b[i+14]:=0; b[i+15]:=0;
b[i+3]:=a^[i] or a^[i+1]  ;
b[i+4]:=a^[i+2];
b[i+5]:=a^[i+3] or a^[i+4];
b[i+6]:=a^[i+5];
b[i+7]:=a^[i+6] or a^[i+7];
b[i+8]:=a^[i+8] or a^[i+9];
b[i+9]:=a^[i+10];
b[i+10]:=a^[i+11] or a^[i+12];
b[i+11]:=a^[i+13];
b[i+12]:=a^[i+14] or a^[i+15]  ;

                       end;
if jp=4 then begin b[i]:=0;  b[i+1]:=0;  b[i+2]:=0;b[i+3]:=0;b[i+12]:=0;     b[i+13]:=0;   b[i+14]:=0; b[i+15]:=0;
b[i+4]:=a^[i] or a^[i+1]  ;
b[i+5]:=a^[i+2] or a^[i+3];
b[i+6]:=a^[i+4] or a^[i+5];
b[i+7]:=a^[i+6] or a^[i+7];
b[i+7]:=a^[i+8] or a^[i+9];
b[i+8]:=a^[i+10] or a^[i+11];
b[i+9]:=a^[i+12] or a^[i+13];
b[i+10]:=a^[i+14] or a^[i+15];

end;

end;

reg.AH:=$11;
reg.bh:=16;

reg.bl:=0;
reg.cx:=255;
reg.dx:=0;
reg.es:=seg(b);
reg.bp:=ofs(b);
intr($10,reg);
delay(500);  write(jp);        end;
until false;
end.

