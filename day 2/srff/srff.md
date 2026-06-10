<img width="1632" height="922" alt="Screenshot 2026-06-10 145627" src="https://github.com/user-attachments/assets/7c125512-885e-445c-af50-9956b6f74bd1" />

Clocked SR (Set-Reset) Flip-Flop
--------------------------------
This directory contains the HDL implementation and functional verification for a Positive-Edge-Triggered SR Flip-Flop. The SR flip-flop is a fundamental sequential building block that stores a single bit of data based on "Set" (s) and "Reset" (r) command signals synchronized to a master clock.

Functional Working Principle
----------------------------
The clocked SR flip-flop updates its state logic on every rising edge of clk through three standard predictable operational profiles and one critical exception:
Hold State (s = 0, r = 0): The feedback paths inside the flip-flop remain active, latching the current value of q indefinitely across clock boundaries.
Set State (s = 1, r = 0): The internal cross-coupled logic forces the main output stage high.
Reset State (s = 0, r = 1): The output stage is driven low, effectively flushing the memory cell.
The Forbidden Condition (s = 1, r = 1): Driving both s and r high simultaneously breaks the complement behavior of standard SR structures. In hardware, this forces internal nodes into a race condition yielding an unpredictable state when inputs drop. In a behavioral simulator, this is modeled by driving the output to an unknown/uninitialized state line (X).
