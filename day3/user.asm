.model small
.stack 100h
.data ;passing data
	m db "enter a number: $"
	n1 db 0
.code
start:
	mov ax,@data ;ax is a register
	mov ds,ax ;move ax values in to ds(data segment)
	
	mov dx,offset m ;print the m 
	mov ah,09h
	int 21h
	
	mov ah,01h ;01h for read the m 
	int 21h
	mov n1,al ;al register to read single input
	
	mov dl,0ah ;0ah ascii value for nextline
	mov ah,02h ; enter
	int 21h
	
	mov dl,n1 ;print the variable
	mov ah,02h
	int 21h
	
	mov ax,4c00h
	int 21h
end start
	