.MODEL SMALL
.STACK 100H 

.DATA
A DB "1","2","3","4","5"
N EQU 5   
       
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV SI,N-1     
    MOV CX,N       

REVERSE:
    MOV DL, A[SI]
    MOV AH,2
    INT 21H
    DEC SI          
    LOOP REVERSE

    MOV AH,4CH
    INT 21H   
    
MAIN ENDP
END MAIN
