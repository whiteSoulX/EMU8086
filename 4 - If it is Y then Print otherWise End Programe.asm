.MODEL SMALL
.STACK 100H

.DATA
    A DB ?                

.CODE
MAIN PROC

    


    MOV AH, 1              
    INT 21H
    MOV A, AL              
    
    
    
    CMP AL,'Y'
    JE PRINT
    
    
    CMP AL,'y'
    JE PRINT 
    
    JMP END_PROG
    
    PRINT:
    MOV DL,AL
    MOV AH,2
    INT 21H
    
    
    END_PROG:
    MOV AX, 4CH          
    INT 21H

MAIN ENDP
END MAIN