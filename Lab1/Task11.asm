.MODEL SMALL

.STACK 100H

.DATA
    result DW ?       ; To store the final result

.CODE
MAIN PROC

; initialize DS
MOV AX,@DATA
MOV DS,AX

; Step 1: (1 + 2)
MOV AX, 1            
ADD AX, 2        

; Step 2: (3 - 1)
MOV BX, 3          
SUB BX, 1          

; Step 3: (1 + 2) * (3 - 1)
MUL BX              

; Step 4: Divide by 5
MOV BX, 5        
XOR DX, DX       
DIV BX             

; Step 5: Add 3 and 2
ADD AX, 3           
ADD AX, 2            

; Step 6: Subtract (1 * 2)
MOV BX, 1          
MUL BX, 2         
SUB AX, BX        

; Store final result
MOV result, AX      

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
