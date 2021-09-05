//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           video_driver
// Last modified Date:  2020/05/28 20:28:08
// Last Version:        V1.0
// Descriptions:        视频显示驱动模块
//                      
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2020/05/28 20:28:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module video_driver #(
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
    input           pixel_clk,
    input           sys_rst_n,
    
    //RGB接口
    output          video_hs,     //行同步信号
    output          video_vs,     //场同步信号
    output          video_de,     //数据输出使能
    output  [23:0]  video_rgb,    //RGB888颜色数据
    
    output          data_req,     //数据请求
    input   [15:0]  pixel_data,   //像素点数据 RGB565
    output  [10:0]  pixel_xpos,   //像素点横坐标
    output  [10:0]  pixel_ypos    //像素点纵坐标
);

//reg define
reg  [10:0] cnt_h;
reg  [10:0] cnt_v;

//wire define
wire       video_en;

//*****************************************************
//**                    main code
//*****************************************************

assign video_de  = video_en;

assign video_hs  = ( cnt_h < H_SYNC ) ? 1'b0 : 1'b1;  //行同步信号赋值
assign video_vs  = ( cnt_v < V_SYNC ) ? 1'b0 : 1'b1;  //场同步信号赋值

//使能RGB数据输出
assign video_en  = (((cnt_h >= H_SYNC+H_BACK) && (cnt_h < H_SYNC+H_BACK+H_DISP))
                 &&((cnt_v >= V_SYNC+V_BACK) && (cnt_v < V_SYNC+V_BACK+V_DISP)))
                 ?  1'b1 : 1'b0;


//将16bit的RGB565格式数据转换为24bit的RGB888格式的lcd数据
assign video_rgb =  video_en ? {pixel_data[15:11],3'b000,pixel_data[10:5],2'b00,
                    pixel_data[4:0],3'b000} : 24'd0;  



//请求像素点颜色数据输入
assign data_req = (((cnt_h >= H_SYNC+H_BACK-1'b1) && 
                    (cnt_h < H_SYNC+H_BACK+H_DISP-1'b1))
                  && ((cnt_v >= V_SYNC+V_BACK) && (cnt_v < V_SYNC+V_BACK+V_DISP)))
                  ?  1'b1 : 1'b0;

//像素点坐标
assign pixel_xpos = data_req ? (cnt_h - (H_SYNC + H_BACK - 1'b1)) : 11'd0;
assign pixel_ypos = data_req ? (cnt_v - (V_SYNC + V_BACK - 1'b1)) : 11'd0;

//行计数器对像素时钟计数
always @(posedge pixel_clk ) begin
    if (!sys_rst_n)
        cnt_h <= 11'd0;
    else begin
        if(cnt_h < H_TOTAL - 1'b1)
            cnt_h <= cnt_h + 1'b1;
        else 
            cnt_h <= 11'd0;
    end
end

//场计数器对行计数
always @(posedge pixel_clk ) begin
    if (!sys_rst_n)
        cnt_v <= 11'd0;
    else if(cnt_h == H_TOTAL - 1'b1) begin
        if(cnt_v < V_TOTAL - 1'b1)
            cnt_v <= cnt_v + 1'b1;
        else 
            cnt_v <= 11'd0;
    end
end

endmodule