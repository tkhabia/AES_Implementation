`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:31:15 10/17/2019 
// Design Name: 
// Module Name:    round 
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
module round(
    input [3:0] rc,
    input [127 : 0] data,
    input [127 : 0] key ,
    output [127 : 0] keyout,
    output [127 : 0 ] out 
    );
	 wire [127: 0] sub , sr , mxc;
	 keygeneration k1 (rc, key,keyout);
	 substitutebyte s1 (data , sub) ; 
	 shiftrow s2 (sub, sr) ;
	 mixcol m1 (sr , mxc) ;
	 assign out  = keyout ^ mxc ; 
	 
endmodule
