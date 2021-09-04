`timescale 1ns / 1ps

module frame_read 
#(
	parameter MEM_DATA_BITS          = 128,
	parameter READ_DATA_BITS         = 32,
//	parameter WRITE_DATA_BITS        = 32,
	parameter ADDR_BITS              = 28,
	parameter BUSRT_BITS             = 10,
	parameter BURST_SIZE             = 100
)
(
	input                            rst,                  
	input                            mem_clk,                    // external memory controller user interface clock
	
	output                           rd_burst_req,               // to external memory controller,send out a burst read request
	output[BUSRT_BITS - 1:0]         rd_burst_len,               // to external memory controller,data length of the burst read request, not bytes
	output[ADDR_BITS - 1:0]          rd_burst_addr,              // to external memory controller,base address of the burst read request 
	input                            rd_burst_data_valid,        // from external memory controller,read data valid 
	input[MEM_DATA_BITS - 1:0]       rd_burst_data,              // from external memory controller,read request data
	input                            rd_burst_finish,            // from external memory controller,burst read finish
	input                            read_clk,                   // data read module clock
	input                            read_req,                   // data read module read request,keep '1' until read_req_ack = '1'
	output                           read_req_ack,               // data read module read request response
	output                           read_finish,                // data read module read request finish
	input[ADDR_BITS - 1:0]           read_addr_0,                // data read module read request base address 0, used when read_addr_index = 0
	input[ADDR_BITS - 1:0]           read_addr_1,                // data read module read request base address 1, used when read_addr_index = 1
	input[ADDR_BITS - 1:0]           read_addr_2,                // data read module read request base address 1, used when read_addr_index = 2
	input[ADDR_BITS - 1:0]           read_addr_3,                // data read module read request base address 1, used when read_addr_index = 3
	input[1:0]                       read_addr_index,            // select valid base address from read_addr_0 read_addr_1 read_addr_2 read_addr_3
	input[ADDR_BITS - 1:0]           read_len,                   // data read module read request data length
	input                            read_en,                    // data read module read request for one data, read_data valid next clock
	output[READ_DATA_BITS  - 1:0]    read_data                   // read data
);

wire[15:0]                           wrusedw;                    // write used words
//wire[15:0]                           rdusedw;                    // read used words
wire                                 read_fifo_aclr;             // fifo Asynchronous clear
//wire                                 write_fifo_aclr;            // fifo Asynchronous clear

//instantiate an asynchronous FIFO
afifo_128i_32o_512 read_buf (
	.rst                         (read_fifo_aclr          ),                     
	.wr_clk                      (mem_clk                 ),               
	.rd_clk                      (read_clk                ),               
	.din                         (rd_burst_data           ),                     
	.wr_en                       (rd_burst_data_valid     ),                 
	.rd_en                       (read_en                 ),                 
	.dout                        (read_data               ),                   
	.full                        (                        ),                   
	.empty                       (                        ),                 
	.rd_data_count               (                        ), 
	.wr_data_count               (wrusedw                 )  
);

/*
afifo_16_512 read_buf
	(
	.rdclk                     (read_clk                   ),          // Read side clock
	.wrclk                     (mem_clk                    ),          // Write side clock
	.aclr                      (read_fifo_aclr             ),          // Asynchronous clear
	.wrreq                     (rd_burst_data_valid        ),          // Write Request
	.rdreq                     (read_en                    ),          // Read Request
	.data                      (rd_burst_data              ),          // Input Data
	.rdempty                   (                           ),          // Read side Empty flag
	.wrfull                    (                           ),          // Write side Full flag
	.rdusedw                   (                           ),          // Read Used Words
	.wrusedw                   (wrusedw                    ),          // Write Used Words
	.q                         (read_data                  )
);
*/
frame_fifo_read
#
(
	.MEM_DATA_BITS              (MEM_DATA_BITS            ),
	.ADDR_BITS                  (ADDR_BITS                ),
	.BUSRT_BITS                 (BUSRT_BITS               ),
//	.FIFO_DEPTH                 (512                      ),
	.BURST_SIZE                 (BURST_SIZE               )
)
frame_fifo_read_m0
(
	.rst                        (rst                      ),
	.mem_clk                    (mem_clk                  ),
	.rd_burst_req               (rd_burst_req             ),   
	.rd_burst_len               (rd_burst_len             ),  
	.rd_burst_addr              (rd_burst_addr            ),
	.rd_burst_data_valid        (rd_burst_data_valid      ),    
	.rd_burst_finish            (rd_burst_finish          ),
	.read_req                   (read_req                 ),
	.read_req_ack               (read_req_ack             ),
	.read_finish                (read_finish              ),
	.read_addr_0                (read_addr_0              ),
	.read_addr_1                (read_addr_1              ),
	.read_addr_2                (read_addr_2              ),
	.read_addr_3                (read_addr_3              ),
	.read_addr_index            (read_addr_index          ),    
	.read_len                   (read_len                 ),
	.fifo_aclr                  (read_fifo_aclr           ),
	.wrusedw                    (wrusedw                  )
);


endmodule

