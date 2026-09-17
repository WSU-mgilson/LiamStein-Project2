.ORIG x3000
    AND R3, R3, #0
    AND R0, R0, #0
    LD R1, MAX_ITERS

LOOP_CHECK
    NOT R2, R1
    ADD R2, R2, #1
    ADD R2, R2, R0

    BRzp LOOP_END

LOOP_BODY
    ADD R3, R3, #5
    ADD R0, R0, #1

    BRzp LOOP_CHECK

LOOP_END
    ST R3, RESULT_ADDR
    HALT

MAX_ITERS   .FILL 10
RESULT_ADDR .FILL X8001
.END


; refrence: https://www.cs.utexas.edu/~fussell/courses/cs310h/lectures/ISA.pdf
