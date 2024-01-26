.model small
.data
str1 db 10,13,"Enter the number: $"
str2 db 10,13,"The number is even. $"
str3 db 10,13,"The number is odd. $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,str1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,2
    div bl
    cmp ah,0
    je even
    
    lea dx,str3
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
    even:
    lea dx,str2
    mov ah,9
    int 21h
main endp
end