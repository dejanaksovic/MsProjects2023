DATA SEGMENT
    array dw 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
DATA ENDS

CODE SEGMENT
   mov ax, 9
   sort:    
   mov bx, 0;//Counter
   mov cx, [array+4*(bx)]; //Current checking element 
   mov dx, [array+4*(bx+1)];//Next element in line
   cmp cx, dx
   jl no_swap;
   ;//Swap
   mov [array+4*(bx)], dx
   mov [array+4*(bx+1)], cx
   
   no_swap:
    inc bx
    cmp bx, ax
    jg sort
    
   dec ax
   jnz sort

    
    
CODE ENDS
END