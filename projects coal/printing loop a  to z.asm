.model small
.data
.code  


main proc 
    
    mov cx,26 
    
    mov dx,97  
    
    l:  ;loop name must colon
    
    mov ah,2        ;output
    int 21h
    
    inc dx          ;increment
    
    loop l   ;loop end syntax  with name 
    
    
    
    main endp 
end main