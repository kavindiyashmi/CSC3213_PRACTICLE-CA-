;write an aseembly  language program to read a three-digit integer from the user,and print the number

.model small
.stack 100h
.data
 
  msg db "Enter the first number :$"
  
  
  h db 0  ;1
  t db 0   ;2
  o db 0    ;3
  h1 db 0;100
  dig db 0; 123
  rh db 0 ;reminder
  rt db 0 ;ithuru 
  
  .code
  start:
  
  
  mov ax,@data
  mov ds,ax
  
  
  mov dx, offset msg;print
  mov ah,09h
  int 21h
  
  mov ah,01h ;al=1+48  =49 
  int 21h
  
  ;read f no
   mov dl,al ;we change normal value dl=49
   sub dl,48;dl=49-48=1
   mov h,dl ;h=1;eks thanya

 ;read 2nd no
   mov ah,01h
   int 21h
   
   mov dl,al
   sub dl,48
   mov t,dl;t=2
   
   ;read 3 no
    mov ah,01h 
    int 21h;al=51
  
  
   mov dl,al
   sub dl,48
   mov o,dl;o=3
   
   ;h*100=1*100=100
   mov al,h;al=h=1
   mov bl,100;bl=100
   mul bl;al=al*bl=100
   
   mov h1,al ;hl=100
   
   mov al,t  ;t=2
   mov bl,10;bl=10
   mul bl;al=al*bl=20
   mov dl,al;dl=20
   add dl,h1;dl=h1+dl=120
   add dl,o;dl=dl+o=123
   mov dig,dl;dig=123
   
   ;dig=123/100=1   r=23
   
   mov dl,10 ;next line
   mov ah,02h
   int 21h
   
   mov ah,00  ;
   mov al,dig
   mov bl,100
   div bl;al =al/bl=123\100=1 rh=23
   
   mov rh,ah
   mov dl,al
   add dl,48 
   mov ah,02h
   int 21h   
   
   mov ah,00
   mov al,rh
   mov bl,10;
   div bl  ;al=2  r=3
   
   mov rt,ah
   mov dl,al
   add dl,48
   mov ah,02h
   int 21h
   
   mov dl,rt
   add dl,48
   mov ah,02h
   int 21h
   
   
   mov ax,4c00h
   int 21h
  
  
  end start
  
 
   
   
   
  
   
   
  
  