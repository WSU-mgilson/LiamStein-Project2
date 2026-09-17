.ORIG x3000
LD R1, X
LD R2, Y
AND R2, R2 #0
ADD R2, R2 #1

LOOP
  BRz DONE
  ADD R1, R1, #0
  ADD R4, R2, #0

MULTIPLY
  ADD R3, R3, #0
  ADD R4, R2, #0
  BRq MULTIPLY
  ADD R2, R3, R0
  ADD R1, R1, #-1
  BNnzp LOOP
DONE
  STI R2, RESULT
  HALT

X .FILL 2
Y .FILL 3
RESULT .FILL x8000

.END


; refrence: https://www.cs.utexas.edu/~fussell/courses/cs310h/lectures/ISA.pdf
