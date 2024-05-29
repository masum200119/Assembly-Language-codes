.MODEL SMALL
.STACK 100H
.CODE 
MAIN PROC
    MOV BX,1  
    MOV CX,5
    
    L1:
    PUSH CX
    
    
    MOV CX,BX  
    MOV AH,2
    MOV DL,'*'
    
   L2:
    INT 21H      
    
    LOOP L2
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    INC BX
    
    POP CX
    
    LOOP L1
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



