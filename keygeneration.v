`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:37:55 10/13/2019 
// Design Name: 
// Module Name:    keygeneration 
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
module keygeneration(
    input [3:0 ] rn ,
    input [127 : 0 ] kin,
    output [127: 0 ] kout
    );
	    wire [31:0] w0,w1,w2,w3,tem;
                      
       assign w0 = kin[127:96];
       assign w1 = kin[95:64];
       assign w2 = kin[63:32];
       assign w3 = kin[31:0];
       
       sbox a1(w3[23:16],tem[31:24]);
       sbox a2(w3[15:8],tem[23:16]);
       sbox a3(w3[7:0],tem[15:8]);
       sbox a4(w3[31:24],tem[7:0]);
       
       assign kout[127:96]= w0 ^ tem ^ rcon(rn);
       assign kout[95:64] = w0 ^ tem ^ rcon(rn)^ w1;
       assign kout[63:32] = w0 ^ tem ^ rcon(rn)^ w1 ^ w2;
       assign kout[31:0]  = w0 ^ tem ^ rcon(rn)^ w1 ^ w2 ^ w3;
           
     function [31:0]	rcon;
      input	[3:0]	rn;
      case(rn)	
         4'h0: rcon=32'h01_00_00_00;
         4'h1: rcon=32'h02_00_00_00;
         4'h2: rcon=32'h04_00_00_00;
         4'h3: rcon=32'h08_00_00_00;
         4'h4: rcon=32'h10_00_00_00;
         4'h5: rcon=32'h20_00_00_00;
         4'h6: rcon=32'h40_00_00_00;
         4'h7: rcon=32'h80_00_00_00;
         4'h8: rcon=32'h1b_00_00_00;
         4'h9: rcon=32'h36_00_00_00;
       default: rcon=32'h00_00_00_00;
       endcase

     endfunction
endmodule
