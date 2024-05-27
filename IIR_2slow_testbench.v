module IIR_test;
  	reg [7:0] x1, x2;
	reg Clk, Rst;
	wire [7:0] y, y_slow;


top_module i1(
.x1(x1),
.x2(x2),
.Clk(Clk),
.Rst(Rst),
.y_slow(y_slow),
.y(y)
);
  
initial begin 
    $dumpfile("dump_iir.vcd"); 
    $dumpvars(0, i1);
   
    Clk = 1;
    
forever begin
        #5;
        Clk = ~Clk;
		end    
end


initial 
   begin
      Rst = 0;
      #5;
      Rst = 1;
      #20;
      Rst = 0;
      x1 = 8'b00001000;
      x2 = 8'b00000000;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x2 = 8'b00010000;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x1 = 8'b00001100;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10
      x2 = 8'b00001000;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x1 = 8'b00001000;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x2 = 8'b00010000;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x1 = 8'b00010000;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x2 = 8'b00000100;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x1 = 8'b00000100;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;
      x2 = 8'b00100000;
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;   
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
      #10;   
      $display("y = %f ",($itor(y>>>3)));
      $display("y_slow = %f ",($itor(y_slow>>>3)));
      if (y==y_slow)
      	$display("TRUE");
      else
      	$display("FALSE");
    $finish;
  end

endmodule
