These are all experiments in Pascal. Some are successful and some are not. The files have not been changed, we publish them as we found them on the old hard drive.

* `$.PAS` - Initialize graphics mode. This is part of a series of large graphics experiments that will be added to this directory later.
* `1.PAS` - This is a client intended to be infiltrated on a server machine, as a backdoor. It can execute the dos command or view the contents of a file.
* `ACA.PAS` - This is how the font (character map) can be replaced in DOS. This is YUSCII charset.
* `ACTIVE.PAS` & `DEACT.PAS` - Put 1/0 value at a hardcoded address in memory. It was probably been used to activate/deactivate certain features in some TSR.
* `A.PAS` - Call int16h in order to get keyboard status.
* `BORING.PAS` - A prank TSR. It moves the cursor all around the screen during you type text but doesn't ruin the console functionality.
* `CCCCC.PAS` - Writes a hardcoded string somewhere. Not sure what was the purpose of this.
* `COLOR.PAS` - A prunk, similar to BORING.PAS.
* `CRS.PAS` - A trivial program.
* `DIRTSR.PAS` - TSR experiment. It uses int9h.
* `DRUGI.PAS` - A stack "class" implementation using file, the concept of OOP in Pascal.
* `GRAPPER.PAS` - Similar to 1.PAS.
* `MN.PAS` - A trivial program.
* `M.PAS` - Use a PC Speaker in a conventional way.
* `NEW.PAS` & `NTSR.PAS` - TSR experiments with keyboard interrupt vectors and executing OS commands from the interrupt routine.
* `PROBA.PAS`, `TSR000.PAS`, `TSR01.PAS`, `TRS02.PAS`, `TSR2000.PAS`, `TSRIII.PAS`, `TSRIIII.PAS`, `TSRV.PAS`, `TSRVI.PAS`, `TSRVII.PAS`, `TSRVIII.PAS`, `TSRFE2.PAS` - This is a series of experiments of TSR which starts from an example taken from BBS.
* `RAM2.PAS` - Dump a RAM segment.
* `SCR.PAS` - The most complex TSR prank here. It takes a character screen buffer and slowly zoom-out / zoom-in every character, in a loop. It includes a zoom-out algorithm that works with character bitmaps. Everything fitted into 100 lines of code.
* `SOUNDS.PAS` - Another PC Speaker ussage.
* `SYSTEM.PAS` - How to get environment variables.
* `VVVV.PAS` - Int16h experiment.
* `X.PAS` - TSR but this time with more assemblers involved.
