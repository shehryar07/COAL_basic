section .data
section .text
global _start

start:
mov ax, 1234h   
mov bx, 5678h     
xor dx, dx   
mov cx, 16       
multiply_loop:
shl ax, 1     
rcl dx, 1 
rcl bx, 1       
test ax, 1
jz no_addition   
add dx, bx
no_addition:
loop multiply_loop 

mov ax, 0x4c00    
int 0x80           