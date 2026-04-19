module alu (
    input [3:0] a,
    input [3:0] b,
    input [2:0] op_code,
    output reg [3:0] y
);
always @(*) begin
    case(op_code)
        3'b000:y=a+b;   // ADD
        3'b001:y=a-b;   // SUB
        3'b010:y=a&b;   // AND
        3'b011:y=a|b; 
        3'b100:y=a%b; 
        3'b101:y=a^b;
        3'b110:y=a&b+(~a&~b); 
        3'b111:y=a/b;
        default:y=4'b0000;
    endcase
end
endmodule