`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date: 2018/09/11 10:33:49
////////////////////////////////////////////////////////////////////////
module AXI4_Stream_Terminator
       (
       input s_axis_tuser,
       input s_axis_tvalid,
       input s_axis_tlast,
       input [47:0]s_axis_tdata,
       //
       output  s_axis_tready
       );
/////////////
assign  s_axis_tready=1'b1;
//////////
endmodule


