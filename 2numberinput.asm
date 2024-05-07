
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


.model small
.stack 100h  
.data

a db ? 
b db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov a,al  
    
    mov ah,1
    int 21h
    mov b,al
    
    mov ah,2
    mov al,10
    mov dl,al
    int 21h
    mov al,13
    mov dl,al
    int 21h   
    
    
    
    mov ah,2
    mov dl,a
    int 21h 
    
    mov ah,2
    mov dl,b
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main





