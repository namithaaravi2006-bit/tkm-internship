<img width="512" height="266" alt="image" src="https://github.com/user-attachments/assets/6abd067d-7b54-46e9-9ca4-57d0f9ba36bc" />
<img width="1575" height="816" alt="image" src="https://github.com/user-attachments/assets/37805a4d-999f-46f4-838a-d479e7abc6f2" />
<img width="1571" height="813" alt="image" src="https://github.com/user-attachments/assets/9c458037-da94-447d-802d-bd7673d4ad5c" />

<img width="713" height="365" alt="image" src="https://github.com/user-attachments/assets/e3539e10-a851-45a8-ab23-37e03da3e28c" />





This project shows a digital hardware design idea. It is about transferring data, between a fast data producer and a slow data consumer without losing any data. To solve this problem a First-In-First-Out memory buffer, also known as a FIFO is used. The FIFO holds the data until the slower consumer is ready to process it.

System. File Structure

face_mod.v (Fast Producer): This module generates and sends 8-bit data continuously at every positive clock edge. It acts as the high-speed source.
fifo.v (Buffer Memory): This is an area-optimized memory buffer. It uses. Write pointers to store data from the producer and feed it to the consumer when needed.
mod_out.v (Slow Consumer): This module uses a 3-state Finite State Machine with states IDLE, READ_PROC. Done. It carefully reads data from the FIFO simulates a processing delay and outputs the result.
top_module.v (Top-Level Wrapper): This is the file that connects the above three modules and wires them together with a global reset signal.
top_module_tb.v (Testbench): This simulation file injects a burst of data to verify that the FIFO successfully buffers it and outputs it sequentially without dropping any initial values.
Simulation of: top_module_tb.v
