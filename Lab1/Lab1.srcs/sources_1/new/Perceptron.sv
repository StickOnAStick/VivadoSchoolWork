`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2024 01:08:10 PM
// Design Name: 
// Module Name: Perceptron
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


module perceptron(
    input bit rst_n,
    input bit clk,
    input logic signed [7:0] x1,
    input logic signed [7:0] x2,
    input bit valid_in,
    output bit y,
    output bit y_valid,
    output logic signed [7:0] sum
    );
    
    // constants
    localparam signed [7:0] b = 8'sb11111101;
    localparam signed [7:0] w1 =  8'sb00000010;
    localparam signed [7:0] w2 = 8'sb11111110;
    
    // Variables
    bit valid_reg;
    logic signed [7:0] p1, p2;
    logic signed [7:0] s; // hold the sum
    
    // last two bits are for the decimal.
    always_ff @(posedge clk or negedge rst_n) begin
        
        if (!rst_n) begin
            p1 <= 8'sd0;
            p2 <= 8'sd0;
            valid_reg <= 1'b0;
            y <= 1'b0;
            y_valid <= 1'b0;
        end else begin
            if (valid_in) begin
                // Internal valid register for next clock
                valid_reg <= 1'b1;
                // Compute P1, P2 on first cycle.
                p1 <= (x1 * w1) >>> 2;
                p2 <= (x2 * w2) >>> 2;
            end
                       
            // Second pass
            if (valid_reg) begin
                s <= p1 + p2 + b;
                if (s >= 8'b0) begin
                    y <= 1'b1;
                end else begin
                    y <= 1'b0;
                end
                sum <= s;
                y_valid <= 1'b1;
                valid_reg <= 1'b0; // Reset after compute. 
            end else begin
                y_valid <= 1'b0; // Not valid unless compute is complete.      
            end
        end
    end
    
    
endmodule
