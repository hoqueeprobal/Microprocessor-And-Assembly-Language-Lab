.MODEL SMALL
 .STACK 100H

 .DATA
   A  DB "1","2","3","4","5","6","7","8"
  
 .CODE
   MAIN PROC    
   
   MOV AX, @DATA  
   MOV DS,AX

   MOV CX,8
   MOV AH,2  
   MOV SI,0  
   
   START:
   MOV DL,A[SI] 
   
   INT 21H
   INC SI   
   LOOP START
   
MAIN ENDP
END MAIN 