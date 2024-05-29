.model small
.stack 100h
.data
.code
main proc

    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov cl,al
    mul bl,cl
    mov ah,2
    add bl,48
    mov dl,'='
    int 21h
    mov dl,bl
    int 21h
        
    
main endp
end main