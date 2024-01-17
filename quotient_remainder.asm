.model small
.data
str1 db 13,10, "Divisor: $"
str2 db 13,10, "Dividend: $"
str3 db 13,10, "Quotient: $"
str4 db 13,10, "Remainder: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,str1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea ax,str2 
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    sub bl,48
    sub bh,48
    
    lea dx,str3
    mov ah,9
    int 21h
    
    mov al,bh
    mov ah,0
    div bl
    mov cl,ah
    add al,48
    add cl,48
    
    mov dl,al
    mov ah,2
    int 21h
    
    lea dx,str4
    mov ah,9
    int 21h
    
    mov dl,cl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end
    

