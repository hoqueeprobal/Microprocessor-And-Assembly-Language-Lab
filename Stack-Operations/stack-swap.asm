.MODEL SMALL
.STACK 100H 

.DATA
A DB 32H        
B DB 37H 
       
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    
    MOV AL, A
    PUSH AX
    MOV AL, B
    PUSH AX

    POP AX
    MOV A, AL
    POP AX
    MOV B, AL

    
    MOV AL, A
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AL, B
    MOV DL, AL
    MOV AH, 2
    INT 21H

    
    MOV AH, 4CH
    INT 21H 
    
MAIN ENDP
END MAIN
