CNT3 EQU 3FD6H
BPORT3 EQU 3FD2H

CODE SEGMENT

ASSUME CS:CODE,DS:CODE

ORG 0
START:MOV SP,4000H
MOV AL,90H
MOV DX,CNT3
OUT DX,AL
MOV AL,95H
MOV DX,BPORT3
OUT DX,AL
HLT
CODE ENDS
END START