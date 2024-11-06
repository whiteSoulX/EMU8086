.MODEL SMALL
.STACK 100H

.DATA
    A DB ?
    
    NEWLINE DB 13,10,'$'
.CODE
    MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    
    ;converting lowercase if its Uppercase
    
    CMP AL,'A'
    JB NOT_UPPERCASE
    CMP AL,'Z'
    JA NOT_UPPERCASE
    OR AL,20H

NOT_UPPERCASE:
    MOV DL,AL
    MOV AH,2
    INT 21H
    
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H    
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    
        
    MAIN ENDP
END MAIN    