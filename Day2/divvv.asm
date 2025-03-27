.model small
.stack 100h

.data 
n1 db 5
n2 db 2
r db ?

.code
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,n1
div n2 ; al=n1/n2=5/2

mov r,ah ;r=1
mov dl,al
add dl,48
mov ah,02h
int 21h

mov dl,10 ;nextline
mov ah,02h
int 21h

mov dl,r
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h 
end start