.MODEL SMALL
.STACK 100H

.DATA
A DB "EYE$"
B DB "Palindrome$"
C DB "Not Palindrome$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
   
    LEA SI, A
    MOV CX, 0

FIND:
    MOV AL, [SI]
    CMP AL, '$'
    JE FOUND
    INC CX
    INC SI
    JMP FIND

FOUND:
    LEA SI, A       
    MOV DI, CX      
    DEC DI         




CHECK:
    CMP SI, DI
    JGE ISPAL      

    MOV AL, [SI]
    MOV BL, [DI]
    CMP AL, BL
    JNE NOTPAL

    INC SI
    DEC DI
    JMP CHECK


ISPAL:
    LEA DX, B
    MOV AH, 9
    INT 21H
    JMP EXIT 
    

NOTPAL:
    LEA DX, C
    MOV AH, 9
    INT 21H
    

EXIT:
    MOV AH, 4CH
    INT 21H 
    
MAIN ENDP
END MAIN
