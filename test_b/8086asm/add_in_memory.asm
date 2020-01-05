;add a series of 10 bytes stores in the memory from locations
;20,000H to 20,009. Store the result immediately after the series.

CODE SEGMENT
    assume CS:Code
    
        mov ax,2000H
        mov ds,ax
    
        mov si,0000H    ;starting offset address = 0000H
        mov cx,000AH    ;10 bytes = 'A'
        mov ax,0000H    ;ax initialized to store sum
    
kcab:   add al,[si]     ;indirect register addressing
        jnc jump        ;jump if no carry
        inc ah          ;if sum is greater than 8 bit
jump:   inc si          ;point to next offset
        loop kcab       ;decrement cx by 1
        
        mov [si],ax     ;store final result in 20,009H
        
        HLT 
CODE ENDS