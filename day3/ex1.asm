.model small
.stack 100h

.data 
m1 db "enter the number 1: $"
m2 db "enter the number 2: $"
m3 db "total of num1 and num2: $"
n1 db 0
n2 db 0

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset m1 ;print
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al
sub dl,48

mov n1,dl

mov dl,0ah ;nextline
mov ah,02h
int 21h

mov dx,offset m2 ;print 
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al
sub dl,48

mov n2,dl

mov dl,0ah ;nextline
mov ah,02h
int 21h

mov dx,offset m3 ;print
mov ah,09h
int 21h

mov dl,n1
add dl,n2
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h 
end start