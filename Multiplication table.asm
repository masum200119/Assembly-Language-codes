.MODEL SMALL 
.STACK 100H 
.DATA 
    MESSAGE DB 0AH, 0DH, "ENTER A NUMBER: $" 
    NOTPROCESS DB 0AH, 0DH, "NOT A VALID DIGIT, CANNOT PROCES$" 
   ; AGAIN DB 0AH, 0DH, "REPEAT?(Y/N): $" 
.CODE 
 
    MAIN: 
        MOV AX, @DATA 
        MOV DS, AX 
         
        LEA DX, MESSAGE 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        MOV CH, 0AH 
        MOV CL, 00H       
         
        CMP AL, 3AH 
        JGE NOT_PRO 
        SUB AL, 30H 
        MOV BH, AL 
        MOV BL, 01H 
  NEXT: 
                    
        MOV DL, 0DH 
        MOV AH, 02H 
        INT 21H            
         
        MOV DL, 0AH 
        MOV AH, 02H 
        INT 21H            
         
        MOV DL, '0' 
        MOV AH, 02H 
        INT 21H 
         
         
        MOV DL, BH 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
                   
        MOV DL, 'X' 
        MOV AH, 02H 
        INT 21H 
         
         
        MOV AL, BL 
        MUL BH 
         
        AAM 
         
        PUSH AX 
        
         
        MOV AH, 00H 
        MOV AL, BL 
        AAA 
         
         
         
        MOV CL, AH 
        MOV BL, AL 
         
         
        MOV DL, CL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, BL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
  RESULT:       
        MOV DL, '=' 
        MOV AH, 02H 
        INT 21H 
         
       
         
        POP AX 
         
        MOV DH, AL 
        MOV DL, AH 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, DH 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
         
        
         
        INC BL 
        DEC CH 
        CMP CH, 00H 
        JNE NEXT 
        JMP QUESTION 
   NOT_PRO: 
        LEA DX, NOTPROCESS 
        MOV AH, 09H 
        INT 21H 
         
   QUESTION: 
       ; LEA DX, AGAIN 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        OR AL, 20H 
         
        CMP AL, 'y' 
        JNE EXIT 
        JMP MAIN 
   EXIT:          
        MOV AH, 04CH 
        INT 21H
     
