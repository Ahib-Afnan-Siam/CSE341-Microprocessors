.MODEL SMALL

.STACK 100H

.DATA
    num1 DW 1234H    
    num2 DW 5678H    

.CODE
MAIN PROC

; initialize DS
MOV AX,@DATA
MOV DS,AX

; load the two numbers into AX and BX
MOV AX, num1       
MOV BX, num2       

; swap the values using a third register (CX)
MOV CX, AX        
MOV AX, BX         
MOV BX, CX        

; store the swapped values back into memory
MOV num1, AX      
MOV num2, BX       

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
