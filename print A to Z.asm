.model small
.stack 100h
.data
msg db 'printing A to Z $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,26
    int 21h
    mov dl,'A'
    
    leble1:
    int 21h
    inc dl
    loop leble1
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main