.MODEL SMALL
.STACK 100H

.DATA

A DB 38H   ; '8'  
B DB 31H   ; '1'  

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    
    MOV AL, A
    MOV BL, B

    ; Swap using temporary register
    MOV CL, AL   ; CL = A
    MOV AL, BL   ; AL = B
    MOV BL, CL   ; BL = A

    
    MOV A, AL
    MOV B, BL

    
    MOV DL, A
    MOV AH, 2
    INT 21H


    MOV DL, B
    MOV AH, 2
    INT 21H


    MOV AH, 4CH
    INT 21H  
    
MAIN ENDP
END MAIN
