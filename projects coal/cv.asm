.model small
.stack 100h
.data

a DB 'hello$'  
b DB 'Name:$'
c DB 'Maira$'
d DB 'Age: 20$'
e DB 'Qualification:$' 
f DB 'BS SE$'  
g DB 'user enter$ ' 
h DB 'CHARACTER$ '



.code
main proc
    
    
    mov ax,@data       ;import data address
    mov ds,ax          ;mov data address to another variable
    mov dl,a           ;access msg variable and mov it
    mov dx,offset a    ;use to get adres of next character 
    
 
    
     mov ah,9    ;we use 9 for string long name and 2 for single charcter
     int 21h  
 
               mov dx,10
               mov ah,2
               int 21h
               
               mov dx,13
               mov ah,2
               int 21h      
               
                mov dx,10
               mov ah,2
               int 21h
               
               mov dx,13
               mov ah,2
               int 21h  
               
                ;b
    
        mov ax,@data 
    mov ds,ax
    mov dl,b
    mov dx,offset b
    
     mov ah,9 
     int 21h 
     
     
              mov dx,032
               mov ah,2
               int 21h 
               
       
            ;c
        mov ax,@data 
    mov ds,ax
    mov dl,c
    mov dx,offset c 
    
     mov ah,9  
     int 21h   
     
     
              mov dx,10
               mov ah,2
               int 21h
               
               mov dx,13
               mov ah,2
               int 21h  
               
               
             ;d  
               
        mov ax,@data 
    mov ds,ax
    mov dl,d
    mov dx,offset d 
    
     mov ah,9    
     int 21h         
 
             mov dx,10
               mov ah,2
               int 21h
               
               mov dx,13
               mov ah,2
               int 21h
              
             ;e
        mov ax,@data 
    mov ds,ax
    mov dl,e
    mov dx,offset e
 
   
   mov ah,9    
   int 21h 
   
   
              mov dx,032
               mov ah,2
               int 21h
                          
                           mov dx,10
               mov ah,2
               int 21h
               
               mov dx,13
               mov ah,2
               int 21h
   
           ;f 
           
    mov ax,@data 
    mov ds,ax
    mov dl,f
    mov dx,offset f
 
   
   mov ah,9    
   int 21h 
   
   mov ah,1
   int 21h
   mov bx,ax
    
    
         ;g
    mov ax,@data 
    mov ds,ax
    mov dl,g
    mov dx,offset g
 
   
   mov ah,9    
   int 21h 
   
   ;output
       
   mov ah,2
   mov dx,bx
    
   int 21h 
   ;h  
   
     mov ax,@data 
    mov ds,ax
    mov dl,h
    mov dx,offset h
 
   
   mov ah,9    
   int 21h
   
   
               
               
   
main endp
end main