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
    input mod,//ģʽ��ť
	 input ts,//����
	 input s,//��ͣ�ж�
	 input p,//��Դ�ж�
	 input [5:0]Tt1,//ģʽ��ʱ��
	 input [2:0]mod1,//ģʽ
	 output reg [5:0]Tt,//��ʣ��ʱ��
	 output reg [4:0]Tm,//ģ��ʣ��ʱ��
	 output reg li,//��ˮָʾ��
	 output reg lo,//��ˮָʾ��
	 output reg lw,//ϴ��ָʾ��
	 output reg lr,//Ưϴָʾ��
	 output reg ld,//��ˮָʾ��
	 output reg [3:0]tp
	 
    );
//��ʼ����
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
   if(mod)begin//ģʽ�任��Tt��ֵ
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
				if(Tt==21)begin
               lw=0;//��ϴ�ӵ�
               lo=1;//����ˮ��
               Tm=15;//ģ��ʱ���ΪƯϴʱ��
				end
				if(Tt==18)begin
				   lo=0;//�س�ˮ��
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
            if(Tt==6)begin
               Tm=6;
					lr=0;
               lo=1;//����ˮ��
				end
            if(Tt==3)begin
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
				if(Tt==15)begin
               Tm=15;
					lo=1;//����ˮ��
					lw=0;//ϴ�ӵ�
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
				   Tm=15;
					lo=1;//����ˮ��
					lw=0;//ϴ�ӵ�
				end
				//��ʼƯϴ
				if(Tt==18)begin
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
		Tt<=Tt-1'b1;
		Tm<=Tm-1'b1;
	end
	else begin
	   Tt<=Tt;
		Tm<=Tm; 
	end	
end

	
endmodule
