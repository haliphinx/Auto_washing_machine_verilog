`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:58:23 09/15/2015 
// Design Name: 
// Module Name:    wash_mod 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module wash_mod(
    input mod,//模式按钮
	 input ts,//秒钟
	 input s,//暂停判断
	 input p,//电源判断
	 input [5:0]Tt1,//模式总时间
	 input [2:0]mod1,//模式
	 output reg [5:0]Tt,//总剩余时间
	 output reg [4:0]Tm,//模块剩余时间
	 output reg li,//进水指示灯
	 output reg lo,//出水指示灯
	 output reg lw,//洗涤指示灯
	 output reg lr,//漂洗指示灯
	 output reg ld,//脱水指示灯
	 output reg [3:0]tp
	 
    );
//初始条件
initial begin
  Tt=33;
  Tm=12;
  li=0;
  lo=0;
  lw=1;
  lr=1;
  ld=1;
  tp=0;
end

always@(posedge mod or posedge ts)begin
   if(mod)begin//模式变换后Tt赋值
	   if(s==0)begin
		   Tt=Tt1;
			tp=0;
			li=0;
			lo=0;
		end
	end
	else if(p==0)begin
	   //mod1=0;
		Tt=33;
		Tm=12;
		tp=0;
	end	
   else if(Tt==0)begin
      Tt=0;
		tp=tp+1;
		lw=0;
		lr=0;
		ld=0;
	end
   else if(s==1)begin
	   case(mod1)
		   0:begin//标准洗
            if(Tt==33)begin	
               Tm=12;//洗涤
					li=1;//开进水灯
            end
				if(Tt==30)begin//进水
				   li=0;//关进水灯
				end	
				if(Tt>21)begin//洗涤阶段
               lw=~lw;//洗涤灯
					lr=1;//漂洗灯
					ld=1;//甩干灯
				end           
				//开始漂洗	
				if(Tt==21)begin
               lw=0;//关洗涤灯
               lo=1;//开出水灯
               Tm=15;//模块时间改为漂洗时间
				end
				if(Tt==18)begin
				   lo=0;//关出水灯
				end
				if(Tt==15)begin
				   li=1;//开进水灯
				end
            if(Tt==12)begin
               li=0;//关进水灯
				end	
            if((Tt<=21)&&(Tt>6))begin//漂洗阶段
               lr=~lr;//漂洗灯
					ld=1;//甩干灯	
            end           
            //开始脱水
            if(Tt==6)begin
               Tm=6;
					lr=0;
               lo=1;//开出水灯
				end
            if(Tt==3)begin
				   lo=0;//关出水灯
				end
            if((Tt<=6)&&(Tt>0))begin
               ld=~ld;//脱水灯	
            end
			end					
			1:begin//单洗
			   if(Tt==12)begin
				   Tm=12;//洗涤
					li=1;//开进水灯
					lr=0;//漂洗灯
					ld=0;//甩干灯
				end
				if(Tt==9)begin
				   li=0;//关进水灯
				end
            if(Tt>0)begin
               lw=~lw;//洗涤灯
            end
			end				   
			2:begin//洗漂
			   //洗涤过程
				if(Tt==27)begin
				   Tm=12;//洗涤
					li=1;//开进水灯
					ld=0;//甩干灯
				end
				if(Tt==24)begin
				   li=0;
				end
            if(Tt>15)begin
               lw=~lw;//洗涤灯
					lr=1;//漂洗灯
				end           
				//开始漂洗
				if(Tt==15)begin
               Tm=15;
					lo=1;//开出水灯
					lw=0;//洗涤灯
				end
            if(Tt==12)begin
				   lo=0;//关出水灯
				end
				if(Tt==9)begin
				   li=1;//开进水灯
				end
				if(Tt==6)begin
				   li=0;//关进水灯
				end
				if((Tt>=0)&&(Tt<=15))begin
				   lw=0;//洗涤灯
					lr=~lr;//漂洗灯
				end
			end					
			3:begin//单漂
			   if(Tt==15)begin
				   Tm=15;
					lo=1;//开出水灯
					lw=0;//洗涤灯
					ld=0;//甩干灯
				end
				if(Tt==12)begin
				   lo=0;//关出水灯
				end
				if(Tt==9)begin
				   li=1;//开进水灯
				end
				if(Tt==6)begin
				   li=0;//关进水灯
				end
				if(Tt>=0)begin
					lr=~lr;//漂洗灯
				end
			end					
			4:begin//漂脱
			   if(Tt==21)begin
				   Tm=15;
					lo=1;//开出水灯
					lw=0;//洗涤灯
				end
				//开始漂洗
				if(Tt==18)begin
				   lo=0;//关出水灯
				end
            if(Tt==15)begin
				   li=1;//开进水灯
				end
				if(Tt==12)begin
				   li=0;//关进水灯
				end
				if(Tt>6)begin
				   lr=~lr;//漂洗灯
					ld=1;//甩干灯	
				end	
				//开始脱水
				if(Tt==6)begin
				   Tm=6;
					lr=0;//漂洗灯
					lo=1;//开出水灯
				end
				if(Tt==3)begin
				   lo=0;//关出水灯
				end
				if((Tt<=6)&&(Tt>=0))begin
				   ld=~ld;//甩干灯
				end
			end
			5:begin//单脱
            if(Tt==6)begin
				   lw=0;//洗涤灯
					lr=0;//漂洗灯
					lo=1;//开出水灯
					Tm=6;
				end
				if(Tt==3)begin
				   lo=0;//关出水灯
				end
				if((Tt<=6)&&(Tt>=0))begin
				   ld=~ld;//甩干灯
				end
			end	
		   default:;		
		endcase
		Tt<=Tt-1'b1;
		Tm<=Tm-1'b1;
	end
	else begin
	   Tt<=Tt;
		Tm<=Tm; 
	end	
end

	
endmodule
