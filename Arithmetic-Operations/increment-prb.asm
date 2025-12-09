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
    
    MOV BL, B
    SUB BL, 30H      
    INC BL       ; BL = B + 1

    ADD AL, BL  ;A + (B + 1)     

    ADD AL, 30H

    MOV DL, AL
    MOV AH, 2
    INT 21H


    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
