.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CX, 4      
    MOV BL, 2      

PRINT:
    MOV DL, BL
    ADD DL, 30H    
    MOV AH, 2
    INT 21H

    ADD BL, 2      
    LOOP PRINT

    MOV AH, 4CH
    INT 21H 
    
MAIN ENDP
END MAIN
