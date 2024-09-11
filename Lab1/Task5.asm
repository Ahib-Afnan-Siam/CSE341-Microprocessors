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

; swap the numbers using ADD and SUB
ADD AX, BX        
SUB BX, AX       
NEG BX            
SUB AX, BX        

; store the swapped values back into memory
MOV num1, BX      
MOV num2, AX      

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
