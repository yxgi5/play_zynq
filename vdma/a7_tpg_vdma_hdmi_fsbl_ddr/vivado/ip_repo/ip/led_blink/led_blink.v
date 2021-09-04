`timescale 1ns / 1ps

module led_blink # (
    parameter        SYS_CYCLE      = 'd20,         //系统时钟周期20ns，频率是50MHz
    parameter        WAIT_TIME      = 'd1000000,    //ns, SYS_CYCLE的倍数, 大于等于40
    parameter        MS_HI          = 'd500,         // 对MS_CNT_MAX计数
    parameter        MS_LO          = 'd500
) 
(
    input wire         rst_n,
    input wire         clk,
    output wire        led_o
);
    
parameter     MS_CNT_MAX = WAIT_TIME/SYS_CYCLE - 1;

reg [16:0]    ms_cnt;
reg [9:0]     mod_500_cnt;
reg           led_o_reg;

always @(posedge clk)
begin
    if(!rst_n)
    begin
        ms_cnt <= 17'd0;
    end
    else
    begin
        if (ms_cnt < MS_CNT_MAX)
            ms_cnt <= ms_cnt + 17'd1;
        else
            ms_cnt <= 17'd0;
    end
end

always @(posedge clk)
begin
    if(!rst_n)
    begin
        mod_500_cnt <= 10'd0;
        led_o_reg   <= 1'b0;
    end
    else
    begin
        if(!led_o_reg)
        begin
            if(ms_cnt == MS_CNT_MAX)
            begin
                if(mod_500_cnt < MS_LO-1)
                begin
                    mod_500_cnt <= mod_500_cnt + 1'd1;
                end
                else
                begin
                    mod_500_cnt <= 10'd0;
                    led_o_reg <= 1'b1;
                end
            end
        end
        else
        begin
            if(ms_cnt == MS_CNT_MAX)
            begin
                if(mod_500_cnt < MS_HI-1)
                begin
                    mod_500_cnt <= mod_500_cnt + 1'd1;
                end
                else
                begin
                    mod_500_cnt <= 10'd0;
                    led_o_reg <= 1'b0;
                end
            end
        end
    end
end

assign led_o = led_o_reg;

endmodule
