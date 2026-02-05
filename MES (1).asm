ORG 0000H

MOV A, #0AH       
MOV B, #64H        
MUL AB            
MOV R0, A          
MOV R1, B          
MOV A, #49H      
ADD A, R0          
MOV R0, A
MOV A, R1
ADDC A, #00H       
MOV R1, A
MOV A, R0          
MOV B, R1          

END