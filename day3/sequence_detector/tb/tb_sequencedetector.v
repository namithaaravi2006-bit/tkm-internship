`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 13:45:45
// Design Name: 
// Module Name: detector1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module detector1_tb;
reg clk;
  reg reset;
  reg din;
  wire detected;
   detector1 mygate(.clk(clk),
    .reset(reset),
    .din(din),
    .detected(detected)
    );
    
    always begin
    #10 clk = ~clk;
  end

  initial begin
    clk = 0;
    reset = 1;
    din = 0;
    #25;  
    reset = 0;
    #20;  
    din = 1;
    #20;
    din = 1;
    #20;        
    din = 1;
    #20;  
    din = 0;
    #20;    
  end    
endmodule



