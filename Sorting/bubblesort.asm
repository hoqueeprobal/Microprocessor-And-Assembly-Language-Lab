.MODEL SMALL
.STACK 100H    

.DATA
A DB "6","9","4","8","5"    

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV BH, 0
    MOV BL, 5

OUTER:
    CMP BH, BL
    JE EXIT
    MOV CX, 4
    MOV SI, 0

INNER:
    MOV AL, A[SI]
    MOV BL, A[SI+1]
    CMP AL, BL
    JLE SKIP
    MOV A[SI], BL
    MOV A[SI+1], AL

SKIP:
    INC SI
    LOOP INNER

    INC BH
    JMP OUTER

EXIT:
    MOV CX, 5
    MOV SI, 0

PRINT:
    MOV DL, A[SI]
    MOV AH, 2
    INT 21H
    INC SI
    LOOP PRINT

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
