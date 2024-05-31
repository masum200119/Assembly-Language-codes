.model small
.stack 100h
.data 
    MSG1 DB 10,13,'ENTER THE STRING:$'
    MSG2 DB 10,13,'STRING IS PALINDROME $'
    MSG3 DB 10,13,'STRING IS NOT PALINDROME $'
    STR1 DB 50 DUP(0) 
.code 
    MAIN PROC
       mov ax,@data
       mov Ds,ax
       
       mov ah,9
       lea dx,msg1
       int 21h
       
       lea si,str1
       lea di,str1
       
       mov ah,1
       
       Next:
       int 21h
       cmp al,13
       JE terminate
       mov [di],al
       inc di
       jmp Next 
       
       terminate:
       mov al,'$' 
       mov [di],al 
       
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h
       
       
       dothis: 
       dec di
       mov al,[di]
       mov ah,2
       mov dl,al
       int 21h
       cmp si,di
       je xx
       jmp dothis
        
 
XX:
    MOV AH,4CH
    INT 21H
 
       
       
       
       
        
