.MODEL SMALL
.STACK 100H
.DATA
NUM1 DB ?
NL DB 13,10,"RESULT :$"
.CODE 
    START:
        MOV AX,@DATA 
        MOV DS ,AX
        
        MOV AH,1
        INT 21H
        MOV NUM1,AL
        
        INT 21H
        ADD AL,NUM1
        ;MOV AL,NUM1
        AAA
        MOV BX,AX
        
        MOV AH,1
        INT 21H
        ADD AX,BX
        AAA
        MOV BX,AX
        
        MOV AH , 09
        LEA DX,NL
        INT 21H
        
        MOV AH,2
        MOV DL,BH 
        ADD DL,46
        INT 21H
        MOV DL,BL
        ADD DL,48
        INT 21H
        
        MOV AH,4CH
        INT 21H
        
