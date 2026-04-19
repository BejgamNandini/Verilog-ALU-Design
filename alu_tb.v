module alu_tb();
wire [3:0]y;
reg [2:0]op_code;
reg [3:0]a,b;
alu a0(a,b,op_code,y);
initial
begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
   a=2;b=0;op_code=3'b000;
 #10  a=5;b=2;op_code=3'b001;
 #10 a=1;b=1;op_code=3'b010;
 #10 a=0;b=1;op_code=3'b011;
 #10 a=6;b=4;op_code=3'b100;
 #10 a=0;b=1;op_code=3'b101;
 #10 a=1;b=1;op_code=3'b110;
 #10 a=12;b=4;op_code=3'b111;
 #10 $finish;
end
endmodule
