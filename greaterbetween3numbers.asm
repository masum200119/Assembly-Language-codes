.model small
.stack 100h
.data
.code
main proc
    MOV AH,1
    INT 21H
    MOV BH,AL
    INT 21H
    MOV BL,AL
    INT 21H
    MOV CL,AL
    
    L1:
    CMP BH,BL
    JG L2
    JMP L5
    
    L2:
    CMP BH,CL 
    JG L4 
    JMP L5
    
    L5:
    CMP BL,BH 
    JG L6
    JMP P1
    
    L6:
    CMP BL,CL
    JG L7
    JMP P1  
    
    P1:
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    L7:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT 
    
    L4: 
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
     