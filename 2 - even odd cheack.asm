.MODEL SMALL
.STACK 100H

.DATA
     

.CODE
MAIN PROC

    
    MOV AL,3    ; Just Need To Update the value of AL      

    
    CMP AL, 1          
    JE OUTPUT_O        
    CMP AL, 3          
    JE OUTPUT_O       

   
    CMP AL, 2          
    JE OUTPUT_E        
    CMP AL, 4          
    JE OUTPUT_E       

    JMP END_PROGRAM    

OUTPUT_O:
    MOV DL, 'o'        
    MOV AH, 2         
    INT 21H            
    JMP END_PROGRAM    

OUTPUT_E:
    MOV DL, 'e'       
    MOV AH, 2          
    INT 21H            

END_PROGRAM:
    MOV AX, 4CH     
    INT 21H

MAIN ENDP
END MAIN
