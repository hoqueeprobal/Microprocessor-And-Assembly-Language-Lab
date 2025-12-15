.MODEL SMALL
.STACK 100H

.DATA
A  DB  6 dup(?) 

.CODE
   MAIN PROC    
   
   MOV AX, @DATA  
   MOV DS,AX

   MOV CX, 6
   MOV SI, 0  
   
START:  
   MOV AH,1
   INT 21H
   MOV A[SI],AL  
   INC SI      
                
   LOOP START   
   
   MOV CX,6 
   MOV AH,2 
   MOV SI,0
   
PRINT:     
   MOV DL,A[SI]
   INT 21H  
   INC SI
   LOOP PRINT
   
MAIN ENDP
END MAIN