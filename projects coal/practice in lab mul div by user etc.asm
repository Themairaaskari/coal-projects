.model small
.data
.code  

;  mov al,3
;  mov bl,2
;  mul bl
;  mov dx,ax
;  add dx,48
  
;  mov ah,2
;  int 21h 
  
; code for mul 2 variable using aam 
;mov al,5
;mov bl,2
;mul bl

;AAM

;mov ch,ah
;mov cl,al
;mov dl,ch

;add dx,48
;mov ah,2
;int 21h 


;mov dl,cl 
;add dx,48
;mov ah,2
;int 21h 


; code for divmul 2 variable using aam
;mov al,20
;mov bl,4
;div bl

;AAM

;mov ch,ah
;mov cl,al
;mov dl,ch

;add dx,48
;mov ah,2
;int 21h 


;mov dl,cl 
;add dx,48
;mov ah,2
;int 21h  

;code for mul by user 

;mov ah,1
;int 21h
;sub al,48
;mov bl,al

;mov ah,1
;int 21h
;sub al,48
;mul bl


;AAM

;mov ch,ah
;mov cl,al
;mov dl,ch

;add dx,48
;mov ah,2
;int 21h 


;mov dl,cl 
;add dx,48
;mov ah,2
;int 21h 

mov ah,1
int 21h
sub al,48
mov bl,al

mov ah,1
int 21h
sub al,48
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





    
