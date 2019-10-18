`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:32:12 10/12/2019 
// Design Name: 
// Module Name:    mixcolword 
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
module mixcolword(
    input [31: 0]in ,
    output [31:0]out
    );
 
wire [7:0] i1,i2,i3,i4;
assign i1 = in[31:24] ; 
assign i2 = in[23: 16];  
assign i3 =  in[15:8] ;
assign i4 =  in[7: 0] ; 
//first 
assign out[31]=i1[6] ^ i2[6] ^ i2[7] ^ i3[7] ^ i4[7];
assign out[30]=i1[5] ^ i2[5] ^ i2[6] ^ i3[6] ^ i4[6];
assign out[29]=i1[4] ^ i2[4] ^ i2[5] ^ i3[5] ^ i4[5];
assign out[28]=i1[3] ^ i1[7] ^ i2[3] ^ i2[4] ^ i2[7] ^ i3[4] ^ i4[4];
assign out[27]=i1[2] ^ i1[7] ^ i2[2] ^ i2[3] ^ i2[7] ^ i3[3] ^ i4[3];
assign out[26]=i1[1] ^ i2[1] ^ i2[2] ^ i3[2] ^ i4[2];
assign out[25]=i1[0] ^ i1[7] ^ i2[0] ^ i2[1] ^ i2[7] ^ i3[1] ^ i4[1];
assign out[24]=i1[7] ^ i2[7] ^ i2[0] ^ i3[0] ^ i4[0];

assign out[23]=i2[6] ^ i3[6] ^ i3[7] ^ i4[7] ^ i1[7];
assign out[22]=i2[5] ^ i3[5] ^ i3[6] ^ i4[6] ^ i1[6];
assign out[21]=i2[4] ^ i3[4] ^ i3[5] ^ i4[5] ^ i1[5];
assign out[20]=i2[3] ^ i2[7] ^ i3[3] ^ i3[4] ^ i3[7] ^ i4[4] ^ i1[4];
assign out[19]=i2[2] ^ i2[7] ^ i3[2] ^ i3[3] ^ i3[7] ^ i4[3] ^ i1[3];
assign out[18]=i2[1] ^ i3[1] ^ i3[2] ^ i4[2] ^ i1[2];
assign out[17]=i2[0] ^ i2[7] ^ i3[0] ^ i3[1] ^ i3[7] ^ i4[1] ^ i1[1];
assign out[16]=i2[7] ^ i3[7] ^ i3[0] ^ i4[0] ^ i1[0];

assign out[15]=i3[6] ^ i4[6] ^ i4[7] ^ i1[7] ^ i2[7];
assign out[14]=i3[5] ^ i4[5] ^ i4[6] ^ i1[6] ^ i2[6];
assign out[13]=i3[4] ^ i4[4] ^ i4[5] ^ i1[5] ^ i2[5];
assign out[12]=i3[3] ^ i3[7] ^ i4[3] ^ i4[4] ^ i4[7] ^ i1[4] ^ i2[4];
assign out[11]=i3[2] ^ i3[7] ^ i4[2] ^ i4[3] ^ i4[7] ^ i1[3] ^ i2[3];
assign out[10]=i3[1] ^ i4[1] ^ i4[2] ^ i1[2] ^ i2[2];
assign out[9]=i3[0] ^ i3[7] ^ i4[0] ^ i4[1] ^ i4[7] ^ i1[1] ^ i2[1];
assign out[8]=i3[7] ^ i4[7] ^ i4[0] ^ i1[0] ^ i2[0];

assign out[7]=i4[6] ^ i1[6] ^ i1[7] ^ i2[7] ^ i3[7];
assign out[6]=i4[5] ^ i1[5] ^ i1[6] ^ i2[6] ^ i3[6];
assign out[5]=i4[4] ^ i1[4] ^ i1[5] ^ i2[5] ^ i3[5];
assign out[4]=i4[3] ^ i4[7] ^ i1[3] ^ i1[4] ^ i1[7] ^ i2[4] ^ i3[4];
assign out[3]=i4[2] ^ i4[7] ^ i1[2] ^ i1[3] ^ i1[7] ^ i2[3] ^ i3[3];
assign out[2]=i4[1] ^ i1[1] ^ i1[2] ^ i2[2] ^ i3[2];
assign out[1]=i4[0] ^ i4[7] ^ i1[0] ^ i1[1] ^ i1[7] ^ i2[1] ^ i3[1];
assign out[0]=i4[7] ^ i1[7] ^ i1[0] ^ i2[0] ^ i3[0];

endmodule
