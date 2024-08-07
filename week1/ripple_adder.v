`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2024 10:07:57 AM
// Design Name: 
// Module Name: ripple_adder
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


module ripple_adder(
    sum,a,b,cin,cout
    );
    input[3:0] a;
    input[3:0] b;
    input cin;
    output[3:0] sum;
    output cout;
    wire c1,c2,c3,c4;
    half_adder TUB(a[0],b[0], sum[0],c1);
    full_adder ONE(a[1],b[1],c1,sum[1],c2);
    full_adder TWO(a[2],b[2],c2,sum[2],c3);
    full_adder THREE(a[3],b[3],c3,sum[3],c4);
    assign cout = c4;
endmodule
