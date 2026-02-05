ORG 0000H
MOV 50H, #12H     
MOV 51H, #12H   
MOV R0, 50H
MOV R1, 51H
LOOP:   MOV A, R0
        JZ A_ZERO
        MOV A, R1
        JZ B_ZERO
        DEC R0
        DEC R1
        SJMP LOOP
A_ZERO: MOV A, R1
        JZ EQUAL
        MOV 52H, #0FFH     
        SJMP STOP
B_ZERO: MOV 52H, #01H     
        SJMP STOP
EQUAL:  MOV 52H, #00H     
STOP:   SJMP STOP
END
