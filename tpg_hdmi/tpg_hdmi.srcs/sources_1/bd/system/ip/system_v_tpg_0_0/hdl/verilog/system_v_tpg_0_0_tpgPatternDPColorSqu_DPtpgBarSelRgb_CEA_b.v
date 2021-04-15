// ==============================================================
// File generated on Tue Jan 05 19:45:48 CST 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "distributed" *) module system_v_tpg_0_0_tpgPatternDPColorSqu_DPtpgBarSelRgb_CEA_b_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 6;
parameter AWIDTH = 3;
parameter MEM_SIZE = 8;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "distributed" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./system_v_tpg_0_0_tpgPatternDPColorSqu_DPtpgBarSelRgb_CEA_b_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule

`timescale 1 ns / 1 ps
module system_v_tpg_0_0_tpgPatternDPColorSqu_DPtpgBarSelRgb_CEA_b(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd6;
parameter AddressRange = 32'd8;
parameter AddressWidth = 32'd3;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



system_v_tpg_0_0_tpgPatternDPColorSqu_DPtpgBarSelRgb_CEA_b_rom system_v_tpg_0_0_tpgPatternDPColorSqu_DPtpgBarSelRgb_CEA_b_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

