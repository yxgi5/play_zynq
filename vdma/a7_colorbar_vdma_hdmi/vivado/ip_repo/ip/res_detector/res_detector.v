`timescale 1ns/ 1ns

module  res_detector(
    input                         reset_n    , 
    input                         clk        ,  // pclk
    input                         de         ,
    input                         vsync      ,
    input                         hsync      ,

    output   reg    [11:0]        h_size     ,
    output   reg    [11:0]        v_size     ,
    output   reg                  valid
);

//reg     [11:0]           h_size;
//reg     [11:0]           v_size;
//reg                      valid;

reg de_dd   ;
//--------------------de_dd--------------------
always @(posedge clk)
begin
    if(!reset_n)
    begin
        de_dd <= 'd0;
    end
    else
    begin
        de_dd <= de;
    end
end

wire de_pos;
assign de_pos = ~de_dd & de;
wire de_neg;
assign de_neg = de_dd & ~de;


reg vsync_dd   ;

//--------------------vsync_dd--------------------
always @(posedge clk)
begin
    if(!reset_n)
    begin
        vsync_dd <= 'd0;
    end
    else
    begin
        vsync_dd <= vsync;
    end
end

wire vs_pos;
assign vs_pos = ~vsync_dd & vsync;
wire vs_neg;
assign vs_neg = vsync_dd & ~vsync;

reg hsync_dd   ;
//--------------------hsync_dd--------------------
always @(posedge clk)
begin
    if(!reset_n)
    begin
        hsync_dd <= 'd0;
    end
    else
    begin
        hsync_dd <= hsync;
    end
end

wire hs_pos;
assign hs_pos = ~hsync_dd & hsync;
wire hs_neg;
assign hs_neg = hsync_dd & ~hsync;


reg hs_valid;
reg vs_valid;
reg de_valid;
wire valid_flag;
always @(posedge clk)
begin
    if(!reset_n)
    begin
        vs_valid <= 'd0;
    end
    else
    begin
        if(vs_pos)
        begin
            vs_valid <= 1'b1;
        end
        else if(valid_flag)
        begin
            vs_valid <= 1'b0;
        end
    end
end

always @(posedge clk)
begin
    if(!reset_n)
    begin
        hs_valid <= 'd0;
    end
    else
    begin
        if(hs_pos && vs_valid)
        begin
            hs_valid <= 1'b1;
        end
        else if(valid_flag)
        begin
            hs_valid <= 1'b0;
        end
    end
end

always @(posedge clk)
begin
    if(!reset_n)
    begin
        de_valid <= 'd0;
    end
    else
    begin
        if(de_pos && vs_valid)
        begin
            de_valid <= 1'b1;
        end
        else if(valid_flag)
        begin
            de_valid <= 1'b0;
        end
    end
end

reg [11:0]  h_size_cnt;
always @(posedge clk)begin
    if(!reset_n)
    begin
        h_size_cnt <= 'd0;
    end
    else
    begin
        if(hs_pos)
        begin
            h_size_cnt <= 'd0;
        end
        else if(de)
        begin
            h_size_cnt <= h_size_cnt + 1'b1;
        end
    end
end

reg [11:0]  v_size_cnt;
reg [11:0]  v_size_dd;
always @(posedge clk)begin
    if(!reset_n)
    begin
        v_size_cnt <= 'd0;
    end
    else
    begin
        //if(vs_pos)
        if(hs_pos && de_valid && hs_valid && vs_valid && h_size_cnt=='d0)
        begin
            v_size_cnt <= 'd0;
        end
        else if(de_valid && hs_valid && vs_valid && hs_pos && h_size_cnt!='d0)
        begin
            v_size_cnt <= v_size_cnt + 1'b1;
        end
    end
end

always @(posedge clk)begin
    if(!reset_n)
    begin
        v_size_dd  <= 'd0;
    end
    else
    begin
        v_size_dd  <= v_size_cnt;
    end
end

assign valid_flag = (v_size_dd!='d0) && ('d0 == v_size_cnt);


reg [11:0]  h_size_dd1;
reg [11:0]  h_size_dd2;
always @(posedge clk)
begin
    if(!reset_n)
    begin
        h_size_dd1 <= 'd0;
    end
    else
    begin
        if(hs_pos)
        begin
            h_size_dd1 <= h_size_cnt;
        end
    end
end

always @(posedge clk)
begin
    if(!reset_n)
    begin
        h_size_dd2 <= 'd0;
    end
    else
    begin
        h_size_dd2 <= h_size_dd1;
    end
end

reg [11:0] h_size_r;
reg [11:0] v_size_r;
always @(posedge clk)
begin
    if(!reset_n)
    begin
        h_size_r <= 'd0;
        v_size_r <= 'd0;
    end
    else
    begin
        if(valid_flag)
        begin
            h_size_r <= h_size_dd2;
            v_size_r <= v_size_dd;
        end
    end
end

reg [11:0] h_size_r_dd;
reg [11:0] v_size_r_dd;
always @(posedge clk)
begin
    if(!reset_n)
    begin
        h_size_r_dd <= 'd0;
        v_size_r_dd <= 'd0;
    end
    else
    begin
        if(vs_pos)
        begin
            h_size_r_dd <= h_size_r;
            v_size_r_dd <= v_size_r;
        end
    end
end

reg valid_r;
always @(posedge clk)
begin
    if(!reset_n)
    begin
        valid_r <= 'd0;
    end
    else
    begin
        if(valid_flag)
        begin
            valid_r <= 1'b1;
        end
        else if(vs_pos)
        begin
            valid_r <= 1'b0;
        end
    end
end

always @(posedge clk)
begin
    if(!reset_n)
    begin
        valid <= 'd0;
        h_size <= 'd0;
        v_size <= 'd0;
    end
    else
    begin
        if(h_size_r_dd != h_size_r || v_size_r_dd != v_size_r)
        begin
            valid <= 1'b0;
            h_size <= 'd0;
            v_size <= 'd0;
        end
        else if(valid_r && h_size_r_dd == h_size_r && v_size_r_dd == v_size_r && v_size_r != 'd0 && h_size_r != 'd0)
        begin
            valid <= 1'b1;
            h_size <= h_size_r;
            v_size <= v_size_r;
        end
    end
end


//always @(posedge clk)
//begin
//    if(!reset_n)
//    begin
//        data_i_r  <= 24'b0;
//        //data_i_r  <= 36'b0;
//    end
//    else
//    begin
//       data_i_r <= data_i;
//    end
//end

endmodule
