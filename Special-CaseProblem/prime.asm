.MODEL SMALL
.STACK 100H

.DATA
NUM DB 37H   
MSG1 DB "Prime$"
MSG2 DB "Not Prime$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM
    SUB AL, 30H       
    CMP AL, 1
    JBE NOT_PRIME     

    MOV BL, AL        
    MOV CL, 2         

CHECK:
    MOV AL, BL
    MOV AH, 0
    DIV CL
    CMP AH, 0
    JE NOT_PRIME

    INC CL
    CMP CL, BL
    JL CHECK

PRIME:
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    JMP EXIT

NOT_PRIME:
    LEA DX, MSG2
    MOV AH, 9
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H 
    
MAIN ENDP
END MAIN
