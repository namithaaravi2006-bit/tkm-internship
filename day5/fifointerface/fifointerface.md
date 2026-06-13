<img width="1823" height="272" alt="Screenshot 2026-06-13 223343" src="https://github.com/user-attachments/assets/b8917d04-8cbe-44a7-9a25-b4dbace56119" />


## Synchronous FIFO Design and Verification

I am working on a project for a 8-bit Synchronous FIFO memory buffer using Verilog. I also made a testbench in SystemVerilog style to check how it handles writing and reading data. To keep the testbench clean and organized I used a SystemVerilog interface to bundle all the wires like clock, reset, data and flags between the testbench and the FIFO.

## Project Features

Data Size: The FIFO has 8-bit inputs and outputs.
Storage: It can hold, up to 8 data values.
Clean Code: The FIFO uses a fifo_if interface to connect everything.
Flags: It has empty indicators so it does not overflow or glitch out. The FIFO has empty flags.
