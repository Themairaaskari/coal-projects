.model small
.stack 100h
.data
.code
main proc 
    
    mov dl, 'm'  
    mov ah, 2
    int 21h    
    
    mov dl, 'a'  
    mov ah, 2
    int 21h 
    
     mov dl, 'n'   
    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main