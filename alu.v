module alu(
input [3:0] A,          // 4-bit input A
input [3:0] B,          // 4-bit input B
input [3:0] ALU_Sel,    // 4-bit selection signal to choose operation
output [3:0] ALU_Out,   // 4-bit output result
output CarryOut         // Carry output for addition
);
reg [3:0] ALU_Result;   // Register to store ALU result
wire [4:0] tmp;         // 5-bit wire to capture carry from addition
// Assign final output
assign ALU_Out = ALU_Result;
// Perform addition with carry extension
assign tmp = {1'b0,A} + {1'b0,B};
// Extract carry-out (MSB of tmp)
assign CarryOut = tmp[4];
// Combinational logic block
always @(*) begin
case(ALU_Sel)
4'b0000: ALU_Result = A + B;              // Addition
4'b0001: ALU_Result = A - B;              // Subtraction
4'b0010: ALU_Result = A * B;              // Multiplication
4'b0011: ALU_Result = A / B;              // Division
4'b0100: ALU_Result = A << 1;             // Logical shift left
4'b0101: ALU_Result = A >> 1;             // Logical shift right
4'b0110: ALU_Result = {A[2:0],A[3]};      // Rotate left
4'b0111: ALU_Result = {A[0],A[3:1]};      // Rotate right
4'b1000: ALU_Result = A & B;              // AND operation
4'b1001: ALU_Result = A | B;              // OR operation
4'b1010: ALU_Result = A ^ B;              // XOR operation
4'b1011: ALU_Result = ~(A | B);           // NOR operation
4'b1100: ALU_Result = ~(A & B);           // NAND operation
4'b1101: ALU_Result = ~(A ^ B);           // XNOR operation
4'b1110: ALU_Result = (A > B) ? 4'd1 : 4'd0; // Greater than comparison
4'b1111: ALU_Result = (A == B) ? 4'd1 : 4'd0; // Equality comparison
default: ALU_Result = A + B;              // Default operation (Addition)
endcase
end
endmodule
