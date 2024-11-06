.MODEL SMALL
.STACK 21H

.DATA
    NUM1 DB ?
    NUM2 DB ?
    NUM3 DB ?
    RESULT DB ?
    
    NEWLINE DB 13,10,'$'
    
.CODE
    MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    SUB AL,'0'
    MOV NUM1,AL
    
    
    MOV AH,1
    INT 21H
    SUB AL,'0'
    MOV NUM2,AL
    
    MOV AH,1
    INT 21H
    SUB AL,'0'
    MOV NUM3,AL
    
    
    ;NOW ADD AND SUB
    
    MOV AL,NUM1
    ADD AL,NUM2
    SUB AL,NUM3
    
    MOV RESULT,AL
    
    
    ; Convert result to ASCII for display 
    ADD AL, '0' 
    MOV DL, AL 
    MOV AH, 2 
    INT 21H
    
    
    ; Print newline for readability 
    MOV DX, OFFSET NEWLINE 
    MOV AH, 9 
    INT 21H
     
     
    MOV AH,4CH
    INT 21H
        
        
    MAIN ENDP
END MAIN    
   