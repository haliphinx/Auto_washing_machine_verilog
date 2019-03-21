`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:26 09/15/2015 
// Design Name: 
// Module Name:    text 
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
module text(
    input water,//水位按钮
    input clk,//时钟
	 input power,//电源按钮
	 input mod,//模式选择按钮
	 input ss,//开始暂停按钮
    output reg[6:0] C,
	 output reg[3:0] A,
	 output reg [5:0]Tt,
	 output reg [4:0]Tm,
	 //output reg [5:0]Tt1,
	 //output reg [2:0]mod1,
    output reg li,//进水指示灯
	 output reg lo,//出水指示灯
	 output reg lw,//洗涤指示灯
	 output reg lr,//漂洗指示灯
	 output wire vb4,//蜂鸣指示灯
	 output reg p,//电源判断
    output reg s,//暂停
	 //output reg [3:0]m,
	 output reg ld//脱水指示灯

    );
reg [4:0]lev_l,lev_h;//水位
reg [3:0]Tt_l;//总剩余时间
reg [1:0]Tt_h;
//reg [5:0]Tt;
reg [5:0]Tt1;
reg [3:0]Tm_l;//模块剩余时间
reg Tm_h;
reg [3:0]Tm1;
//reg [4:0]Tm;
reg [2:0]mod1;
reg [24:0]t;//系统时间
reg [24:0]t1;//系统时间
reg [24:0]t2;//系统时间
reg ts;//秒时间
//reg p;//电源判断
//reg s;//暂停
reg vb1;//闪烁分时
reg [3:0]vb2;//闪烁计时
reg vb;//按钮闪烁灯
reg vb3;//模块结束闪烁灯
reg [2:0]tss;//七段代码切换
reg [3:0]m;//五秒计时 
reg [3:0]tp;
reg tpp;
//初始条件
initial begin
  lev_l=5;
  lev_h=0;
  Tt_l=3;
  Tt_h=3;
  Tt=33;
  Tt1=33;
  mod1=0;
  Tm_l=2;
  Tm_h=1;
  Tm=12;
  Tm1=12;
  t=0;
  t1=0;
  t2=0;
  ts=1;
  tss=0;
  m=6;
  p=0;
  s=0;
  vb=0;
  vb1=0;
  vb2=0;
  vb3=0;
  li=0;
  lo=0;
  lw=0;
  lr=0;
  ld=0;
  tp=0;
  tpp=0;
end

//通过系统时钟生成秒钟
always@(posedge clk)begin
  	if(t>=25000000) begin
	//if(t>=10) begin
	   t=0;
	   ts=~ts;						//每过1s，S产生一个上升沿
	end
	else begin
	   t=t+1'b1;
	end
end

always@(posedge clk)begin
   if(t1>=25000)begin
	//if(t1>=5)begin
	   tss=tss+1'b1;
		if(tss>3)begin
		   tss=0;
		end
	   t1=0;
	end
	else begin
	t1=t1+1'b1;
	end
end

always@(posedge clk)begin
   if(t2>=500000)begin
	//if(t2>=2)begin
	   vb1=~vb1;
		t2=0;
	end
	else begin
	   t2=t2+1'b1;
	end
end	

//蜂鸣功能
always@(posedge vb1)begin
   if(power||ss||water||mod)begin
	   vb2=10;
	end
	if(vb2)begin
		vb=~vb;
		vb2=vb2-1'b1;
	end
	else begin
	   vb=0;
	end	
end		

      	
//电源开关
always@(posedge power or posedge tpp)begin	
	if(tpp)begin
	   p=0;
	end
   else begin	
	   p=~p;
	end	
end

 
//暂停按钮
 always@(posedge ss or negedge p  ) begin
	if(p==0)begin
		s<=0 ;
	end	
	else if( s ==0 )begin
		s <=1 ; 
	end
	else begin
		s <=0 ;
	end	
end 

//分时功能
always@(posedge clk)begin
   //总时间分时
	if(Tt>29)begin
	   Tt_h=3;
	end
   else if(Tt>19)begin
	   Tt_h=2;
	end
   else if(Tt>9)begin
      Tt_h=1;
	end
   else begin
      Tt_h=0;
	end
	Tt_l=Tt-Tt_h*10;
   //模块剩余时间分时
   if(Tm>9)begin
      Tm_h=1;
	end
	else begin
	   Tm_h=0;
	end
	Tm_l=Tm-Tm_h*10;
end

//功能调用
always@(posedge mod or posedge ts)begin
   if(mod)begin//模式变换后Tt赋值
	   if(s==0)begin
		   Tt=Tt1;
			Tm=Tm1;
			tp=0;
			li=0;
			lo=0;
		end
	end
	else if(p==0)begin
		Tt=33;
		Tm=12;
		tp=0;
		tpp=0;
		vb3=0;
		li=0;
		lo=0;
		lw=0;
		lr=0;
		ld=0;
	end	
   else if(Tt==0)begin
      Tt=0;
		tp=tp+1;
		if(tp<=3)begin
		   vb3=~vb3;
		end
		if(tp==4)begin
		   vb3=0;
		end	
		if(tp>=10)begin
		   tpp=1;
		end	
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
				if((Tt<=21)&&(Tt>18))begin
				   vb3=~vb3;
				end	
				if(Tt==21)begin
               lw=0;//关洗涤灯
               lo=1;//开出水灯
               Tm=15;//模块时间改为漂洗时间
				end
				if(Tt==18)begin
				   lo=0;//关出水灯
					vb3=0;
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
            if((Tt<=6)&&(Tt>3))begin
				   vb3=~vb3;
				end	
				if(Tt==6)begin
               Tm=6;
					lr=0;
               lo=1;//开出水灯
				end
            if(Tt==3)begin
				   vb3=0;
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
				if((Tt<=15)&&(Tt>12))begin
				   vb3=~vb3;
				end	
				if(Tt==15)begin
               Tm=15;
					lo=1;//开出水灯
					lw=0;//洗涤灯
				end
            if(Tt==12)begin
				   vb3=0;
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
				   //Tm=15;
					lo=1;//开出水灯
					lw=0;//洗涤灯
				end
				//开始漂洗
				if((Tt<=18)&&(Tt>15))begin
				   vb3=~vb3;
				end
				if(Tt==18)begin
				   vb3=0;
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
		Tt=Tt-1'b1;
		Tm=Tm-1'b1;
	end
	else begin
	   Tt=Tt;
		Tm=Tm; 
	end	                                                                                                                      
end

//显示切换
always@(posedge ts or posedge water)begin
   if(water==1)begin
	  if(p==1)begin
	     m=0;
	  end 
	end
	else if(water==0)begin
	  if(m>10)begin
	     m=6;
	  end  
	  m=m+1'b1;
	end
end	


//水位控制
always@(posedge water or negedge p)begin
   if(p==0)begin
		   lev_h=0;
		   lev_l=3;	
	end
	else if((p==1)&&(s==0))begin
	   if(lev_h==1)begin
	      lev_h=0;
		   lev_l=3;
	   end
	   else if(lev_l==9)begin
	      lev_h=1;
		   lev_l=0;
	   end
	   else begin
	      lev_l=lev_l+1;
	   end
	end	
end	

//模式切换
always@(negedge mod or negedge p)begin
   if(p==0)begin//初始化
      mod1=0;	
		Tt1=12;
		Tm1=12;
	end
	else if((mod1==0)&&(s==0))begin
	   mod1=1;
		Tt1=27;
		Tm1=12;
	end
	else if((mod1==1)&&(s==0))begin
	   mod1=2;
		Tt1=15;
		Tm1=15;
	end
	else if((mod1==2)&&(s==0))begin
	   mod1=3;
		Tt1=21;
		Tm1=15;
	end
	else if((mod1==3)&&(s==0))begin
	   mod1=4;
		Tt1=6;
		Tm1=6;
	end
	else if((mod1==4)&&(s==0))begin
	   mod1=5;    
		Tt1=33;
		Tm1=12;
	end
	else if((mod1==5)&&(s==0))begin
	   mod1=0;
		Tt1=12;
	end
end

	
//七段代码显示
always@(posedge clk) begin
   if(p==0)begin
	   A=4'b1111;
	end
   else begin	
	case(tss)
	   0:begin
		     case(Tt_h)
		     0:	C=7'b0000001;
	        1:	C=7'b1001111;
			  2:	C=7'b0010010;
			  3:	C=7'b0000110;
           default:	C=7'b0000001;
			  endcase
			  A=4'b0111;
		  end
		1:begin
   	     case(Tt_l)
           0:	C=7'b0000001;
			  1:	C=7'b1001111;
			  2:	C=7'b0010010;
			  3:	C=7'b0000110;
			  4:	C=7'b1001100;
			  5:	C=7'b0100100;
			  6:	C=7'b0100000;
			  7:	C=7'b0001111;
			  8:	C=7'b0000000;
			  9:	C=7'b0000100;
			  default:	C=7'b0000001;
			  endcase
			  A=4'b1011;
		 end
		2:begin
		     if(m<=5)begin
			     case(lev_h)
				  0:	C=7'b0000001;
			     1:	C=7'b1001111;
			     2:	C=7'b0010010;
			     3:	C=7'b0000110;
			     4:	C=7'b1001100;
			     5:	C=7'b0100100;
			     6:	C=7'b0100000;
			     7:	C=7'b0001111;
			     8:	C=7'b0000000;
			     9:	C=7'b0000100;
			     default:	C=7'b0000001;
			     endcase
              A=4'b1101;
           end
			  else begin
			     case(Tm_h)
				  0:	C=7'b0000001;
			     1:	C=7'b1001111;
			     2:	C=7'b0010010;
			     3:	C=7'b0000110;
			     4:	C=7'b1001100;
			     5:	C=7'b0100100;
			     6:	C=7'b0100000;
			     7:	C=7'b0001111;
			     8:	C=7'b0000000;
			     9:	C=7'b0000100;
			     default:	C=7'b0000001;
			     endcase
              A=4'b1101;
           end
		end	  
		3:begin
           if(m<=5)begin
			     case(lev_l)
				  0:	C=7'b0000001;
			     1:	C=7'b1001111;
			     2:	C=7'b0010010;
			     3:	C=7'b0000110;
			     4:	C=7'b1001100;
			     5:	C=7'b0100100;
			     6:	C=7'b0100000;
			     7:	C=7'b0001111;
			     8:	C=7'b0000000;
			     9:	C=7'b0000100;
			     default:	C=7'b0000001;
			     endcase
              A=4'b1110;
           end
			  else begin
			     case(Tm_l)
				  0:	C=7'b0000001;
			     1:	C=7'b1001111;
			     2:	C=7'b0010010;
			     3:	C=7'b0000110;
			     4:	C=7'b1001100;
			     5:	C=7'b0100100;
			     6:	C=7'b0100000;
			     7:	C=7'b0001111;
			     8:	C=7'b0000000;
			     9:	C=7'b0000100;
			     default:	C=7'b0000001;
			     endcase
              A=4'b1110;
           end
	end		  
	endcase
	end
end	

assign vb4=vb||vb3; 

endmodule
