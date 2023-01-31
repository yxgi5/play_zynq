`timescale 1 ns / 1 ps 

module v_vsampler #
(
    parameter VIDEO_FORMAT = 2,
    parameter SAMPLES_PER_CLOCK = 1,
    parameter MAXIMUM_DATA_WIDTH = 8,
    parameter MAXIMUM_NUMBER_OF_COLUMNS = 1280,
    parameter MAXIMUM_NUMBER_OF_ROWS = 720,
    parameter S_AXIS_BYTES = 3,
    parameter S_AXIS_WIDTH = 24,
    parameter M_AXIS_BYTES = 3,
    parameter M_AXIS_WIDTH = 24
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
    m_axis_video_TDEST
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

//parameter NUM_VIDEO_COMPONENTS = ((VIDEO_FORMAT == "YUV 4:2:2:") || (VIDEO_FORMAT == "YUV 4:2:0:") || (VIDEO_FORMAT == "YUVA 4:2:0:")) ? 2 : 
//				((VIDEO_FORMAT == "YUV 4:4:4:") || (VIDEO_FORMAT == "RGB") || (VIDEO_FORMAT == "YUVA 4:2:2:") || (VIDEO_FORMAT == "SMPTE 352 YUV 4:2:0:")) ? 3 : 
//				((VIDEO_FORMAT == "YUVA 4:4:4:") || (VIDEO_FORMAT == "RGBA") || (VIDEO_FORMAT == "YUVD 4:2:2:") || (VIDEO_FORMAT == "YUVD 4:4:4:") || (VIDEO_FORMAT == "RGBD")) ? 4 : 1;
				
parameter NUM_VIDEO_COMPONENTS = ((VIDEO_FORMAT == 0) || (VIDEO_FORMAT == 3) || (VIDEO_FORMAT == 7)) ? 2 : 
				((VIDEO_FORMAT == 1) || (VIDEO_FORMAT == 2) || (VIDEO_FORMAT == 4) || (VIDEO_FORMAT == 11)) ? 3 : 
				((VIDEO_FORMAT == 5) || (VIDEO_FORMAT == 6) || (VIDEO_FORMAT == 8) || (VIDEO_FORMAT == 9) || (VIDEO_FORMAT == 10)) ? 4 : 1;
/*
generate
    if (VIDEO_FORMAT == "YUV 4:2:2:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 2;
    end
    else if (VIDEO_FORMAT == "YUV 4:4:4:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    else if (VIDEO_FORMAT == "RGB")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    else if (VIDEO_FORMAT == "YUV 4:2:0:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 2;
    end
    else if (VIDEO_FORMAT == "YUVA 4:2:2:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    else if (VIDEO_FORMAT == "YUVA 4:4:4:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    else if (VIDEO_FORMAT == "RGBA")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    else if (VIDEO_FORMAT == "YUVA 4:2:0:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 2;
    end
    else if (VIDEO_FORMAT == "YUVD 4:2:2:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    else if (VIDEO_FORMAT == "YUVD 4:4:4:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    else if (VIDEO_FORMAT == "RGBD")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    else if (VIDEO_FORMAT == "SMPTE 352 YUV 4:2:0:")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    else if (VIDEO_FORMAT == "Mono / Sensor")
    begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 1;
    end
endcase
endgenerate

generate
case (VIDEO_FORMAT)
    "YUV 4:2:2:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 2;
    end
    "YUV 4:4:4:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 3;
    end
    "RGB": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 3;
    end
    "YUV 4:2:0:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 2;
    end
    "YUVA 4:2:2:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 3;
    end
    "YUVA 4:4:4:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 4;
    end
    "RGBA": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 4;
    end
    "YUVA 4:2:0:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 2;
    end
    "YUVD 4:2:2:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 4;
    end
    "YUVD 4:4:4:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 4;
    end
    "RGBD": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 4;
    end
    "SMPTE 352 YUV 4:2:0:": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 3;
    end
    "Mono / Sensor": begin : DEF
      localparam NUM_VIDEO_COMPONENTS = 1;
    end
endcase
endgenerate

case (VIDEO_FORMAT)
    "YUV 4:2:2:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 2;
    end
    "YUV 4:4:4:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    "RGB": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    "YUV 4:2:0:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 2;
    end
    "YUVA 4:2:2:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    "YUVA 4:4:4:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    "RGBA": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    "YUVA 4:2:0:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 2;
    end
    "YUVD 4:2:2:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    "YUVD 4:4:4:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    "RGBD": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 4;
    end
    "SMPTE 352 YUV 4:2:0:": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 3;
    end
    "Mono / Sensor": begin : DEF
      parameter NUM_VIDEO_COMPONENTS = 1;
    end
endcase
*/
//parameter  S_AXIS_BYTES = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH*NUM_VIDEO_COMPONENTS+7)/8);
//parameter  S_AXIS_WIDTH = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH*NUM_VIDEO_COMPONENTS+7)/8)*8;
//parameter  M_AXIS_BYTES = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH*NUM_VIDEO_COMPONENTS+7)/8);
//parameter  M_AXIS_WIDTH = ((SAMPLES_PER_CLOCK*MAXIMUM_DATA_WIDTH*NUM_VIDEO_COMPONENTS+7)/8) * 8;


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

generate
    if(SAMPLES_PER_CLOCK==1)
        v_vsampler_1ppc #
	(
	    .NUM_VIDEO_COMPONENTS(NUM_VIDEO_COMPONENTS),
	    .MAXIMUM_DATA_WIDTH(MAXIMUM_DATA_WIDTH)
	)inst0
	(
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
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS)
        );

    else if (SAMPLES_PER_CLOCK==2)
        v_vsampler_2ppc #
	(
	    .NUM_VIDEO_COMPONENTS(NUM_VIDEO_COMPONENTS),
	    .MAXIMUM_DATA_WIDTH(MAXIMUM_DATA_WIDTH)
	)inst0(
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
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS)        
        );

    else if (SAMPLES_PER_CLOCK==4)
        v_vsampler_4ppc #
	(
	    .NUM_VIDEO_COMPONENTS(NUM_VIDEO_COMPONENTS),
	    .MAXIMUM_DATA_WIDTH(MAXIMUM_DATA_WIDTH)
	)inst0(
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
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS)  
        );

    else if (SAMPLES_PER_CLOCK==8)
        v_vsampler_8ppc #
	(
	    .NUM_VIDEO_COMPONENTS(NUM_VIDEO_COMPONENTS),
	    .MAXIMUM_DATA_WIDTH(MAXIMUM_DATA_WIDTH)
	)inst0(
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
            .vsize_in (MAXIMUM_NUMBER_OF_ROWS)
        );

endgenerate

endmodule
