module tb_alu;
//Inputs
reg [3:0] A,B;
reg [3:0] ALU_Sel;
//Outputs
wire [3:0] ALU_Out;
wire CarryOut;
// Verilog code for ALU
integer i;
alu uut(
A,B,          // ALU 4-bit Inputs                 
ALU_Sel,      // ALU Selection
ALU_Out,      // ALU 4-bit Output
CarryOut      // Carry Out Flag
);
initial begin
// hold reset state for 100 ns.
A = 4'b1010;     B = 4'b0010;
ALU_Sel = 4'b0000; #100;
ALU_Sel = 4'b0001; #100;
ALU_Sel = 4'b0010; #100;
ALU_Sel = 4'b0011; #100;
ALU_Sel = 4'b0100; #100;
ALU_Sel = 4'b0101; #100;
ALU_Sel = 4'b0110; #100;
ALU_Sel = 4'b0111; #100;
ALU_Sel = 4'b1000; #100;
ALU_Sel = 4'b1001; #100;
ALU_Sel = 4'b1010; #100;
ALU_Sel = 4'b1011; #100;
ALU_Sel = 4'b1100; #100;
ALU_Sel = 4'b1101; #100;
ALU_Sel = 4'b1110; #100;
ALU_Sel = 4'b1111; #100;
end
endmodule
