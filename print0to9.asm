.model small
.stack 100h
.data
.code
main proc
    mov cx,10
    mov dx,48
    L1:
    
    mov ah,2
    int 21h 
    inc dx
    loop L1
    
    main endp
end main