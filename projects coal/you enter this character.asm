.model small
.stack 100h
.data 
msg1 DB 'The user entered $'
 msg2 DB ' character  $'
.code
main proc
   


mov ah,1
int 21h
mov bx,ax 


   ;spacing
 mov dx,32      
 mov ah,2
 int 21h 
 
 mov dx,10     ;next line
 mov ah,2
 int 21h
 
 mov dx,13      ;carriage line
 mov ah,2
 int 21h   

  ;msg1
mov ax,@data
 mov ds,ax
 mov dl,msg1
 mov dx,offset msg1 
 
 mov ah,9  ;to print in string
 int 21h 
 
 
 ;output
 mov dx,bx
 mov ah,2
int 21h
     
;msg2     
     
 mov ax,@data
 mov ds,ax
 mov dl,msg2
 mov dx,offset msg2 
 
 mov ah,9  ;to print in string
 int 21h 
 


mov ah,4ch
int 21h

main endp
end main