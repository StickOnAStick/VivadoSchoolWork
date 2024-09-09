`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2024 02:12:48 PM
// Design Name: 
// Module Name: SignedArithmetic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module line(
    input logic rst_n,
    input logic clk,
    input signed [3:0] m,
    input signed [3:0] x,
    input signed [3:0] c,
    input logic valid_in,
    output logic signed [7:0] y,
    output logic y_valid
    );
    
    logic signed [7:0] product;
    logic valid_reg; // Capture the valid state before proceeding with computation. Preventing halting midway through compute
    
    always_ff @ (posedge clk or posedge rst_n) begin
        if(rst_n) begin 
            product <= 8'b0;
            y <= 8'b0;
            y_valid <= 1'b0;
            valid_reg <= 1'b0;
        end else begin
            if (valid_in) begin
                product <= m*x;
                valid_reg <= 1'b1;
            end else begin
                valid_reg <= 1'b0;
            end
            
            // Second stage
            if (valid_reg) begin
                y  <= product + c;
                y_valid <= 1'b1;
            end else begin
                y_valid <= 1'b0;
            end
        end
    end
endmodule
