.MODEL SMALL
.STACK 100H
.DATA
A DB "1","2","3","2","3","4"
B DB "1","2","3","3","2","1"
C DB "1","2","3","2","1","3"
D DB 6 DUP(?)

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV SI,0
    MOV CX,6

SUM:
    MOV AL,A[SI]
    SUB AL,30H
    MOV BL,B[SI]
    SUB BL,30H
    MOV BH,C[SI]
    SUB BH,30H

    ADD AL,BL
    ADD AL,BH

    ADD AL,30H
    MOV D[SI],AL

    INC SI
    LOOP SUM

    MOV SI,0
    MOV CX,6

PRINT:
    MOV DL,D[SI]
    MOV AH,2
    INT 21H
    INC SI
    LOOP PRINT

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN
