.model small 
.stack 100h
.data
a dw ? ;variable to store the first number
b dw ? ;variable to store the second number
str1 db 13,10, 'First number: $' 
str2 db 13,10,'Second number: $'
str3 db 13,10,"The multiplication is: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;prmpt for first number
    mov ah,9
    lea dx,str1
    int 21h  
    
    ;read the first number from user
    mov ah,1
    int 21h
    sub al,48
    mov byte ptr  a,al ;store the first number
    
    ;prmpt for first number
    mov ah,9
    lea dx,str2
    int 21h
    
    ;read the second number from user
    mov ah,1
    int 21h
    sub al,48
    mov byte ptr b,al ;store the first number
    
    ;prmpt for multiplication
    mov ah,9
    lea dx,str3
    int 21h 
    
    ;do the multiplication
    mov ax,a
    mul b 
    
    ;display the result
    mov dl,al
    add dl,48
    mov ah,2
    int 21h
    
    ;program end
    mov ah,4ch
    int 21h
main endp
end
    
    