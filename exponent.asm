.ORIG x3000
LD R1, X
LD R2, Y
AND R2, R2, #0
ADD R2, R2, #1

LOOP_CHECK BRz DONE
  ADD R1, R1, #0
  ADD R4, R2, #0

MULTIPLY  ADD R3, R3, R0
  ADD R4, R4, #-1
  BRp MULTIPLY
  ADD R2, R3, R0
  ADD R1, R1, #-1
  BRp LOOP_CHECK
DONE
  STI R2, RESULT
  HALT

X .FILL 2
Y .FILL 3
RESULT .FILL x8000

.END

; edited this inside of LC-3, so thats why it's a copy paste.
; refrence: https://www.cs.utexas.edu/~fussell/courses/cs310h/lectures/ISA.pdf
