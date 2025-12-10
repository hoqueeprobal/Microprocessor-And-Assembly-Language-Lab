.MODEL SMALL
.STACK 100H  

.DATA
A DB 34H      
B DB 32H     

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, A
    SUB AL, 30H     
    DEC AL      ; AL = A - 1

    MOV BL, B
    SUB BL, 30H      

    ADD AL, BL  ; (A - 1) + B     

    ADD AL, 30H

    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
