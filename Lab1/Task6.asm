.MODEL SMALL

.STACK 100H

.DATA
    A DW 1234H   
    B DW 5678H  
    C DW ?     

.CODE
MAIN PROC

; initialize DS
MOV AX,@DATA
MOV DS,AX

; Step 1: A = B - A
MOV AX, A        
MOV BX, B       
SUB BX, AX    
MOV A, BX        

; Step 2: A = -(A + 1)
MOV AX, A        
INC AX           
NEG AX            
MOV A, AX       

; Step 3: C = A + (B + 1); use INC
MOV BX, B        
INC BX           
MOV AX, A        
ADD AX, BX        
MOV C, AX        

; Step 4: A = B - (A - 1); use DEC
MOV BX, B       
MOV AX, A         
DEC AX            
SUB BX, AX       
MOV A, BX         

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
