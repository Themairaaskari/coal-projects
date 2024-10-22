.model small
.data
.code  


mov ah,1
int 21h
sub al,48
mov bl,al



mul bl

AAM

mov ch,ah
mov cl,al
mov dl,ch

add dx,48
mov ah,2
int 21h 


mov dl,cl 
add dx,48
mov ah,2
int 21h 




