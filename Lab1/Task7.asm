.MODEL SMALL

.STACK 100H

.DATA
    X DW 5    
    Y DW 3    
    Z DW 2    
    result DW ? 

.CODE
MAIN PROC

; initialize DS
MOV AX,@DATA
MOV DS,AX

; Step 1: X * Y
MOV AX, X        
MOV BX, Y        
MUL BX           
MOV result, AX    

; Step 2: X / Y
MOV AX, X        
MOV BX, Y        
DIV BX        
MOV result, AX   

; Step 3: X * Y / Z
MOV AX, X        
MOV BX, Y        
MUL BX            
MOV BX, Z        
DIV BX            
MOV result, AX    

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
