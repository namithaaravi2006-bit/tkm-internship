<img width="1632" height="915" alt="Screenshot 2026-06-10 145153" src="https://github.com/user-attachments/assets/e7b20a37-c6b8-4bc2-9290-652c37a0b7a1" />


Edge-Triggered D Flip-Flop (DFF)
-------------------------------
This directory contains the HDL design and testbench simulation for a fundamental sequential logic element: a Positive-Edge-Triggered D Flip-Flop. A D flip-flop captures the value of the data input (d) at a specific moment on the clock signal (clk) and holds that value at the output (q) until the next triggering clock edge.

Functional Working Principle
----------------------------
The D Flip-Flop operates as a basic memory element synchronized to the system clock:Rising-Edge Sampling: The core logic evaluates the input d only during the transition of clk from 0 to 1 (positive edge). Whatever state d is in at that exact instant is latched and transferred to the output q.State Retention: For the rest of the clock cycle (during the clock's high phase, low phase, or falling edge), any changes to the input d are completely ignored. The output q maintains its state, serving as a stable storage mechanism.Propagation Delay: In behavioral simulations (like this functional one), the output q appears to update instantly at the clock edge. In real physical hardware, there is a minor propagation delay ($T_{co}$) before q updates.
