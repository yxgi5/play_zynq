`timescale 1ns / 1ps

module multiplexer #
(
    parameter        WIDTH = 28
)
(
    sel,    

    in0,
    in1,

    out
);

input sel;

input [WIDTH-1:0] in0;
input [WIDTH-1:0] in1;

output [WIDTH-1:0] out;

assign out =  sel ? in1 : in0;

endmodule
