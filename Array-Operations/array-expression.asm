.MODEL SMALL
.STACK 100H   

.DATA
A DB "1","2","3","2","3","4"
B DB "1","2","3","3","2","1"
C DB "1","2","3","2","1","3"
D DB "1","1","1","1","1","1"   
RESULT DB 6 DUP(?)             

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV SI,0
    MOV CX,6       

ADDITION:
    
    MOV AL,A[SI]
    SUB AL,30H

    
    MOV BL,B[SI]
    SUB BL,30H

    ; AL = A + B
    ADD AL,BL

    
    MOV BL,C[SI]
    SUB BL,30H

    
    MOV BH,D[SI]
    SUB BH,30H

    ; BL = C + D
    ADD BL,BH    
    SUB AL,BL    ; AL = (A + B) - (C + D)

    
    ADD AL,30H
    MOV RESULT[SI],AL

    INC SI
    LOOP ADDITION

    ; Print result
    MOV SI,0
    MOV CX,6    
    
PRINT:
    MOV DL,RESULT[SI]
    MOV AH,2
    INT 21H
    INC SI
    LOOP PRINT

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN
