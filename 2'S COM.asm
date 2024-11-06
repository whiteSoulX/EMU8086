.MODEL SMALL
.STACK 100H

.DATA
    A DB 76
    B DB 5
    C DB ? 
    
.CODE
MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        
        MOV AL,A
        MOV BL,B
        NOT BL
        ADD BL,1
        ADD AL,BL
        MOV C,AL 
        
        ;DONE 2'S COMPLEMENT 
        
        MOV DL,AL ;FOR OUTPUT
        MOV AH,2
        INT 21H  
        
        
        MOV AH,4CH
        INT 21H
    MAIN ENDP
END MAIN