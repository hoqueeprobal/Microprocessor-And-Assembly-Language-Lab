.MODEL SMALL
.STACK 100H

.DATA
A DB 38H

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, A
    SUB AL, 30H
    
    DEC AL  ;Decrement Operation

    ADD AL, 30H

    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H  
    
MAIN ENDP
END MAIN
