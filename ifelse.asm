.ORIG x3000

LD R0, R0_VAL
LD R1, R1_VAL
NOT R2, R1
ADD R2, R2, #1
ADD R2, R0, R2 
BRz IF_EQUAL

IF_EQUAL:
    AND R3, R3, #0
    ADD R3, R3, #5
    BRNZP END_IFELSE

ELSE_BLOCK:
    AND R3, R3, #0
    ADD R3, R3, #-5

END_IFELSE:
    ST R3, RESULT_ADDR
    HALT
.END
R0_VAL .FILL 6
R1_VAL .FILL 9
RESULT_ADDR .FILL x8002


; refrence: https://www.cs.utexas.edu/~fussell/courses/cs310h/lectures/ISA.pdf
