.MODEL SMALL
.STACK 100H

.DATA
    MSG DB "Next Semester$"
    TXT DB "CG 4.00 Confirm$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, MSG
    INT 21H

    MOV DL, 0DH
    MOV AH, 2
    INT 21H

    MOV DL, 0AH
    MOV AH, 2
    INT 21H  

    MOV AH, 9
    LEA DX, TXT
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
