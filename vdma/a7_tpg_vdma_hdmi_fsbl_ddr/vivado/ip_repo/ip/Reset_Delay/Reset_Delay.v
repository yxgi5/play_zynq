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


module	Reset_Delay #
(
    parameter DELAY_TICKS = 'd500
)
(
    iCLK, 
    oRESET
);

input iCLK;
output reg oRESET;
	
reg	[19:0] count;

always @ (posedge iCLK)
begin
    if(count != DELAY_TICKS)
    begin
        count	<=	count + 20'd1;
        oRESET	<=	1'b0;
    end
    else
        oRESET	<=	1'b1;
end

endmodule