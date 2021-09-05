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
module timing_gen #(
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
    parameter V_BACK_PORCH  = 'd36
)
( 
    input                         rst_n       , 
    input                         clk        , 
    output         reg            fv         , 
    output         reg            lv         , 
	output         reg            de         ,
    output         reg            vsync      ,
    output         reg            hsync      
);

//`define WORD_WIDTH word_width

reg [11:0] pixcnt; 
reg [11:0] linecnt;
reg [10:0] fv_cnt;
reg [11:0] color_cntr;	
reg        q_fv;
reg [7:0]  rstn_cnt;
reg [11:0] ative_line_cnt;
		 

always @(posedge clk or negedge rst_n) 
begin 
    // when rstn keeping hi less than 128 clks
	// reset these values
    if (!rst_n) 
    begin 
		fv_cnt    <= 0;  
		pixcnt    <= 12'd0; 

		linecnt   <= 12'd0;

		lv        <= 1'b0;  
		fv        <= 1'b0;  
		q_fv      <= 0;                                    

		hsync     <= 0;
		vsync     <= 0;         
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
		fv_cnt    <= (fv_cnt==11'h7FF)  ? 11'h7FF  : fv_cnt+ (~fv&q_fv);
		
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
		lv        <= (pixcnt>12'd0)   & (pixcnt<=h_active) & (linecnt> 0 & linecnt<=v_active); 
		
		// frame valid, 
		// linecnt between 0 and v_active+1
		fv        <= (linecnt>=12'd0) & (linecnt<=v_active+1);
		
		// prev fv, frame valid value in last clk
		q_fv      <= fv; 
		
		
		de        <= (pixcnt > 12'd0) & (pixcnt <= h_active) & ((linecnt > 0) & (linecnt <= v_active));

		// 
		hsync     <= (pixcnt>h_active+H_FRONT_PORCH)   & (pixcnt<=h_active+H_FRONT_PORCH+H_SYNCH); 
		
		// 
		vsync     <= (linecnt>=v_active+V_FRONT_PORCH) & (linecnt<v_active+V_FRONT_PORCH+V_SYNCH);       	   
    end 
end 		 

// count pixel when line valid
always @(posedge clk or negedge rst_n)
if(!rst_n)
	 color_cntr <= 0;
else
	 color_cntr <= lv ? color_cntr+1 : 0;

// count lines when frame valid
always @(posedge clk or negedge rst_n)
if(!rst_n)
	 ative_line_cnt <= 0;
else
	 ative_line_cnt <= fv ? (pixcnt ==h_total-1)?ative_line_cnt+1: ative_line_cnt : 0;

endmodule
