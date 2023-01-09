USES DOS;
var regs:registers;
begin      asm
	mov     bx, 114h
	mov     ax, 4f02h
	int     10h

end;

with regs do begin
AH :=$4F;      {  Super VGA support   }
                AL := 05    {    Super VGA video memory window control  }
               ; BH := 00     {   Select Super VGA video memory window  }
               ; BL := 0
                       { 0 = Window A
                        1 = Window B }
              ;  DX := 1;readln;
               end;end.
