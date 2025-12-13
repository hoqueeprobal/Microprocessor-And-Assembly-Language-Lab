.MODEL SMALL
.STACK 100H
.DATA 

A DB 4H
B DB 47H  
C DB "=$"

.CODE
MAIN PROC         
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV AL, A
    MOV BL, B

    CMP AL, BL
    JE EQUAL       
    JL BIGGER
    CMP BL, AL
    JL BIGGER
    JMP EXIT

BIGGER:
    MOV DL, BL
    MOV AH, 2
    INT 21H
    JMP EXIT

EQUAL:              
    MOV DL, C
    MOV AH, 2
    INT 21H
    JMP EXIT

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
