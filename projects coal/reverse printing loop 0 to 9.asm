.model small
.data
.code  


main proc 
    
    mov cx,10 ;print 10 digits
    
    mov dx,48  ;ascii for starting element printing 48 is ascii of 0 its go from 0 to9 when we apply incremet 
    
    l:  ;loop name must colon
    
    mov ah,2        ;output
    int 21h
    
    inc dx          ;increment
    
    loop l   ;loop end syntax  with name 
    
    
    
    main endp 
end main