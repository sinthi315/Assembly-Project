MASM %1,,%1;
LINK %1;
EXE2BIN %1.exe;
BIN2HEX
DEL %1.EXE
DEL *.OBJ
DEL *.BIN
DEL *.~*
