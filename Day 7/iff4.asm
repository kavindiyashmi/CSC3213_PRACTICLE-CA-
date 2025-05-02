;wite an assembly program to input three marks,calculate the average and 
;print if the student passed (average>=50)


.model small
.stack 10h
.data

 m1 db "Enter marks1  :","$"
 m2 db "Enter marks2  :","$"
 m3 db "Enter marks3  :","$"
 m5 db "Average       :","$"
 n1 db 0   ;56
 n1t db 0  ;tenth   enter the number three digit ekai t,0 gaththe
 n1o db 0
 n2 db 0
 n2t db 0
 n2o db 0
 n3 db 0
 n3t db 0
 n3o db 0
 t db 0
 a db 0
 ao db 0
  m6 db "passsed$" 
  m7 db "failed $" 
 
 .code
 
 mov ax,@data
 mov ds,ax

 mov dx,offset m1 ;....................
  
 mov ah,09h
 int 21h
 
 mov ah,01h
 int 21h

 sub al,48
 mov n1t,al
 
 mov ah,01h;enter second digit
 int 21h
 
 sub al,48
 mov n1o,al
 
 mov bl,10;move to 10
 mov al,n1t ;5
 mul bl  ;5*10 =50
 add al,n1o; 50+6=56
 
 mov n1,al ;n1=56

 mov dl,10 
 mov ah,02h;in
 int 21h ;pri
 

 mov dx,offset m2 ;...................
 mov ah,09h
 int 21h
 
 mov ah,01h
 int 21h

 sub al,48
 mov n2t,al
 
 mov ah,01h
 int 21h  ;5+48 =53
 
 sub al,48
 mov n2o,al
 
 mov bl,10 ;bl is tempory
 mov al,n2t
 mul bl
 add al,n2o
 
 mov n2,al

 mov dl,10 
 mov ah,02h
 int 21h
 
 ;...........................
 mov dx,offset m3
 mov ah,09h 
 int 21h
 
 mov ah,01h
 int 21h


 sub al,48
 mov n3t,al
 
 mov ah,01h
 int 21h  ;5+48 =53
 
 sub al,48
 mov n3o,al
 

 
 mov bl,10 ;bl is tempory
 mov al,n3t
 mul bl
 add al,n3o
 
 mov n3,al

 mov dl,10 ;next
 mov ah,02h
 int 21h
 
 
 mov dl,n1 
 add dl,n2 ;n1+n2  
 add dl,n3 ;n1+n2+n3=t
 mov t,dl
 
 mov al,t
 mov ah,00;clar ah register 
 mov bl,3 ;mov bl to 3
 div bl;al=154/3
 mov a,al;51

 mov dx,offset m5
 mov ah,09h
 int 21h
 
 mov al,a;al=51
 mov bl,10 ;bl =10
 mov ah,00
 div bl  ;al=51/10=5
 mov ao,ah
 
 mov dl,al
 add dl,48
 mov ah,02h
 int 21h
 
 mov dl,ao ;get reminder
 add dl,48
 mov ah,02h
 int 21h
 
 mov al,a
 cmp al,50 ;condition
 jge pass ;iff part
 
 
 fail:
  mov dx,offset m7
  mov ah,09h 
  int 21h
  jmp enn ;jump enn (enn is lable we get any name)
  
 
 pass:  ;ekae part
  mov dx,offset m6
  mov ah,09h 
  int 21h
  jmp enn
 
 
 enn:
 mov ah,04ch
 int 21h
 
 
 end 
 
 
 


