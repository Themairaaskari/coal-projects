.model small
.data
.code  


main proc 
    
    mov cx,10 ;print 10 digits
    
    mov dx,57  ;ascii for starting element printing 57 is ascii of 9 its go from 9 to0 when we apply dec 
    
    l:  ;loop name must colon
    
    mov ah,2        ;output
    int 21h
    
    dec dx          ;decrement
    
    loop l   ;loop end syntax  with name 
    
    
    
    main endp 
end main