.model small
.data
.code  


main proc 
    
    mov cx,5 
    
    mov dx,57 ;use 57 for odd use 56 for even
    
    
    
    l: 
     
    mov ah,2      
    int 21h
    
    
    
    dec dx
      dec dx
  
    
    loop l  
    
    
    
    main endp 
end main