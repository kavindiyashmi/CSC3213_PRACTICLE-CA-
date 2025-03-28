.model small
.stack 100h

.data
  n1 db 5
  
.code
start:
  mov ax,@data
  mov ds,ax
  
  mov dl, n1   ;dl now holds 1.
  add dl, 48   ;dl becomes 1 + 48 = 49, which is the ASCII code for the character '1'.
  mov ah, 02h  ;Prepare DOS to print a character.
  int 21h      ;The character '1' is displayed on the screen.

  
  mov ax,4c00h
  int 21h
  
end start