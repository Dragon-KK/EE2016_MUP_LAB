`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2024 09:26:23 AM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg a, b;
wire sum, carry;
half_adder ha(a, b, sum, carry );

initial begin
    a = 0; b = 0;
    #10
    a = 1;
    #10
    b = 1;
    #10
    a = 0;
    #10
    $stop;
end
endmodule
