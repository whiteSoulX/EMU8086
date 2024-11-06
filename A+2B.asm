.MODEL SMALL
.STACK 100H

.DATA 
    A DB 10
    B DB 35
    C DB ?
    
.CODE
    MAIN PROC 
        
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,A
    MOV BL,B
    
    ADD BL,BL
    
    ADD AL,BL
    
    MOV DL,AL
    
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
        
    
    
    
    MAIN ENDP
END MAIN     
        