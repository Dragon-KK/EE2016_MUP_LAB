`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2024 09:33:20 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a, b, cin;
wire sum, cout;
full_adder fa(a, b, cin, sum, cout );

initial begin
    a = 0; b = 0; cin = 0;
    #10
    a = 1;
    #10
    b = 1;
    #10
    cin = 1;
    #10
    b = 0;
    #10
    a = 0;
    #10
    $stop;
end
endmodule
