.model small       ; Define memory model as small
.stack 100h        ; Set stack size to 256 bytes (100h in hexadecimal)
.data              ; Define data segment
str1 db "The required number is: $" ; Define string data

.code              ; Start code segment

main proc          ; Start of main procedure
    mov ax,@data   ; Move address of data segment to AX register
    mov ds,ax      ; Set data segment register to the value in AX
    
    mov cx,10      ; Initialize CX register to 10 (number of iterations)
    mov bl,48      ; Initialize BL register to ASCII value of '0'
    
    lea dx,str1    ; Load effective address of str1 into DX register
    mov ah,9       ; Set AH register to 9 (DOS function for printing string)
    int 21h        ; Call DOS interrupt 21h to print the string
    
x:                 ; Start of loop labeled "x"
    mov ah,2       ; Set AH register to 2 (DOS function for printing character)
    mov dl,bl      ; Move the value in BL register (ASCII of digit) to DL register
    int 21h        ; Call DOS interrupt 21h to print the character
    
    mov dl,10      ; Move ASCII code for newline character (line feed) to DL register
    mov ah,2       ; Set AH register to 2 (DOS function for printing character)
    int 21h        ; Call DOS interrupt 21h to print the newline
    
    inc bl         ; Increment BL register to print the next digit in next iteration
    
    loop x         ; Decrement CX register and loop back to "x" label if CX != 0
   
exit:              ; Label for program exit
     mov ah,4ch   ; Set AH register to 4Ch (DOS function for program termination)
     int 21h      ; Call DOS interrupt 21h to terminate the program

main endp          ; End of main procedure
end main           ; End of program
