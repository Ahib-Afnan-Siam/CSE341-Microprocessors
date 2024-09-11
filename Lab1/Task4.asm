.MODEL SMALL

.STACK 100H

.DATA
    num1 DW 1234H    
    num2 DW 5678H    
    result DW ?     

.CODE
MAIN PROC

; initialize DS
MOV AX,@DATA
MOV DS,AX

; load the two numbers into AX and BX
MOV AX, num1      
MOV BX, num2       

; subtract the two numbers
SUB AX, BX        

; store the result
MOV result, AX    

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
