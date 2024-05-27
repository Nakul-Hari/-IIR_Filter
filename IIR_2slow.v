module top_module (
	input [7:0] x1, x2,
	input Clk, Rst,
	output [7:0] y_slow, y
);
	wire [7:0] y_1, y_2, x_MUX_out;
  	reg Sel = 0;
  	always @(posedge Clk)
      begin
        Sel <= ~Sel;
      end
			
	IIR i1(x1, Sel, Rst, y_1);
	IIR i2(x2, Sel, Rst, y_2);
	IIR_TwoSlow i3(x_MUX_out, Clk, Rst, y_slow);
	
	assign y = Sel ? y_1 : y_2;
	assign x_MUX_out = Sel ? x2 : x1;
	

endmodule

//IIR Filter module
module IIR(
	input [7:0] x,
	input Clk, Rst,
	output [7:0] y	
);
	wire [7:0] y_wire;
  	reg [7:0] y_del;
	reg [7:0] xin;
  always @(posedge Clk) 
      begin
        if(Rst)
          begin
            y_del <= 0;
            xin <= 0;
          end
        else
          begin
            y_del <= y_wire;
            xin <= x; 
          end
      end		
  	assign y_wire = (y_del>>1) + xin; 
	assign y = y_wire;
	
endmodule

//IIR Filter module
module IIR_TwoSlow(
	input [7:0] x,
	input Clk, Rst,
	output [7:0] y	
);
	wire [7:0] y_wire;
  	reg [7:0] y_del;
  	reg [7:0] y_del2;
	reg [7:0] xin;
  always @(posedge Clk) 
      begin
        if(Rst)
          begin
            y_del <= 0;
            y_del2 <= 0;
            xin <= 0;
          end
        else
          begin
            y_del <= y_wire;
            y_del2 <= y_del;
            xin <= x; 
          end
      end		
  	assign y_wire = (y_del2>>1) + xin; 
	assign y = y_wire;
	
endmodule
