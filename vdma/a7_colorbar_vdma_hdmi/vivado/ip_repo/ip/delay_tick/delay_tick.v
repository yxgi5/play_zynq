`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2021 10:47:00 AM
// Design Name: 
// Module Name: Reset_Delay
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


module	delay_tick #
(
    parameter DELAY_TICKS = 'd500
)
(
    clk, 
    rst_n,
    signal_in,
    signal_out
);

input clk;
input rst_n;
input signal_in;
output reg signal_out;
	
always @ (posedge clk)
begin
    if(!rst_n)
    begin
        signal_out <= 1'b0;
    end
    else
    begin
	signal_out <= signal_in;
    end
end

endmodule
