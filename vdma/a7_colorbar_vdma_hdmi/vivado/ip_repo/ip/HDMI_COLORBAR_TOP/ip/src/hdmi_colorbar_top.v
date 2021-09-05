//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           hdmi_colorbar_top
// Last modified Date:  2020/05/28 20:28:08
// Last Version:        V1.0
// Descriptions:        HDMI彩条显示实验顶层模块
//                      
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2020/05/28 20:28:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module  hdmi_colorbar_top #(

    //分辨率640*480的参数
    parameter H_SYNC   =  10'd96 ,  //行同步         
    parameter H_BACK   =  10'd48 ,  //行显示后沿            
    parameter H_DISP   =  10'd640,  //行有效数据            
    parameter H_FRONT  =  10'd16 ,  //行显示前沿            
    parameter H_TOTAL  =  10'd800,  //行扫描周期
                          
    parameter V_SYNC   =  10'd2  ,  //场同步
    parameter V_BACK   =  10'd33 ,  //场显示后沿
    parameter V_DISP   =  10'd480,  //场有效数据
    parameter V_FRONT  =  10'd10 ,  //场显示前沿
    parameter V_TOTAL  =  10'd525   //场扫描周期
)
(
    input         sys_rst_n    , 
    input         ddr_init_done, 
    input         pixel_clk    ,    //像素时钟
    input         pixel_clk_5x ,    //5倍像素时钟
    
    input  [15:0] data_in      ,    //数据输入
    output        data_req     ,    //数据请求 
    
    output        tmds_clk_p   ,    //TMDS时钟通道
    output        tmds_clk_n   ,
    output [2:0]  tmds_data_p  ,    //TMDS数据通道
    output [2:0]  tmds_data_n  ,
    output        tmds_oen     ,    //TMDS输出使能
     
    output        tmds_clk_p1  ,    //TMDS时钟通道
    output        tmds_clk_n1  ,
    output [2:0]  tmds_data_p1 ,    //TMDS数据通道
    output [2:0]  tmds_data_n1 ,
    output        tmds_oen1         //TMDS输出使能

);

wire  [10:0]  pixel_xpos_w;
wire  [10:0]  pixel_ypos_w;

wire          video_hs;
wire          video_vs;
wire          video_de;
wire  [23:0]  video_rgb;

//*****************************************************
//**                    main code
//*****************************************************

//例化视频显示驱动模块
video_driver # ( 
    .H_SYNC (H_SYNC),
    .H_BACK (H_BACK ),
    .H_DISP (H_DISP ),
    .H_FRONT(H_FRONT),
    .H_TOTAL(H_TOTAL),
    
    .V_SYNC (V_SYNC ),
    .V_BACK (V_BACK ),
    .V_DISP (V_DISP ),
    .V_FRONT(V_FRONT),
    .V_TOTAL(V_TOTAL)
    ) u_video_driver(
    .pixel_clk      (pixel_clk),
    .sys_rst_n      (sys_rst_n & ddr_init_done),

    .video_hs       (video_hs),
    .video_vs       (video_vs),
    .video_de       (video_de),
    .video_rgb      (video_rgb),

    .pixel_xpos     (pixel_xpos_w),
    .pixel_ypos     (pixel_ypos_w),
    .data_req       (data_req),
    .pixel_data     (data_in)
    );

//例化HDMI驱动模块
dvi_transmitter_top u_rgb2dvi_0(
    .pclk           (pixel_clk),
    .pclk_x5        (pixel_clk_5x),
    .reset_n        (sys_rst_n & ddr_init_done),
                
    .video_din      (video_rgb),
    .video_hsync    (video_hs), 
    .video_vsync    (video_vs),
    .video_de       (video_de),
                
    .tmds_clk_p     (tmds_clk_p),
    .tmds_clk_n     (tmds_clk_n),
    .tmds_data_p    (tmds_data_p),
    .tmds_data_n    (tmds_data_n), 
    .tmds_oen       (tmds_oen),
    
    .tmds_clk_p1    (tmds_clk_p1),
    .tmds_clk_n1    (tmds_clk_n1),
    .tmds_data_p1   (tmds_data_p1),
    .tmds_data_n1   (tmds_data_n1), 
    .tmds_oen1      (tmds_oen1)
    );

endmodule 