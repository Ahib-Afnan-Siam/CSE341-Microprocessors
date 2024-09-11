.MODEL SMALL

.STACK 100H

.DATA
    num1 DW 36DFH
    num2 DW 0AFH   
    num3 DW F4D5H 
    num4 DW C9A5H  
    num5 DW CA92H  
    num6 DW BAF9H  
    num7 DW C2A2H   
    num8 DW ABCDH  
    num9 DW BEDH   
    resultLow DW ? 
    resultHigh DW ?

.CODE
MAIN PROC

; initialize DS
MOV AX,@DATA
MOV DS,AX

; Operation 1: 36DF * AF
MOV AX, num1     
MOV BX, num2     
MUL BX          
MOV resultLow, AX  
MOV resultHigh, DX 

; Operation 2: F4D5 / C9A5
MOV AX, num3      
MOV BX, num4     
XOR DX, DX     
DIV BX           
MOV resultLow, AX

; Operation 3: CA92 * BAF9
MOV AX, num5    
MOV BX, num6     
MUL BX            
MOV resultLow, AX 
MOV resultHigh, DX

; Operation 4: C2A2 * ABCD / BED
MOV AX, num7     
MOV BX, num8     
MUL BX           
MOV CX, num9     
DIV CX            
MOV resultLow, AX 
MOV resultHigh, DX 

;exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
