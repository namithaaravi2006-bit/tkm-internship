<img width="1622" height="857" alt="Screenshot 2026-06-10 135347" src="https://github.com/user-attachments/assets/85b79a88-5a82-4917-9472-35ba9440461d" />

<img width="4000" height="3000" alt="20260610_151507" src="https://github.com/user-attachments/assets/521b8ed5-f052-4118-b28b-b0f55264dee8" />





1110 Sequence Detector (Verilog FSM)
====================================

This repository has a Verilog version of a Finite State Machine that is designed to find a specific binary sequence: 1110. The design uses a kind of Finite State Machine logic that is a mix of Moore and Mealy styles. It is written in a way that's compatible with Xilinx Vivado.

## System Specifications & FSM Logic
====================================

The state machine goes through four states to find the binary sequence coming in on the input pin din.

The state machine works like this:

- This is the starting point where the system waits for the first bit to be 1.

- s1: If the system gets another 1 it moves to this state.

- s2: If the system gets a third 1 it moves to this state.

- s3: This is the state where the system has found the sequence 111. If the next bit is 0 the system knows it has found the sequence 1110 and it sets the detected flag high.

When we look at the waveform:

The system. Goes through the states one by one: idle -> s1 -> s2 -> s3.

At 100 nanoseconds when the input din becomes 0 the system checks if it is, in state s3 and if it is it sets the detected flag high. This means the 1110 sequence has been found.
