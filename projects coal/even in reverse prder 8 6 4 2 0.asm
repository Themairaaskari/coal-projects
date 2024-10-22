.model small
.data
.code  


main proc 
    
    mov cx,5 
    
    mov dx,56 
    
    
    
    l: 
     
    mov ah,2      
    int 21h
    
    
    
    dec dx
      dec dx
  
    
    loop l  
    
    
    
    main endp 
end main