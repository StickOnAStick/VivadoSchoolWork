`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2024 10:06:51 AM
// Design Name: 
// Module Name: cpu
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


module cpu(
    input rst_n,
    input clk,
    output [31:0] imem_addr,
    input [31:0] imem_insn,
    output [31:0] dmem_addr,
    inout [31:0] dmem_data,
    output dmem_wen
    );

  reg [15:0] cc_counter;

  // fetch stage
  reg [31:0] PC;

  // fetch / decode registers
  reg [31:0] IF_ID_PC;
  reg [31:0] IF_ID_Instruction;

  // decode / execute registers
  reg [31:0]  ID_EX_PC, ID_EX_Read_data1, ID_EX_Read_data2;
  reg [4:0]   ID_EX_Rd, ID_EX_Rs1,        ID_EX_Rs2;
  reg [31:0]  ID_EX_Imm;
  reg [2:0]   ID_EX_Funct3;
  reg [6:0]   ID_EX_Funct7; // Handle shift instructiosn
  reg [6:0]   ID_EX_Opcode;

  // execute / memory registers
  reg [31:0]  EX_MEM_PC, EX_MEM_ALU_result;
  reg [4:0]   EX_MEM_Rd;
  reg         EX_MEM_RegWrite;
  reg         EX_MEM_MemRead;
  reg         EX_MEM_MemWrite;
  reg [31:0]  EX_MEM_MemData;

  // memory / write-back registers
  reg [31:0] MEM_WB_PC;
  reg [31:0] MEM_WB_ALU_result;
  reg [4:0]  MEM_WB_Rd;
  reg        MEM_WB_RegWrite;

  reg [31:0] ForwardA, ForwardB;
  reg Stall;

  // Register file
  reg [31:0] RegFile [0:31]; // 32 32-bit registers

  // Output assignments
  assign imem_addr = PC;
  assign dmem_addr = EX_MEM_ALU_result;
  assign dmem_wen  = EX_MEM_MemWrite;
  assign dmem_data = EX_MEM_MemWrite ? EX_MEM_MemData : 32'bz; // High imp when not writing.

  integer pc_trace_file;
  integer reg_trace_file;

  // Open log files to print outputs
  initial begin
      pc_trace_file = $fopen("pc_trace.txt", "w");
      reg_trace_file = $fopen("reg_trace.txt", "w");
  end

  always @ (posedge clk or negedge rst_n) begin
      if (!rst_n) begin
          cc_counter <= 0;
      end else begin
          cc_counter <= cc_counter + 1;
      end
  end

  // fetch stage
  always @ (posedge clk or negedge rst_n) begin
      if (!rst_n) begin
          PC <= 0;
      end else if(!Stall) begin
          PC <= PC + 4; // Increment PC by 4 every cycle
          // Write PC to trace file
          $fdisplay(pc_trace_file, "%h", PC);
      end
  end

  // fetch/ decode stage
  always @ (posedge clk or negedge rst_n) begin
      if (!rst_n) begin
          IF_ID_PC <= 0;
          IF_ID_Instruction <= 0;
      end else if (!Stall) begin
          IF_ID_PC <= PC;
          IF_ID_Instruction <= imem_insn;
      end
  end

  // decode / execute stage
  always @ (posedge clk or negedge rst_n) begin
      if (!rst_n) begin
          ID_EX_PC         <= 0;
          ID_EX_Read_data1 <= 0;
          ID_EX_Read_data2 <= 0;
          ID_EX_Rd         <= 0;
          ID_EX_Rs1        <= 0;
          ID_EX_Rs2        <= 0;
          ID_EX_Imm        <= 0;
          ID_EX_Funct3     <= 0;
          ID_EX_Funct7     <= 0;
          ID_EX_Opcode     <= 0;
      end else begin
          ID_EX_PC     <= IF_ID_PC; // Move PC (made at start of pipeline) forward
          ID_EX_Opcode <= IF_ID_Instruction[6:0];
          ID_EX_Rd     <= IF_ID_Instruction[11:7];
          ID_EX_Funct3 <= IF_ID_Instruction[14:12];
          ID_EX_Rs1    <= IF_ID_Instruction[19:15];
          ID_EX_Rs2    <= IF_ID_Instruction[24:20];
          ID_EX_Funct7 <= IF_ID_Instruction[31:25];

          // Get data from registers
          ID_EX_Read_data1 <= RegFile[IF_ID_Instruction[19:15]];
          ID_EX_Read_data2 <= RegFile[IF_ID_Instruction[24:20]];

          // Immediate extraction
          if (IF_ID_Instruction[6:0] == 7'b0010011 && (IF_ID_Instruction[14:12] == 3'b001 || IF_ID_Instruction[14:12] == 3'b101)) begin
              // Shift instructions: zero-extend the shamt
              ID_EX_Imm <= {27'b0, IF_ID_Instruction[24:20]};
          end else begin
              // Other I-type instructions: sign-extend the immediate
              ID_EX_Imm <= {{20{IF_ID_Instruction[31]}}, IF_ID_Instruction[31:20]};
          end
      end
  end

  // Execute / memory stage
  always @ (posedge clk or negedge rst_n) begin
      if (!rst_n) begin
          EX_MEM_PC         <= 0;
          EX_MEM_ALU_result <= 0;
          EX_MEM_Rd         <= 0;
          EX_MEM_RegWrite   <= 0;
          EX_MEM_MemRead    <= 0;
          EX_MEM_MemWrite   <= 0;
      end else begin
          EX_MEM_PC <= ID_EX_PC;
          EX_MEM_Rd <= ID_EX_Rd;

          EX_MEM_RegWrite   <= 1; // Default to 1; set to 0 if instruction doesn't write to reg
          EX_MEM_MemRead    <= 0;
          EX_MEM_MemWrite   <= 0;
          EX_MEM_MemData    <= 0;

          case (ID_EX_Opcode)
              7'b0110011: begin // R-type ALU instructions
                  case (ID_EX_Funct3)
                      3'b000: begin // ADD and SUB
                          if (ID_EX_Funct7 == 7'b0000000) begin // ADD
                              EX_MEM_ALU_result <= ForwardA + ForwardB;
                          end else if (ID_EX_Funct7 == 7'b0100000) begin // SUB
                              EX_MEM_ALU_result <= ForwardA - ForwardB;
                          end else begin
                              EX_MEM_ALU_result <= 0; // Undefined instruction
                              EX_MEM_RegWrite <= 0;
                          end
                      end
                      3'b001: begin // SLL
                          EX_MEM_ALU_result <= ForwardA << ForwardB[4:0];
                      end
                      3'b010: begin // SLT
                          EX_MEM_ALU_result <= ($signed(ForwardA) < $signed(ForwardB)) ? 1 : 0;
                      end
                      3'b011: begin // SLTU
                          EX_MEM_ALU_result <= (ForwardA < ForwardB) ? 1 : 0;
                      end
                      3'b100: begin // XOR
                          EX_MEM_ALU_result <= ForwardA ^ ForwardB;
                      end
                      3'b101: begin // SRL and SRA
                          if (ID_EX_Funct7 == 7'b0000000) begin // SRL
                              EX_MEM_ALU_result <= ForwardA >> ForwardB[4:0];
                          end else if (ID_EX_Funct7 == 7'b0100000) begin // SRA
                              EX_MEM_ALU_result <= $signed(ForwardA) >>> ForwardB[4:0];
                          end else begin
                              EX_MEM_ALU_result <= 0; // Undefined instruction
                              EX_MEM_RegWrite <= 0;
                          end
                      end
                      3'b110: begin // OR
                          EX_MEM_ALU_result <= ForwardA | ForwardB;
                      end
                      3'b111: begin // AND
                          EX_MEM_ALU_result <= ForwardA & ForwardB;
                      end
                      default: begin
                          EX_MEM_ALU_result <= 0; // Undefined instruction
                          EX_MEM_RegWrite <= 0;
                      end
                  endcase
              end
              7'b0010011: begin // I-type ALU instructions
                  case (ID_EX_Funct3)
                      3'b000: begin // ADDI
                          EX_MEM_ALU_result <= ForwardA + ID_EX_Imm;
                      end
                      3'b010: begin // SLTI
                          EX_MEM_ALU_result <= ($signed(ForwardA) < $signed(ID_EX_Imm)) ? 1 : 0;
                      end
                      3'b011: begin // SLTIU
                          EX_MEM_ALU_result <= (ForwardA < ID_EX_Imm) ? 1 : 0;
                      end
                      3'b100: begin // XORI
                          EX_MEM_ALU_result <= ForwardA ^ ID_EX_Imm;
                      end
                      3'b110: begin // ORI
                          EX_MEM_ALU_result <= ForwardA | ID_EX_Imm;
                      end
                      3'b111: begin // ANDI
                          EX_MEM_ALU_result <= ForwardA & ID_EX_Imm;
                      end
                      3'b001: begin // SLLI
                          if (ID_EX_Funct7 == 7'b0000000) begin
                              EX_MEM_ALU_result <= ForwardA << ID_EX_Imm[4:0];
                          end else begin
                              EX_MEM_ALU_result <= 0; // Undefined instruction
                              EX_MEM_RegWrite <= 0;
                          end
                      end
                      3'b101: begin
                          if (ID_EX_Funct7 == 7'b0000000) begin // SRLI
                              EX_MEM_ALU_result <= ForwardA >> ID_EX_Imm[4:0];
                          end else if (ID_EX_Funct7 == 7'b0100000) begin // SRAI
                              EX_MEM_ALU_result <= $signed(ForwardA) >>> ID_EX_Imm[4:0];
                          end else begin
                              EX_MEM_ALU_result <= 0; // Undefined instruction
                              EX_MEM_RegWrite <= 0;
                          end
                      end
                      default: begin
                          EX_MEM_ALU_result <= 0; // Undefined instruction
                          EX_MEM_RegWrite <= 0;
                      end
                  endcase
              end
              // Add other opcodes (Load, Store, Branch, etc.) if necessary
              default: begin
                  EX_MEM_ALU_result <= 0;
                  EX_MEM_RegWrite <= 0;
                  EX_MEM_MemRead    <= 0;
                  EX_MEM_MemWrite   <= 0;
              end
          endcase
      end
  end

  // Memory and writeback stage
  always @ (posedge clk or negedge rst_n) begin
      if (!rst_n) begin
          MEM_WB_PC         <= 0;
          MEM_WB_ALU_result <= 0;
          MEM_WB_Rd         <= 0;
          MEM_WB_RegWrite   <= 0;
      end else begin
          MEM_WB_PC         <= EX_MEM_PC;
          MEM_WB_ALU_result <= EX_MEM_ALU_result;
          MEM_WB_Rd         <= EX_MEM_Rd;
          MEM_WB_RegWrite   <= EX_MEM_RegWrite;
      end
  end

  // Write Back stage
  always @ (posedge clk or negedge rst_n) begin
      if (!rst_n) begin
          // Initialize register file to zeros
          integer i;
          for (i = 0; i < 32; i = i + 1) begin
              RegFile[i] <= 0;
          end
      end else begin
          if (MEM_WB_RegWrite && MEM_WB_Rd != 0) begin
              RegFile[MEM_WB_Rd] <= MEM_WB_ALU_result;
              // Write to trace file
              $fdisplay(reg_trace_file, "%0d %h", MEM_WB_Rd, MEM_WB_ALU_result);
          end
      end
  end

  // Forwarding logic
  always @(*) begin
      // Read reg_file
      ForwardA = ID_EX_Read_data1;
      ForwardB = ID_EX_Read_data2;

      // Forward from mem stage if there's a match
      if (EX_MEM_RegWrite && EX_MEM_Rd != 0 && EX_MEM_Rd == ID_EX_Rs1) begin
          ForwardA = EX_MEM_ALU_result;
      end
      if (EX_MEM_RegWrite && EX_MEM_Rd != 0 && EX_MEM_Rd == ID_EX_Rs2) begin
          ForwardB = EX_MEM_ALU_result;
      end

      // Forward from Mem/Wb stage if there's a match
      if (MEM_WB_RegWrite && MEM_WB_Rd != 0 && MEM_WB_Rd == ID_EX_Rs1) begin
          ForwardA = MEM_WB_ALU_result;
      end
      if (MEM_WB_RegWrite && MEM_WB_Rd != 0 && MEM_WB_Rd == ID_EX_Rs2) begin
          ForwardB = MEM_WB_ALU_result;
      end
  end

  // Hazard detection
  always @(*) begin
      Stall = 0;
      if (
          ID_EX_Opcode == 7'b0000011 && // load instruction
          (ID_EX_Rd != 0) &&
          (ID_EX_Rd == IF_ID_Instruction[19:15] || ID_EX_Rd == IF_ID_Instruction[24:20])
          )
      begin
          Stall = 1;
      end
  end
endmodule
