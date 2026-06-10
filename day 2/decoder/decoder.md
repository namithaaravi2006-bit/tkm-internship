<img width="1626" height="896" alt="Screenshot 2026-06-10 144500" src="https://github.com/user-attachments/assets/a6811263-d007-483e-bcf2-3349aed373ee" />

2-to-4 Decoder
--------------
This section documents the functional simulation behavior of the decoder_2to4 module tested via the tb_decoder_2to4 testbench in Vivado.

 Functional Working Principle
 ----------------------------
 The decoder operates based on standard combinational Boolean logic gated by the enable line.Gated Disable (tb_en = 0): When the enable signal is low, the internal AND gates of the decoder are masked. Regardless of what binary value is forced onto tb_in[1:0], the output bus tb_out[3:0] is pulled down to a flat 4'b0000.Active Decoding (tb_en = 1): When enable is driven high, the circuit decodes the 2-bit binary input into its decimal minterm equivalent. Only one output line is driven high at any given time (One-Hot behavior), governed by the following Boolean equations:$tb\_out[0] = tb\_en \cdot \overline{tb\_in[1]} \cdot \overline{tb\_in[0]}$$tb\_out[1] = tb\_en \cdot \overline{tb\_in[1]} \cdot tb\_in[0]$$tb\_out[2] = tb\_en \cdot {tb\_in[1]} \cdot \overline{tb\_in[0]}$$tb\_out[3] = tb\_en \cdot {tb\_in[1]} \cdot {tb\_in[0]}$
