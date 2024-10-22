.model small
.stack 100h
.data
.code
main proc    
    
    mov ah,1
    int 21h
    mov bx, ax  ; inputing a small case alphabet
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h  
    
    sub bx,32   ; converting into its upper case
    mov dx,bx   ; storing in data register
    
    mov ah,2
    int 21h
    
    
mov ah,4ch
int 21h
main endp
end main