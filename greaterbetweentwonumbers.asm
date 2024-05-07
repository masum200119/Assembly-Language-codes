.model small
.stack 100h
.data
a db 'greater BETWWEN $'  
B db 'greater is $'
.code
main proc
    MOV AX,@data
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    BIGGEST:
    CMP BL,BH
    JG L1
    JMP L2 
    
    L2:
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H 
    JMP EXIT  
    
    L1:
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    JMP EXIT
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

    
    




