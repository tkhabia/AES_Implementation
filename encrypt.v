`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:44:38 10/17/2019 
// Design Name: 
// Module Name:    encrypt 
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
module encrypt (
    input [127: 0] in ,
    input [127: 0 ] key,
    output [127: 0 ] out
    );
wire [127:0] o1 , o2, o3 , o4, o5 , o6 , o7 ,o8 , o9 ,o10  , key1 , key2 , key3 , key4, key5 , key6 , key7 , key8, key9; 

assign o1 = in ^ key ;
round r1 (4'b0000 , o1 , key , key1 , o2) ;
round r2 (4'b0001 , o2 , key1 , key2 , o3) ;
round r3 (4'b0010 , o3 , key2 , key3 , o4) ;
round r4 (4'b0011 , o4 , key3 , key4 , o5) ;
round r5 (4'b0100 , o5 , key4 , key5 , o6) ;
round r6 (4'b0101 , o6 , key5 , key6 , o7) ;
round r7 (4'b0110 , o7 , key6 , key7 , o8) ;
round r8 (4'b0111 , o8 , key7 , key8 , o9) ;
round r9 (4'b1000 , o9 , key8 , key9 , o10);
roundlast rl (4'b1001 ,o10,key9 , out) ;  
endmodule
