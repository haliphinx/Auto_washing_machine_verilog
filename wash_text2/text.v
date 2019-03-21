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
    input water,//ˮλ��ť
    input clk,//ʱ��
	 input power,//��Դ��ť
	 input mod,//ģʽѡ��ť
	 input ss,//��ʼ��ͣ��ť
    output reg[6:0] C,
	 output reg[3:0] A,
	 output reg [5:0]Tt,
	 output reg [4:0]Tm,
	 //output reg [5:0]Tt1,
	 //output reg [2:0]mod1,
    output reg li,//��ˮָʾ��
	 output reg lo,//��ˮָʾ��
	 output reg lw,//ϴ��ָʾ��
	 output reg lr,//Ưϴָʾ��
	 output wire vb4,//����ָʾ��
	 output reg p,//��Դ�ж�
    output reg s,//��ͣ
	 //output reg [3:0]m,
	 output reg ld//��ˮָʾ��

    );
reg [4:0]lev_l,lev_h;//ˮλ
reg [3:0]Tt_l;//��ʣ��ʱ��
reg [1:0]Tt_h;
//reg [5:0]Tt;
reg [5:0]Tt1;
reg [3:0]Tm_l;//ģ��ʣ��ʱ��
reg Tm_h;
reg [3:0]Tm1;
//reg [4:0]Tm;
reg [2:0]mod1;
reg [24:0]t;//ϵͳʱ��
reg [24:0]t1;//ϵͳʱ��
reg [24:0]t2;//ϵͳʱ��
reg ts;//��ʱ��
//reg p;//��Դ�ж�
//reg s;//��ͣ
reg vb1;//��˸��ʱ
reg [3:0]vb2;//��˸��ʱ
reg vb;//��ť��˸��
reg vb3;//ģ�������˸��
reg [2:0]tss;//�߶δ����л�
reg [3:0]m;//�����ʱ 
reg [3:0]tp;
reg tpp;
//��ʼ����
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

//ͨ��ϵͳʱ����������
always@(posedge clk)begin
  	if(t>=25000000) begin
	//if(t>=10) begin
	   t=0;
	   ts=~ts;						//ÿ��1s��S����һ��������
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

//��������
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

      	
//��Դ����
always@(posedge power or posedge tpp)begin	
	if(tpp)begin
	   p=0;
	end
   else begin	
	   p=~p;
	end	
end

 
//��ͣ��ť
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

//��ʱ����
always@(posedge clk)begin
   //��ʱ���ʱ
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
   //ģ��ʣ��ʱ���ʱ
   if(Tm>9)begin
      Tm_h=1;
	end
	else begin
	   Tm_h=0;
	end
	Tm_l=Tm-Tm_h*10;
end

//���ܵ���
always@(posedge mod or posedge ts)begin
   if(mod)begin//ģʽ�任��Tt��ֵ
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
		   0:begin//��׼ϴ
            if(Tt==33)begin	
               Tm=12;//ϴ��
					li=1;//����ˮ��
            end
				if(Tt==30)begin//��ˮ
				   li=0;//�ؽ�ˮ��
				end	
				if(Tt>21)begin//ϴ�ӽ׶�
               lw=~lw;//ϴ�ӵ�
					lr=1;//Ưϴ��
					ld=1;//˦�ɵ�
				end           
				//��ʼƯϴ	
				if((Tt<=21)&&(Tt>18))begin
				   vb3=~vb3;
				end	
				if(Tt==21)begin
               lw=0;//��ϴ�ӵ�
               lo=1;//����ˮ��
               Tm=15;//ģ��ʱ���ΪƯϴʱ��
				end
				if(Tt==18)begin
				   lo=0;//�س�ˮ��
					vb3=0;
				end
				if(Tt==15)begin
				   li=1;//����ˮ��
				end
            if(Tt==12)begin
               li=0;//�ؽ�ˮ��
				end	
            if((Tt<=21)&&(Tt>6))begin//Ưϴ�׶�
               lr=~lr;//Ưϴ��
					ld=1;//˦�ɵ�	
            end           
            //��ʼ��ˮ
            if((Tt<=6)&&(Tt>3))begin
				   vb3=~vb3;
				end	
				if(Tt==6)begin
               Tm=6;
					lr=0;
               lo=1;//����ˮ��
				end
            if(Tt==3)begin
				   vb3=0;
					lo=0;//�س�ˮ��
				end
            if((Tt<=6)&&(Tt>0))begin
               ld=~ld;//��ˮ��	
            end
			end					
			1:begin//��ϴ
			   if(Tt==12)begin
				   Tm=12;//ϴ��
					li=1;//����ˮ��
					lr=0;//Ưϴ��
					ld=0;//˦�ɵ�
				end
				if(Tt==9)begin
				   li=0;//�ؽ�ˮ��
				end
            if(Tt>0)begin
               lw=~lw;//ϴ�ӵ�
            end
			end				   
			2:begin//ϴƯ
			   //ϴ�ӹ���
				if(Tt==27)begin
				   Tm=12;//ϴ��
					li=1;//����ˮ��
					ld=0;//˦�ɵ�
				end
				if(Tt==24)begin
				   li=0;
				end
            if(Tt>15)begin
               lw=~lw;//ϴ�ӵ�
					lr=1;//Ưϴ��
				end           
				//��ʼƯϴ
				if((Tt<=15)&&(Tt>12))begin
				   vb3=~vb3;
				end	
				if(Tt==15)begin
               Tm=15;
					lo=1;//����ˮ��
					lw=0;//ϴ�ӵ�
				end
            if(Tt==12)begin
				   vb3=0;
					lo=0;//�س�ˮ��
				end
				if(Tt==9)begin
				   li=1;//����ˮ��
				end
				if(Tt==6)begin
				   li=0;//�ؽ�ˮ��
				end
				if((Tt>=0)&&(Tt<=15))begin
				   lw=0;//ϴ�ӵ�
					lr=~lr;//Ưϴ��
				end
			end					
			3:begin//��Ư
			   if(Tt==15)begin
				   Tm=15;
					lo=1;//����ˮ��
					lw=0;//ϴ�ӵ�
					ld=0;//˦�ɵ�
				end
				if(Tt==12)begin
				   lo=0;//�س�ˮ��
				end
				if(Tt==9)begin
				   li=1;//����ˮ��
				end
				if(Tt==6)begin
				   li=0;//�ؽ�ˮ��
				end
				if(Tt>=0)begin
					lr=~lr;//Ưϴ��
				end
			end					
			4:begin//Ư��
			   if(Tt==21)begin
				   //Tm=15;
					lo=1;//����ˮ��
					lw=0;//ϴ�ӵ�
				end
				//��ʼƯϴ
				if((Tt<=18)&&(Tt>15))begin
				   vb3=~vb3;
				end
				if(Tt==18)begin
				   vb3=0;
					lo=0;//�س�ˮ��
				end
            if(Tt==15)begin
				   li=1;//����ˮ��
				end
				if(Tt==12)begin
				   li=0;//�ؽ�ˮ��
				end
				if(Tt>6)begin
				   lr=~lr;//Ưϴ��
					ld=1;//˦�ɵ�	
				end	
				//��ʼ��ˮ
				if(Tt==6)begin
				   Tm=6;
					lr=0;//Ưϴ��
					lo=1;//����ˮ��
				end
				if(Tt==3)begin
				   lo=0;//�س�ˮ��
				end
				if((Tt<=6)&&(Tt>=0))begin
				   ld=~ld;//˦�ɵ�
				end
			end
			5:begin//����
            if(Tt==6)begin
				   lw=0;//ϴ�ӵ�
					lr=0;//Ưϴ��
					lo=1;//����ˮ��
					Tm=6;
				end
				if(Tt==3)begin
				   lo=0;//�س�ˮ��
				end
				if((Tt<=6)&&(Tt>=0))begin
				   ld=~ld;//˦�ɵ�
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

//��ʾ�л�
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


//ˮλ����
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

//ģʽ�л�
always@(negedge mod or negedge p)begin
   if(p==0)begin//��ʼ��
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

	
//�߶δ�����ʾ
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
