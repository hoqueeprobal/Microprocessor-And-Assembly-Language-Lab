.MODEL SMALL
.STACK 100H  

.DATA
A DB "1","5","4","3","2"
B DB "3","3","2","1","6"
C DB 5 DUP (?)   
.CODE                           

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV CX,5       
    MOV SI,0
    MOV DI,4       

SUM:
    
    MOV AL,A[SI]
    SUB AL,30H

    MOV AH,B[DI]
    SUB AH,30H

    ; Add Values
    ADD AL,AH

   
    ADD AL,30H
    MOV C[SI],AL

    INC SI
    DEC DI
    LOOP SUM

    
    MOV SI,0
    MOV CX,5   
    
PRINT:
    MOV DL,C[SI]
    MOV AH,2
    INT 21H
    INC SI
    LOOP PRINT

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
