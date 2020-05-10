.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'TYPE A LINE OF TEXT:$'
.CODE
   MAIN PROC
     MOV AX,@DATA
     MOV DS,AX
     
     LEA DX,MSG
     MOV AH,9
     INT 21H
     
     MOV AH,1
     INT 21H
     JMP ENTER
     
   ENTER:
     INT 21H
     CMP AL,0DH
     JNE ENTER       
       
    MOV AH,4CH
    INT 21H
    MAIN ENDP
    
END MAIN