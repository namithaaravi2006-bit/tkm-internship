<img width="1920" height="1080" alt="Screenshot 2026-06-09 114300" src="https://github.com/user-attachments/assets/45c00406-6064-44f5-9f7c-0f946b3a39f7" />


4-Bit Binary-Coded Decimal (BCD) Adder
-------------------------------------
A hardware implementation and simulation of a 4-Bit Binary-Coded Decimal (BCD) Adder. This circuit takes two 4-bit BCD digits and a carry-in bit, computes their decimal sum, and outputs a valid 4-bit BCD sum along with a carry-out bit.

Waveform Analysis & Test Case Verification
------------------------------------------
At the marker timestamp $34.500\text{ ns}$, we can verify the boundary-case addition logic where the inputs force the adder to its maximum valid decimal state:Inputs: * A[3:0] = 4'h9 
(Decimal 9)B[3:0] = 4'h9 
(Decimal 9)cin    = 1'b1 (Carry-in from a previous stage)
Expected Mathematical Sum:9 + 9 + 1 = 19
Expected BCD Format representation: Since 19 exceeds 9, the output must be split into a carry-out (cout = 1) representing the tens place (10), and a sum (Sum = 9) representing the ones place (9).
