
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small
.stack 100h 
.data
msg db ?
msg1 db ?
  
.code  

main proc 
    mov ax,@data
    mov ds,ax
      
    mov ah,1
    int 21h
    mov msg,al
               
    mov ah,2 
    ;add msg,48
    mov dl,msg
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
       
    
    mov ah,1
    int 21h
    mov msg1,al 
    
    
    mov ah,2
    ;add msg1,48
    mov dl,msg1
    int 21h 
    
    mov ah,2
    mov bh,msg1
    add bh,msg
    mov bh,48 
    mov dl,bh
    int 21h
     
     
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main

    
    
    
    
    
 





