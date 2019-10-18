`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:44 10/15/2019 
// Design Name: 
// Module Name:    substitutebyte 
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
module substitutebyte(
    input [127 :0 ] a,
    output [127 : 0 ] subbyte
    );
sbox s1(a[127:120 ] , subbyte [127:120]) ; 
sbox s2(a[119:112 ] , subbyte [119:112]) ;
sbox s3(a[111:104 ] , subbyte [111:104]) ;
sbox s4(a[103:96 ] , subbyte [103:96]) ;
sbox s5(a[95:88 ] , subbyte [95:88 ]) ;
sbox s6(a[87:80 ] , subbyte [87:80]) ;
sbox s7(a[79: 72 ] , subbyte [79: 72]) ;
sbox s8(a[71:64] , subbyte [71:64]) ;
sbox s9(a[63: 56] , subbyte [63: 56]) ;
sbox s10(a[55:48 ] , subbyte [55:48]) ;
sbox s11(a[47:40 ] , subbyte [47:40]) ;
sbox s12(a[39: 32 ] , subbyte [39: 32]) ;
sbox s13(a[31:24 ] , subbyte [31:24]) ;
sbox s14(a[23:16 ] , subbyte [23:16]) ;
sbox s15(a[15:8 ] , subbyte [15:8]) ;
sbox s16(a[7:0] , subbyte [7:0]) ;


endmodule
