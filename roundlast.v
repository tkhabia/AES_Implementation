`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:41:41 10/17/2019 
// Design Name: 
// Module Name:    roundlast 
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
module roundlast(
    input [3:0]rc,
    input [127 :0] in ,
    input [127: 0 ] key,
    output [127: 0]out
    );

wire [127: 0] sub , sr , keyout ;
	 keygeneration k1 (rc, key,keyout);
	 substitutebyte s1 (in , sub) ; 
	 shiftrow s2 (sub, sr) ;
	 assign out  = keyout ^ sr; 
endmodule
