<img width="1631" height="921" alt="Screenshot 2026-06-10 150625" src="https://github.com/user-attachments/assets/602655ce-8490-404c-81ae-bb40d394dfcc" />


4-Bit Universal Shift Register (USR)
-----------------------------------
This directory contains the HDL design and functional verification for a 4-bit Universal Shift Register. A Universal Shift Register is a highly versatile sequential logic circuit capable of storing and shifting data bidirectional (left and right) as well as loading data in parallel, depending on the selected control mode.

Functional Working Principle
----------------------------
The module multiplexes its internal flip-flop D-inputs depending on the status of the mode[1:0] bus:
Reset Dominance: When rst is asserted high, the parallel output bus is immediately cleared to 4'b0000 (h0), overriding mode selections.
Parallel Loading: When mode = 2'b11 (3 in decimal), data from parallel_in is loaded directly into the internal registers on the next rising clock edge.
Shifting Dynamics: During shifting operations, bits move sequentially by one position per clock cycle. The serial output (serial_out) reflects the bit that is pushed out of the boundary or tracks the leading edge bit depending on the internal assignment.
