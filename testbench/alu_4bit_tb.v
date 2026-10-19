`timescale 1ns / 1ps

module alu_4bit_tb;
    reg [3:0] A, B;
    reg [2:0] OpCode;
    wire [3:0] ALU_Out;
    wire CarryOut;

    alu_4bit uut (.A(A), .B(B), .OpCode(OpCode), .ALU_Out(ALU_Out), .CarryOut(CarryOut));

    initial begin
        $monitor("Time=%0dns | OpCode=%b | A=%d, B=%d | Out=%d, Carry=%b", $time, OpCode, A, B, ALU_Out, CarryOut);
        A = 4'd5; B = 4'd3; OpCode = 3'b000; #10;
        A = 4'd12; B = 4'd5; OpCode = 3'b000; #10;
        A = 4'd10; B = 4'd4; OpCode = 3'b001; #10;
        A = 4'b1010; B = 4'b1100; OpCode = 3'b010; #10;
        $finish;
    end
endmodule
