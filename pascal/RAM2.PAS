uses crt;
var   f:text;
q:array[1..40000]of char absolute 0000:$500 ;   i:word;
begin   assign(f,'c:\pascal\RAM2.DAT');    REWRITE(F);
   for I:=1 to 40000 do     WRITE(F,Q[i])  ;
CLOSE(F);

end.