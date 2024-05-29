.model small
.stack 100h
.data
msg db 'printing 0 to 9 $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov cx,10
    int 21h
    mov dl,'0'
    
   leble1:
    int 21h
    inc dl
    mov bl,dl
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    mov dl,bl
    loop leble1 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main