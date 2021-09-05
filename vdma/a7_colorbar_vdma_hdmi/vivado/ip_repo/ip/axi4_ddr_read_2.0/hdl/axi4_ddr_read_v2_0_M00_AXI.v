
`timescale 1 ns / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: cz123 milinker
// Engineer: tjy
// bbs:http://www.osrc.cn
// taobao:http://osrc.taobao.com
// Create Date: 2019/02/27 22:09:55
// Design Name: MSXBO_AXI4DMA
// Module Name: MSXBO_AXI4DMA
// Project Name: MSXBO_AXI4DMA
// Copyright: msxbo Copyright (c) 2019
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
	module axi4_ddr_read_v2_0_M00_AXI #
	(
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h85000000,
		parameter  integer        C_M_AXI_BURST_LEN		    = 256			, 
		parameter  integer        C_M_AXI_ID_WIDTH			= 1				,
		parameter  integer        C_M_AXI_ADDR_WIDTH		= 32			,
		parameter  integer        C_M_AXI_DATA_WIDTH		= 128					
	)
	(

//		//user logic 
//		input   wire                               pkg_wr_areq         ,		
//		output  wire                               pkg_wr_last			,
//		input   wire [C_M_AXI_DATA_WIDTH-1 :0]     pkg_wr_data			,
//		output	wire                               pkg_wr_en			,
//		input   wire [C_M_AXI_ADDR_WIDTH-1 :0]     pkg_wr_addr			,
//		input   wire [C_M_AXI_ADDR_WIDTH-1 :0]     pkg_wr_size         , 

        input   wire                               pkg_rd_areq         ,     
		output  wire                               pkg_rd_last			,
		output  wire [C_M_AXI_DATA_WIDTH-1 :0]     pkg_rd_data			,	
		output  wire                               pkg_rd_en           ,  	
		input   wire [C_M_AXI_ADDR_WIDTH-1 :0]     pkg_rd_addr			, 	
		input   wire [C_M_AXI_ADDR_WIDTH-1 :0]     pkg_rd_size         , 			
		//input  	wire  							INIT_AXI_TXN		,
		
		input 	wire  								M_AXI_ACLK			,
		input 	wire  								M_AXI_ARESETN		,
		output 	wire [C_M_AXI_ID_WIDTH-1 : 0]		M_AXI_AWID			,	 
		output 	wire [C_M_AXI_ADDR_WIDTH-1 : 0] 	M_AXI_AWADDR		,    
		output 	wire [7 : 0]						M_AXI_AWLEN			,    
		output 	wire [2 : 0] 						M_AXI_AWSIZE		,    
		output 	wire [1 : 0] 						M_AXI_AWBURST		,    
		output 	wire  								M_AXI_AWLOCK		,    
		output 	wire [3 : 0] 						M_AXI_AWCACHE		,    
		output 	wire [2 : 0] 						M_AXI_AWPROT		,    
		output 	wire [3 : 0] 						M_AXI_AWQOS			,     
		output 	wire  								M_AXI_AWVALID		,    
		input	wire  								M_AXI_AWREADY		,    
		output  wire [C_M_AXI_DATA_WIDTH-1 : 0] 	M_AXI_WDATA			,	 
		output  wire [C_M_AXI_DATA_WIDTH/8-1 : 0] 	M_AXI_WSTRB			,	 
		output  wire  								M_AXI_WLAST			,	 			
		output  wire  								M_AXI_WVALID		,	 
		input   wire  								M_AXI_WREADY		,	 
		input   wire [C_M_AXI_ID_WIDTH-1 : 0] 		M_AXI_BID			,		
		input   wire [1 : 0] 						M_AXI_BRESP			,		
		input   wire  								M_AXI_BVALID		,	
		output  wire  								M_AXI_BREADY		,	 
		                                                                     
		output  wire [C_M_AXI_ID_WIDTH-1 : 0] 		M_AXI_ARID			,	 
		output  wire [C_M_AXI_ADDR_WIDTH-1 : 0] 	M_AXI_ARADDR		,	 	
		output  wire [7 : 0] 						M_AXI_ARLEN			,	 
		output  wire [2 : 0] 						M_AXI_ARSIZE		,	 
		output  wire [1 : 0] 						M_AXI_ARBURST		,	 
		output  wire  								M_AXI_ARLOCK		,	 
		output  wire [3 : 0] 						M_AXI_ARCACHE		,	 
		output  wire [2 : 0] 						M_AXI_ARPROT		,	 
		output  wire [3 : 0] 						M_AXI_ARQOS			,	 	   
		output  wire  								M_AXI_ARVALID		,	 
		input   wire  								M_AXI_ARREADY		,	 
		input   wire [C_M_AXI_ID_WIDTH-1 : 0] 		M_AXI_RID			,	 
		input   wire [C_M_AXI_DATA_WIDTH-1 : 0] 	M_AXI_RDATA			,	 
		input   wire [1 : 0] 						M_AXI_RRESP			,	 
		input   wire  								M_AXI_RLAST			,	 
		input   wire  								M_AXI_RVALID		,    
		output  wire  								M_AXI_RREADY			 
	);
         
	  function integer clogb2 (input integer bit_depth);              
	  begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	    end                                                           
	  endfunction                                                     

	 localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);	
	 localparam integer BURST_SIZE = C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8;	
	// AXI4LITE signals
	//AXI4 internal temp signals
//write

	reg 	[C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr	;
	reg  						 		axi_awvalid	;
	wire 	[C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata	;
	reg  								axi_wlast	;
	reg  								axi_wvalid	;
//read	
	reg 	[C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr	;
	reg  								axi_arvalid	;
	reg  								axi_rready	;
	
//	wire [C_TRANSACTIONS_NUM+2 : 0] 	burst_size_bytes;

	
	assign M_AXI_AWID		= 'b0;
	assign M_AXI_AWADDR		= C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
	assign M_AXI_AWLEN		= C_M_AXI_BURST_LEN - 1;
	assign M_AXI_AWSIZE		= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	assign M_AXI_AWBURST	= 2'b01;
	assign M_AXI_AWLOCK		= 1'b0;
	assign M_AXI_AWCACHE	= 4'b0010;
	assign M_AXI_AWPROT		= 3'h0;
	assign M_AXI_AWQOS		= 4'h0;
	assign M_AXI_AWVALID	= axi_awvalid;
	assign M_AXI_WDATA		= axi_wdata;
	assign M_AXI_WSTRB		= {(C_M_AXI_DATA_WIDTH/8){1'b1}};
	assign M_AXI_WLAST		= axi_wlast;
	assign M_AXI_WVALID		= axi_wvalid;
	assign M_AXI_BREADY		= axi_bready;
		
	assign M_AXI_ARID		= 'b0;
	assign M_AXI_ARADDR		= C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr;
	assign M_AXI_ARLEN		= C_M_AXI_BURST_LEN - 1;
	assign M_AXI_ARSIZE		= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	assign M_AXI_ARBURST	= 2'b01;
	assign M_AXI_ARLOCK		= 1'b0;
	assign M_AXI_ARCACHE	= 4'b0010;
	assign M_AXI_ARPROT		= 3'h0;
	assign M_AXI_ARQOS		= 4'h0;
	assign M_AXI_ARVALID	= axi_arvalid;
	assign M_AXI_RREADY		= axi_rready;

	
   	reg [7 :0 ]                      w_word_cnt   ; 
    reg [C_M_AXI_ADDR_WIDTH-1 : 0]   WR_BASE_ADDR  ;
    reg [C_M_AXI_ADDR_WIDTH-1 : 0]   RD_BASE_ADDR  ;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0]   wr_data_cnt   ;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0]   rd_data_cnt   ;  
    reg                              w_cycle_flag  ;
    reg                              r_cycle_flag ;
    reg                              read_data_flag;
    
	wire w_next = (axi_wvalid && M_AXI_WREADY);
	wire r_next = (M_AXI_RVALID && axi_rready);

    
//	assign pkg_wr_en      =   w_next;   
//	assign pkg_wr_last    =  (w_next && wr_data_cnt==pkg_wr_size-1);//user logic for addr update	
//	assign axi_wdata      =  pkg_wr_data;
	
	assign pkg_rd_en      =  r_next;
	assign pkg_rd_last    =  (r_next && rd_data_cnt==pkg_rd_size-1);//user logic for addr update
	assign pkg_rd_data    =  M_AXI_RDATA;

//----------------------------------------------------------------------------	
//AXI4 FULL Write
//AXI4 data is ready for axi master write to slave	

//reg w_fdma_locked;

//always @(posedge M_AXI_ACLK)
//	if(M_AXI_ARESETN == 1'b0)
//		w_fdma_locked <= 1'b0;
//	else if(w_fdma_locked==1'b0 && pkg_wr_areq== 1'b1) begin
//		w_fdma_locked <= 1'b1; 		
//	end                            
//	else if(pkg_wr_last == 1'b1)    
//		w_fdma_locked <= 1'b0;	
		
//AXI4 write burst lenth busrt addr --------------------------------------------
//always @(posedge M_AXI_ACLK)
//    if(M_AXI_ARESETN == 1'b0)
//        axi_awaddr <= 'd0;
//    else if(w_fdma_locked==1'b0 && pkg_wr_areq)    
//        axi_awaddr <= pkg_wr_addr;
//    else if(axi_awvalid == 1'b1 && M_AXI_AWREADY == 1'b1)
//        axi_awaddr <= axi_awaddr + BURST_SIZE ;  	
                	
//AXI4 write cycle flag---------------------------------------------
//always @(posedge M_AXI_ACLK)
//	if(M_AXI_ARESETN == 1'b0)
//		w_cycle_flag <= 1'b0;
//	else if(w_cycle_flag == 1'b0 && w_fdma_locked)
//		w_cycle_flag <= 1'b1;                             
//	else if(w_cycle_flag == 1'b1 && axi_wlast == 1'b1)    
//		w_cycle_flag <= 1'b0;

//AXI4 write addr valid---------------------------------------------
//always @(posedge M_AXI_ACLK)
//	if(M_AXI_ARESETN == 1'b0)
//		axi_awvalid<= 1'b0;
//	else if(w_cycle_flag == 1'b1 && M_AXI_AWREADY==1'b1)
//		axi_awvalid <= 1'b0;
//	else if(w_cycle_flag  == 1'b0 && w_fdma_locked == 1'b1)
//		axi_awvalid <= 1'b1;     
		
//AXI4 write data---------------------------------------------------		
//always @(posedge M_AXI_ACLK)
//	if(M_AXI_ARESETN  == 1'b0)
//		axi_wvalid <= 1'b0;
//	else if(w_cycle_flag  == 1'b0 && w_fdma_locked == 1'b1)
//		axi_wvalid <= 1'b1;
//	else if(w_cycle_flag == 1'b1 && axi_wlast == 1'b1)
//		axi_wvalid <= 1'b0;//

//AXI4 write data user counter for burst lenth----------------------
//always @(posedge M_AXI_ACLK)
//	if(M_AXI_ARESETN == 1'b0)
//		w_word_cnt <= 'd0;
//	else if(w_word_cnt==C_M_AXI_BURST_LEN)
//		w_word_cnt <= 'd0;
//	else if(w_next)
//		w_word_cnt <= w_word_cnt + 1'b1;            
//	else 
//		w_word_cnt <= w_word_cnt ;

//AXI4 write data user counter for frame space lenth----------------
//always @(posedge M_AXI_ACLK)
//	if(M_AXI_ARESETN == 1'b0)
//		wr_data_cnt <= 'd0;
//	else if(w_next && wr_data_cnt== pkg_wr_size-1)
//		wr_data_cnt <= 'd0;
//	else if(w_next)
//		wr_data_cnt <= wr_data_cnt + 1'b1;	
//	else
//		wr_data_cnt <= wr_data_cnt;
			
//AXI4 write data last data----------------------------------------- 
//always @(posedge M_AXI_ACLK)
//	if(M_AXI_ARESETN == 1'b0)
//		axi_wlast <= 1'b0;
//	else if(w_word_cnt == M_AXI_AWLEN-1)
//		axi_wlast <= 1'b1;
//	else
//		axi_wlast <= 1'b0;
 
assign  axi_bready = 1'b1;     		
		
//----------------------------------------------------------------------------	
//AXI4 FULL Read----------------------------------------- 	
reg r_fdma_locked;
    
always @(posedge M_AXI_ACLK)
	if(M_AXI_ARESETN == 1'b0)
		r_fdma_locked <= 1'b0;
	else if(r_fdma_locked==1'b0 && pkg_rd_areq==1'b1) begin
		r_fdma_locked <= 1'b1; 		
	end                            
	else if(pkg_rd_last == 1'b1)    
		r_fdma_locked <= 1'b0;			
//AXI4 read addr read addr burst-------------------------
always @(posedge M_AXI_ACLK)
    if(M_AXI_ARESETN == 1'b0)
        axi_araddr <='d0;
    else if(r_fdma_locked==1'b0 && pkg_rd_areq==1'b1)//pkg_rd_ardy pkg read addr is ready 
        axi_araddr <= pkg_rd_addr;
     else if(axi_arvalid == 1'b1 && M_AXI_ARREADY == 1'b1)
        axi_araddr <= axi_araddr + BURST_SIZE;	
									        
//AXI4 r_cycle_flag------------------------------------- 	
always @(posedge M_AXI_ACLK)
		if(M_AXI_ARESETN == 0)
			r_cycle_flag <= 1'b0;
	   	else if(r_fdma_locked &&  M_AXI_ARREADY && axi_arvalid ) 
            r_cycle_flag <= 1'b0;
		else if(r_fdma_locked && read_data_flag == 1'b0 )//pkg_rd_dreq pkg request to read 
			r_cycle_flag <= 1'b1;			


//AXI4 read addr valid-----------------------------------
always @(posedge M_AXI_ACLK)
		if(M_AXI_ARESETN == 1'b0)
			axi_arvalid <= 1'b0;
		else if(r_cycle_flag && axi_arvalid && M_AXI_ARREADY ) 
            axi_arvalid <= 1'b0;
		else if(r_cycle_flag && axi_arvalid == 1'b0)
			axi_arvalid <= 1'b1;

				
//AXI4 read_data_flag ready for read data----------------
always @(posedge M_AXI_ACLK)
		if(M_AXI_ARESETN == 1'b0)
			read_data_flag <= 1'b0;
		else if(r_cycle_flag && axi_arvalid && M_AXI_ARREADY)
		begin
			read_data_flag <= 1'b1;
			axi_rready     <= 1'b1;
	    end
		else if(read_data_flag && r_next && M_AXI_RLAST)
		begin
			read_data_flag <= 1'b0;
			axi_rready     <= 1'b0;
	    end

	
//AXI4 data user counter for frame space lenth-----------	
always @(posedge M_AXI_ACLK)
	if(M_AXI_ARESETN == 1'b0)
		rd_data_cnt <= 'd0;
	else if(r_next && rd_data_cnt== pkg_rd_size-1)
		rd_data_cnt <= 'd0;
	else if(r_next)
		rd_data_cnt <= rd_data_cnt + 1'b1;	
	else
		rd_data_cnt <= rd_data_cnt;	
		              

			   
endmodule

