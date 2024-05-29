   
.model small
.data   
   msg db 10,13, "Enter Any Number :$"
.code
main proc 
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,msg
    int 21h  
    
    mov ah,1
    int 21h
    
    mov ch,10
    mov cl,0
    

    sub al,48
    mov bh,al  
    mov bl,1 
    
 TableLoop: 
         
    mov ah,2   
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,2
    mov dl,bh
    add dl,48  
    int 21h
     
    
    mov ah,2
    mov dl,'X'
    int 21h    
    
    mov al,bl
    mul bh
    
    AAM   
    
    PUSH ax
    
    mov ah,0
    mov al,bl
    
    AAA 
    
    mov cl,ah
    mov bl,al
    
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    
    
 OutputTable:
    
    mov dl,'='
    mov ah,2
    int 21h
    
    POP ax     
    
    mov dh,al
    mov dl,ah
    add dl,48
    mov ah,2h
    int 21h
    
    mov dl,dh 
    add dl,48
    mov ah,2
    int 21h  
    
    INC bl
    DEC ch
    CMP ch,0 
    JNE TableLoop
    
    QuitTable:
    
    mov ah,4ch
    int 21h 
    main endp
end main
