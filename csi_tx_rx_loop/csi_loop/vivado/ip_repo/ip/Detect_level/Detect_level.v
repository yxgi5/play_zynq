module Detect_level #(
    parameter Delay_ticks = 'd50000,
    parameter level = 1'b0
)
(
    input clk,
    input rst_n,
    
    input detect_sigal,
    output reg indicator
);

reg [31:0] cnt;

always @(posedge clk) 
begin
    if ( !rst_n )
    begin
       cnt <= 32'b0;
       indicator <= 1'b0;
    end
    else
    begin
       if (detect_sigal == level)
       begin
           cnt <= 32'b0;
           indicator <= 1'b0;
       end
       else
       begin
           if(cnt < Delay_ticks)
           begin
               cnt <= cnt + 1'b1;
               indicator <= 1'b0;
           end
           else
           begin
               indicator <= 1'b1;
               cnt <= cnt;
           end
       end
    end
end

endmodule