.model small
.stack 100h

.data 
n1 db 2
n2 db 4

.code
start:

mov ax,@data
mov ds,ax

mov al,n1 
mul n2 ; al=2*4

mov dl,al ;dl=8
add dl,48 ;dl=1*48=48
 ; assmbly can only print upto 10
mov ah,02h
int 21h

mov ax,4c00h
int 21h 
end start