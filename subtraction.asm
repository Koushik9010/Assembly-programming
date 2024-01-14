.model small 
.data
str1 db "Enter first number: $"
str2 db 13,10,"Enter second number: $"
str3 db 13,10,"The subtraction is: $"
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
    lea dx,str2
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    sub bl,48
    lea dx,str3
    mov ah,9
    int 21h
    sub bl,bh
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
main endp
end
