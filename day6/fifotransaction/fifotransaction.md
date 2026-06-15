<img width="1823" height="222" alt="Screenshot 2026-06-15 222619" src="https://github.com/user-attachments/assets/9c6962d5-6066-441f-83c2-1474b8f962c4" />

### Synchronous FIFO Design & Verification
This repository contains a parameterizable Synchronous FIFO (First-In, First-Out) memory buffer implemented in Verilog, alongside a randomized testbench environment implemented in SystemVerilog.

The design features independent write and read pointers that dynamically generate empty and full boundary flags (leaving one buffer slot empty to safely distinguish between the two states). As shown in the simulation waveform, the FIFO handles an initial reset phase, successfully blocks invalid read attempts while empty, executes a randomized burst write of data values (such as 51 and e0), and subsequently pops them out in perfect First-In, First-Out sequence as the empty flag toggles responsively.
