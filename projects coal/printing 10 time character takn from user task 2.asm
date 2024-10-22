.model small
.data
.code  


main proc 
    
    
    mov ah,1
    int 21h
    mov bl,al   ;store
    
    mov cx,10   ;print 10 times
    
   mov dx,bx     ;dx me ascci dal de he hum ne
     
    
    l:  
    
    mov ah,2      
    int 21h
    
              
    
    loop l 
    
    
    
    main endp 
end main