/*
//1920x1080 @ 60fps @ 148.5MHz
    .h_active      ('d1920 ),
	.h_total       ('d2200 ),
	.v_active      ('d1080 ),
	.v_total       ('d1125 ),
	.H_FRONT_PORCH ('d88   ),
	.H_SYNCH       ('d44   ),
	.H_BACK_PORCH  ('d148  ),
	.V_FRONT_PORCH ('d4    ),
	.V_SYNCH       ('d5    ),
    .V_BACK_PORCH  ('d36   )


//1280 x 720 @ 60Hz @ 74.25MHz
    .h_active      ('d1280 ),
	.h_total       ('d1650 ),
	.v_active      ('d720  ),
	.v_total       ('d750  ),
	.H_FRONT_PORCH ('d110  ),
	.H_SYNCH       ('d40   ),
	.H_BACK_PORCH  ('d220  ),
	.V_FRONT_PORCH ('d5    ),
	.V_SYNCH       ('d5    ),
    .V_BACK_PORCH  ('d20   )
    
    
//1024 x 768 @ 60Hz @ 65MHz
    .h_active      ('d1024 ),
	.h_total       ('d1344 ),
	.v_active      ('d768  ),
	.v_total       ('d806  ),
	.H_FRONT_PORCH ('d24   ),
	.H_SYNCH       ('d136  ),
	.H_BACK_PORCH  ('d160  ),
	.V_FRONT_PORCH ('d3    ),
	.V_SYNCH       ('d6    ),
    .V_BACK_PORCH  ('d29   )
    
    
//800 x 600 @ 60Hz @ 40MHz
    .h_active      ('d800  ),
	.h_total       ('d1056 ),
	.v_active      ('d600  ),
	.v_total       ('d628  ),
	.H_FRONT_PORCH ('d40   ),
	.H_SYNCH       ('d128  ),
	.H_BACK_PORCH  ('d88   ),
	.V_FRONT_PORCH ('d1    ),
	.V_SYNCH       ('d4    ),
    .V_BACK_PORCH  ('d23   )


//640x480 @ 60fps @25.175MHz
    .h_active      ('d640  ),
	.h_total       ('d800  ),
	.v_active      ('d480  ),
	.v_total       ('d525  ),
	.H_FRONT_PORCH ('d16   ),
	.H_SYNCH       ('d96   ),
	.H_BACK_PORCH  ('d48   ),
	.V_FRONT_PORCH ('d10   ),
	.V_SYNCH       ('d2    ),
    .V_BACK_PORCH  ('d33   )

*/
module colorbar_gen #(
	//parameter word_width    = 'd10       ,
	
	// 1920x1080 @ 60fps @ 148.5MHz
    parameter h_active      = 'd1920     , 
    parameter h_total       = 'd2200     ,
    parameter v_active      = 'd1080     ,
    parameter v_total       = 'd1125     ,
    parameter H_FRONT_PORCH = 'd88       ,
    parameter H_SYNCH       = 'd44       ,
    parameter H_BACK_PORCH  = 'd148      ,
    parameter V_FRONT_PORCH = 'd4        ,
    parameter V_SYNCH       = 'd5        ,
    parameter V_BACK_PORCH  = 'd36       ,
    
	//parameter bayer_pattern =   'd3      ,      // 0=RGGB, 1=GRBG, 2=GBRG, 3=BGGR
	parameter input_mode    =    'd0      , // 1：直接输出 输入的数据; 0：输出的是内部产生的数据
	parameter clk2_mode      =   'd0       // 1：双pclk模式，比如模拟OV5640时候; 0：单pclk模式
//    parameter pattern_mode          =    'd0             // reserved for hbar, vbar, pattern, etc
)
( 
    input                         reset_n    , 
    input                         clk        , 
//    input   [word_width-1:0]      data_i     ,
    input   [23:0]                data_i     ,
    input   [3:0]                 pattern_mode , 
    output                        fv         , 
    output                        lv         , 
//    output  [word_width-1:0]      data       ,
    output  [23:0]                data       ,
    output                        de         ,
    output                        vsync      ,
    output                        hsync      ,
    output  [11:0]                x_cnt      ,
    output  [11:0]                y_cnt      ,
    output  [11:0]                h_cnt      ,
    output  [11:0]                v_cnt      ,
    output         reg            ready
);

//`define WORD_WIDTH word_width

reg [11:0] pixcnt; 
reg [11:0] linecnt;
reg [10:0] fv_cnt;
reg [11:0] color_cntr;	
reg        q_fv;
reg [7:0]  rstn_cnt;
reg [11:0] ative_line_cnt;


// count rstn hi every posedge clk, until rstn == 128
// it means rstn keeping hi for 128 clks
//always @(posedge clk or negedge rstn) 
//if (!rstn) 
//	 rstn_cnt <= 0;
//else
//	 rstn_cnt <= rstn_cnt[7] ? rstn_cnt : rstn_cnt+1;
		 



reg lv_r;
reg fv_r;
reg de_r;
reg q_fv_r;
reg hsync_r;
reg vsync_r;

always @(posedge clk) 
begin 
    // when rstn keeping hi less than 128 clks
	// reset these values
    if (!reset_n) 
    begin 
		fv_cnt    <= 0;  
		pixcnt    <= 12'd0; 

		linecnt   <= 12'd0;

		lv_r        <= 1'b0;  
		fv_r        <= 1'b0;  
		q_fv_r      <= 0;                                    

		hsync_r     <= 0;
		vsync_r     <= 0;         
    end
	// when rstn keeping hi more than 128 clks
    else 
	begin 
		// frame valid counter, 
		// if fv_cnt less than 'd2047, add 1 when fv=0, q_fv=1
		// else fv_cnt keeping 'd2047
		// 
		// equal to 
		// if ( fv=0 and q_fv=1), then 
		//   if (fv_cnt < 'd2047) then fv_cnt <= fv_cnt+1
		//   else fv_cnt <= fv_cnt
		//
		// tip:
		// if fv=1,q_fv=0, then ~fv&q_fv=0
		// if fv=1,q_fv=1, then ~fv&q_fv=0
		// if fv=0,q_fv=0, then ~fv&q_fv=0
		// if fv=0,q_fv=1, then ~fv&q_fv=1
		fv_cnt    <= (fv_cnt==11'h7FF)  ? 11'h7FF  : fv_cnt+ (~fv_r&q_fv_r);
		
		// pixel counter in one line, 
		// if pixcnt less than h_total, then pixcnt add 1
		// else pixcnt <= 0
		pixcnt    <= (pixcnt<h_total-1) ? pixcnt+1 : 0;  
		
		// line counter in one frame,	
		// if pixcnt == h_total-1, then
		//   if linecnt< v_total-1, then linecnt <= linecnt+1
		//   else if linecnt==v_total-1, then linecnt <= 0
		// else pixcnt < h_total-1, then linecnt <= linecnt
		linecnt   <= (linecnt==v_total-1 && pixcnt ==h_total-1)  ? 0         :  
				   (linecnt< v_total-1 && pixcnt ==h_total-1)  ? linecnt+1 : linecnt; 
		
        // line valid,
		// linecnt between 1 and v_active
		// pixcnt between 1 and h_active
		
		// dly one tick than
		lv_r        <= (pixcnt>=12'd0)   & (pixcnt < h_active) & (linecnt >= 0 & linecnt<v_active);
		//lv_r        <= (pixcnt>12'd0)   & (pixcnt<=h_active) & (linecnt>= 0 & linecnt<v_active);  
		
		// frame valid, 
		// linecnt between 0 and v_active+1
		fv_r        <= (linecnt>=12'd0) & (linecnt<v_active);
		
		// prev fv, frame valid value in last clk
		q_fv_r      <= fv_r; 
		
		// dly one tick than
		de_r        <= (pixcnt >= 12'd0) & (pixcnt < h_active) & (linecnt >= 0 & linecnt < v_active);
		//de_r        <= (pixcnt > 12'd0) & (pixcnt <= h_active) & ((linecnt >= 0) & (linecnt < v_active));

		// dly one tick than 
		hsync_r     <= (pixcnt>=h_active+H_FRONT_PORCH)   & (pixcnt<h_active+H_FRONT_PORCH+H_SYNCH); 
		//hsync     <= (pixcnt>h_active+H_FRONT_PORCH)   & (pixcnt<=h_active+H_FRONT_PORCH+H_SYNCH); 
		
		// 
		vsync_r     <= (linecnt>=v_active+V_FRONT_PORCH) & (linecnt<v_active+V_FRONT_PORCH+V_SYNCH);       	   
    end 
end 		 


reg		lv_dly_1;  
reg		fv_dly_1;
reg     de_dly_1;
reg		hsync_dly_1;
reg 	vsync_dly_1;
reg		lv_dly_2;
reg		fv_dly_2;
reg     de_dly_2;
reg		hsync_dly_2;
reg 	vsync_dly_2;

always @(posedge clk)
if(!reset_n)
begin
    lv_dly_1 <= 0;
    fv_dly_1 <= 0;
    de_dly_1 <= 0;     
    hsync_dly_1 <= 0;  
    vsync_dly_1 <= 0;  
    lv_dly_2 <= 0;     
    fv_dly_2 <= 0;  
    de_dly_2 <= 0;
    hsync_dly_2 <= 0;  
    vsync_dly_2 <= 0;  
end
else
begin
    lv_dly_1 <= lv_r;
    fv_dly_1 <= fv_r;
    hsync_dly_1 <= hsync_r;
    vsync_dly_1 <= vsync_r;
    de_dly_1 <= de_r;
    
    lv_dly_2 <= lv_dly_1;
    fv_dly_2 <= fv_dly_1;
    de_dly_2 <= de_dly_1;
    hsync_dly_2 <= hsync_dly_1;
    vsync_dly_2 <= vsync_dly_1;
end


assign fv = fv_dly_1;
assign lv = lv_dly_1;
assign de = de_dly_1;
assign hsync = hsync_dly_1;
assign vsync = vsync_dly_1;
//assign fv = fv_r;
//assign lv = lv_r;
//assign de = de_r;
//assign hsync = hsync_r;
//assign vsync = vsync_r;
//assign fv = fv_dly_2;
//assign lv = lv_dly_2;
//assign de = de_dly_2;
//assign hsync = hsync_dly_2;
//assign vsync = vsync_dly_2;

reg	[11:0]	pixcnt_dly_1;  
reg	[11:0]	linecnt_dly_1;
reg	[11:0]  color_cntr_dly_1;
reg	[11:0]  ative_line_cnt_dly_1;
reg	[11:0]	pixcnt_dly_2;  
reg	[11:0]	linecnt_dly_2;
reg	[11:0]  color_cntr_dly_2;
reg	[11:0]  ative_line_cnt_dly_2;
always @(posedge clk)
if(!reset_n)
begin
    pixcnt_dly_1<= 0;           
    linecnt_dly_1<= 0;          
    color_cntr_dly_1<= 0;      
    ative_line_cnt_dly_1<= 0;  
    pixcnt_dly_2<= 0;           
    linecnt_dly_2<= 0;          
    color_cntr_dly_2<= 0;      
    ative_line_cnt_dly_2<= 0;  
end
else
begin
    pixcnt_dly_1 <= pixcnt;
    linecnt_dly_1 <= linecnt;
    color_cntr_dly_1 <= color_cntr;
    ative_line_cnt_dly_1 <= ative_line_cnt;
    pixcnt_dly_2<= pixcnt_dly_1;           
    linecnt_dly_2<= linecnt_dly_1;          
    color_cntr_dly_2<= color_cntr_dly_1;      
    ative_line_cnt_dly_2<= ative_line_cnt_dly_1; 
end

//assign x_cnt = lv ? color_cntr+1:0;
//assign y_cnt = fv ? ative_line_cnt+1:0;
//assign x_cnt = color_cntr;
//assign y_cnt = ative_line_cnt;
//assign h_cnt = pixcnt;
//assign v_cnt = linecnt;
//assign x_cnt = color_cntr > 0 ? color_cntr - 1 : color_cntr;
//assign y_cnt = ative_line_cnt > 0 ? ative_line_cnt - 1 : ative_line_cnt;
assign x_cnt = color_cntr;
assign y_cnt = ative_line_cnt;
assign h_cnt = pixcnt_dly_2;
assign v_cnt = linecnt_dly_2;


// data <= ? times
// at least one tick delay

always @(posedge clk)
if(!reset_n)
	 ready <= 1'b0;
else
	 ready <= 1'b1;
	 
// count pixel when line valid
always @(posedge clk)
if(!reset_n)
    color_cntr <= 0;
else
    color_cntr <= lv_r ? color_cntr+1 : 0;

// count lines when frame valid
always @(posedge clk)
if(!reset_n)
	 ative_line_cnt <= 0;
else
//    ative_line_cnt <= fv ? (pixcnt ==h_total-1)?ative_line_cnt+1: ative_line_cnt : 0;
    ative_line_cnt <= fv_r ? (pixcnt_dly_2 ==h_total-1)?ative_line_cnt+1: ative_line_cnt : 0;

reg [23:0]  pix_rgb_1;
reg [23:0]  pix_rgb_2;
reg [7:0]	grid_data_1;
reg [7:0]	grid_data_2;
always @(posedge clk)
begin
	if(!reset_n)
	begin
		grid_data_1  <= 8'b0;
		grid_data_2  <= 8'b0;
	end
	else
	begin
        if((color_cntr[4]==1'b1)^(ative_line_cnt[4]==1'b1))
            grid_data_1	<=	8'h00;
        else
            grid_data_1	<=	8'hff;
        
        if((color_cntr[6]==1'b1)^(ative_line_cnt[6]==1'b1))
            grid_data_2	<=	8'h00;
        else
            grid_data_2	<=	8'hff;
	end
end

always @(posedge clk)
begin
	if(!reset_n)
	begin
		pix_rgb_1  <= 24'b0;
		// pix_rgb_1  <= 36'b0;
	end
	else
	begin
	    if (fv_r && lv_r)
	    begin
            if((color_cntr%400)<100)
            begin
                pix_rgb_1 <= {8'hFF, 8'h00, 8'h00} ;
            end
            else if((color_cntr%400)<200)
            begin
                pix_rgb_1 <= {8'h00, 8'hFF, 8'h00} ;
            end
            else if((color_cntr%400)<300)
            begin
                pix_rgb_1 <= {8'h00, 8'h00, 8'hFF} ;
            end
            else
            begin
                pix_rgb_1 <= {8'hFF, 8'hFF, 8'hFF} ;
            end
        end
        else
        begin
            pix_rgb_1 <= {8'h00, 8'h00, 8'h00} ;
        end
	end
end

always @(posedge clk)
begin
	if(!reset_n)
	begin
		pix_rgb_2  <= 24'b0;
		// pix_rgb_2  <= 36'b0;
	end
	else
	begin
	    if (fv_r && lv_r)
	    begin
            if((ative_line_cnt%400)<100)
            begin
                pix_rgb_2 <= {8'hFF, 8'h00, 8'h00} ;
            end
            else if((ative_line_cnt%400)<200)
            begin
                pix_rgb_2 <= {8'h00, 8'hFF, 8'h00} ;
            end
            else if((ative_line_cnt%400)<300)
            begin
                pix_rgb_2 <= {8'h00, 8'hFF, 8'hFF} ;
            end
            else
            begin
                pix_rgb_2 <= {8'hFF, 8'hFF, 8'hFF} ;
            end
        end
        else
        begin
            pix_rgb_2 <= {8'h00, 8'h00, 8'h00} ;
        end
	end
end

//assign data = pix_rgb;
reg [23:0] data_o;
always @(posedge clk)
//always @(*)
begin
	if(!reset_n)
	begin
        data_o = 24'b0;
	end
	else
	begin
        if(input_mode==1)
            data_o = data_i;
        else 
            case(pattern_mode)
                'd0:begin
                    data_o = pix_rgb_1;
                end
                'd1:begin
                    data_o = pix_rgb_2;
                end
                'd2:begin
                    data_o = {grid_data_1,grid_data_1,grid_data_1};
                end
                'd3:begin
                    data_o = {grid_data_2,grid_data_2,grid_data_2};
                end
                default:begin
                    data_o = 24'hff_ff_ff;
                end
            endcase
	end
end
assign data = data_o;
//assign data = color_cntr;

//reg [23:0] data_i_r;
//always @(posedge clk)
//begin
//	if(!reset_n)
//	begin
//		data_i_r  <= 24'b0;
//		//data_i_r  <= 36'b0;
//	end
//	else
//	begin
//	   data_i_r <= data_i;
//	end
//end

//assign data = input_mode? data_i_r:pix_rgb;


//ila_1 ila_1_u1(
//    .clk(clk),
    
//    .probe0(fv),
//    .probe1(lv),
//    .probe2(data),//24
//    .probe3(de),
//    .probe4(vsync),
//    .probe5(hsync),
//    .probe6(x_cnt),//12
//    .probe7(y_cnt),//12
//    .probe8(h_cnt),//12
//    .probe9(v_cnt),//12
//    .probe10(fv_r),
//    .probe11(fv_dly_1),
//    .probe12(ative_line_cnt),//12
//    .probe13(ative_line_cnt_dly_1)//12
//);

endmodule
