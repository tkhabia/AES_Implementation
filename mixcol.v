`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:12 10/12/2019 
// Design Name: 
// Module Name:    mixcol 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mixcol(
    input [127:0] in,
    output [127:0 ]out 
    );
mixcolword m1 (in[127:96] , out [127 : 96 ]) ; 
mixcolword m2 (in[95:64] , out [95 : 64]) ; 
mixcolword m3 (in[63:32] , out [63: 32 ]) ; 
mixcolword m4 (in[31:0] , out [31: 0]) ; 

endmodule
