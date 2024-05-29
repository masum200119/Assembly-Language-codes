.MODEL SMALL
.STACK 100H 
.DATA
MSG DB 'ENTER NUMBER OF LINES $'
VAR DB ?
   
.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
     
    MOV AH,1
    INT 21H 
    SUB AL,48
    MOV VAR,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CX,0
    MOV CL,VAR
    MOV BL,1
    
    TOP:  
    MOV CX,BX 
    
    L1:
    CMP BL,VAR
    JG EXIT
    MOV AH,2
    MOV DL,'*'
    INT 21H
    LOOP L1
    
    INC BL
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    LOOP TOP
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



