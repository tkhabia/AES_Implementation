`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:21:28 10/17/2019 
// Design Name: 
// Module Name:    aes_top 
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
module aes_top(
    input [3:0] in ,
    input [3:0] cs,
    output  [7:0] out ,
    input clk
    );
	 reg [127:0]key , text  ;
	 reg out1 [127: 0];
//	 wire out2 [127: 0]; 
//initial encrypt s1 (text , key, out1) ;
always @ (posedge clk) begin 
	case (cs)
		0:begin 
					if (key[0] === 1'bx ) key <= 0 ;  
					key[3:0] <= in; 
					key  <= key << 4 ; 
		end
		1:begin 	
				if (text[0] === 1'bx ) text = 0 ;  
					text[3:0] <= in; 
					text  <= text << 4 ;  
		end 
		2: begin 			
			
		end 
	endcase
end 
endmodule
