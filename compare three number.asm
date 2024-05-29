.model
.stack 100h
.code
main proc
    
  mov ah,1
  int 21h
  mov bl,al
  int 21h
  mov bh,al
  int 21h
  mov cl,al
  
  cmp bl,bh
  jl lebel1 
  jge lebel2
  
lebel1:
   cmp bh,cl
  jg out1
  jmp out2
  out1:
  mov ah,2
  mov dl,bh
  int 21h
  jmp exit
  
out2:
  mov ah,2
  mov dl,cl
  int 21h
  jmp exit 
  
lebel2:
  cmp bl,cl
  jg out3
  jmp out4
 out3:
  mov ah,2
  mov dl,bl
  int 21h  
  jmp exit
  
 out4:
  mov ah,2
  mov dl,cl
  int 21h
  jmp exit
  
  
  
  
  exit:
    mov ah,4ch
    int 21h
    main endp
end main
  
  
    