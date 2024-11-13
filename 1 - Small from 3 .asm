.MODEL SMALL
.STACK 100H

.DATA
    A DB ?
    B DB ?
    C DB ?
    MIN DB ?

.CODE
    MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV A,AL
    
    MOV AH,1
    INT 21H
    MOV B,AL
    
    MOV AH,1
    INT 21H
    MOV C,AL
     
     
     
    ; SET MIN = AL
    MOV AL,A
    MOV MIN,AL
    
    
    ; Checking A and B
    MOV AL,A
    CMP AL,B
    JLE CHECK_C
    MOV AL,B
    MOV MIN,AL
    
CHECK_C:
    ; Checking MIN and C
    MOV AL,MIN
    CMP AL,C
    JLE PRINT
    MOV AL,C
    MOV MIN,AL
    
PRINT:
    
    MOV DL,MIN
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
