;Use a loop to display sum of numbers from 1 to 5(e.g.,1 2 3 4 5)

.model small
.stack 100h
.data
sum db 0
r db 0
 
 .code
 start:
  mov ax,@data
  mov ds,ax
 
  mov cl,5

  lloop:     ;cl=5
  mov dl,sum ;sum =dl=0
  add dl,cl
  mov sum,dl
  
  loop lloop
  ;sum =15
  mov al,sum  ;al=15 
  mov ah,00
  mov bl,10   ;bl=10'
  div bl       ;al=al/bl=15/10   al=1 ah=5
  mov r,ah  ;print al=1 value
 
  mov dl,al
  add dl,48
  mov ah,02h
  int 21h
  
  mov dl,r   ;r=5=dl
  add dl,48   ;dl+48=53
  mov ah,02h
  int 21h   
  

 mov ax,4c00h
 int 21h
 
 end start
  