.MODEL SMALL
.STACK 100H

.DATA
    A DB ?                

.CODE
MAIN PROC

    
    MOV AH, 1              
    INT 21H
    MOV A, AL              

    
    CMP AL, 'A'            
    JL NOT_UPPERCASE       
    CMP AL, 'Z'            
    JG NOT_UPPERCASE      

    
OUTPUT_U:
    MOV DL, 'T'            
    MOV AH, 2              
    INT 21H
    JMP END_PROG  

NOT_UPPERCASE:
    MOV DL, 'F'            
    MOV AH, 2              
    INT 21H

END_PROG:
    MOV AX, 4C00H          
    INT 21H

MAIN ENDP
END MAIN
