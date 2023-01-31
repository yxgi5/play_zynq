//`define COMPONENTS			3

module rgb2bayer #
(
    parameter NUM_VIDEO_COMPONENTS = 3,
    parameter SAMPLES_PER_CLOCK = 1,
    parameter MAXIMUM_DATA_WIDTH = 8,
    parameter MAXIMUM_NUMBER_OF_COLUMNS = 1280,
    parameter MAXIMUM_NUMBER_OF_ROWS = 720,
    parameter BAYER_PATTERN = "RGGB"
)
(
    ap_clk,
    ap_rst_n,
    s_axis_video_TDATA,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TDATA,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST,
    hsize,
    vsize
);


//function integer getSBytes;
//input integer w;
//input integer s;
//input integer c; 

//    if((w*s*c)%8 == 0)
//        getSBytes = (w*s*c) /8;
//    else
//        getSBytes = (w*s*c) /8 + 1;
//endfunction

//function integer getMBytes;
//input integer w;
//input integer s;

//    if((w*s)%8 == 0)
//        getMBytes = (w*s) /8;
//    else
//        getMBytes = (w*s) /8 + 1;
//endfunction

//parameter  S_AXIS_BYTES = ((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK*`COMPONENTS)%8 == 0) ? ((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK*`COMPONENTS) /8 ) : ((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK*`COMPONENTS) /8 ) + 1; 
//parameter  S_AXIS_WIDTH =  S_AXIS_BYTES * 8;
//parameter  M_AXIS_BYTES = ((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK)%8 == 0) ? ((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK) /8 ) : ((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK) /8 ) + 1; 
//parameter  M_AXIS_WIDTH =  M_AXIS_BYTES * 8;

//parameter  S_AXIS_BYTES = getSBytes(MAXIMUM_DATA_WIDTH,SAMPLES_PER_CLOCK,`COMPONENTS);
//parameter  S_AXIS_WIDTH =  S_AXIS_BYTES * 8;
//parameter  M_AXIS_BYTES = getMBytes(MAXIMUM_DATA_WIDTH,SAMPLES_PER_CLOCK);
//parameter  M_AXIS_WIDTH =  M_AXIS_BYTES * 8;

//localparam  S_AXIS_BYTES = ceiling((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK*`COMPONENTS)%8);
//localparam  S_AXIS_WIDTH =  S_AXIS_BYTES * 8;
//localparam  M_AXIS_BYTES = ceiling((MAXIMUM_DATA_WIDTH*SAMPLES_PER_CLOCK*`COMPONENTS)%8);
//localparam  M_AXIS_WIDTH =  M_AXIS_BYTES * 8;

parameter  S_AXIS_BYTES = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH*NUM_VIDEO_COMPONENTS+7)/8);
parameter  S_AXIS_WIDTH = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH*NUM_VIDEO_COMPONENTS+7)/8)*8;
parameter  M_AXIS_BYTES = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH+7)/8);
parameter  M_AXIS_WIDTH = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH+7)/8) * 8;


wire [1:0] pattern;
generate
    if (BAYER_PATTERN=="RGGB") 
        assign pattern = 2'd0;
    else if (BAYER_PATTERN=="GRBG") 
        assign pattern = 2'd1;
    else if (BAYER_PATTERN=="BGGR") 
        assign pattern = 2'd2;
    else if (BAYER_PATTERN=="GBRG") 
        assign pattern = 2'd3;
endgenerate

input   ap_clk;
input   ap_rst_n;

input  [S_AXIS_WIDTH -1:0] s_axis_video_TDATA;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
input  [S_AXIS_BYTES -1:0] s_axis_video_TKEEP;
input  [S_AXIS_BYTES -1:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [M_AXIS_WIDTH-1:0] m_axis_video_TDATA;
output   m_axis_video_TVALID;
input   m_axis_video_TREADY;
output  [M_AXIS_BYTES -1:0] m_axis_video_TKEEP;
output  [M_AXIS_BYTES -1:0] m_axis_video_TSTRB;
output  [0:0] m_axis_video_TUSER;
output  [0:0] m_axis_video_TLAST;
output  [0:0] m_axis_video_TID;
output  [0:0] m_axis_video_TDEST;
output  [31:0] hsize;
output  [31:0] vsize;


assign hsize = MAXIMUM_NUMBER_OF_COLUMNS;
assign vsize = MAXIMUM_NUMBER_OF_ROWS;

generate
    if(MAXIMUM_DATA_WIDTH==8 && SAMPLES_PER_CLOCK==1)
        rgb2bayer_8bit_1spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)
        );

    else if (MAXIMUM_DATA_WIDTH==10 && SAMPLES_PER_CLOCK==1)
        rgb2bayer_10bit_1spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)           
        );

    else if (MAXIMUM_DATA_WIDTH==12 && SAMPLES_PER_CLOCK==1)
        rgb2bayer_12bit_1spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)   
        );

    else if (MAXIMUM_DATA_WIDTH==16 && SAMPLES_PER_CLOCK==1)
        rgb2bayer_16bit_1spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)
        );
        
    if(MAXIMUM_DATA_WIDTH==8 && SAMPLES_PER_CLOCK==2)
        rgb2bayer_8bit_2spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)
        );

    else if (MAXIMUM_DATA_WIDTH==10 && SAMPLES_PER_CLOCK==2)
        rgb2bayer_10bit_2spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)           
        );

    else if (MAXIMUM_DATA_WIDTH==12 && SAMPLES_PER_CLOCK==2)
        rgb2bayer_12bit_2spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)   
        );

    else if (MAXIMUM_DATA_WIDTH==16 && SAMPLES_PER_CLOCK==2)
        rgb2bayer_16bit_2spc rgb2bayer_inst(
            .ap_clk (ap_clk),
            .ap_rst_n (ap_rst_n),
            .s_axis_video_TDATA (s_axis_video_TDATA),
            .s_axis_video_TVALID (s_axis_video_TVALID),
            .s_axis_video_TREADY (s_axis_video_TREADY),
            .s_axis_video_TKEEP (s_axis_video_TKEEP),
            .s_axis_video_TSTRB (s_axis_video_TSTRB),
            .s_axis_video_TUSER (s_axis_video_TUSER),
            .s_axis_video_TLAST (s_axis_video_TLAST),
            .s_axis_video_TID (s_axis_video_TID),
            .s_axis_video_TDEST (s_axis_video_TDEST),
            .m_axis_video_TDATA (m_axis_video_TDATA),
            .m_axis_video_TVALID (m_axis_video_TVALID),
            .m_axis_video_TREADY (m_axis_video_TREADY),
            .m_axis_video_TKEEP (m_axis_video_TKEEP),
            .m_axis_video_TSTRB (m_axis_video_TSTRB),
            .m_axis_video_TUSER (m_axis_video_TUSER),
            .m_axis_video_TLAST (m_axis_video_TLAST),
            .m_axis_video_TID (m_axis_video_TID),
            .m_axis_video_TDEST (m_axis_video_TDEST),
            .hsize_in (MAXIMUM_NUMBER_OF_COLUMNS),
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS),
            .pattern_V (pattern)
        );

endgenerate

endmodule
