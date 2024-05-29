
.Model Small
.stack 100h
.data
a db?
b db?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    