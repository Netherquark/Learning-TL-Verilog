## TL-V Labs Repository for LFD111x Course

This repository contains TL-V code and related files developed during the LFD111x course labs. It includes various modules, examples, and exercises aimed at exploring TL-V features and applications.

TL-V, short for Transaction Level Verilog, is an extension of SystemVerilog that supports transaction-level design, allowing for simpler and more efficient hardware design by focusing on high-level transactions rather than low-level implementation details. 

## Modules Overview

1. **Adder (`adder.tlv`)**  
   A simple implementation of an adder in TL-V.

2. **Calculator (`calculator.tlv`)**  
   Demonstrates a basic arithmetic calculator with TL-V constructs.

3. **Fibonacci (`fibonacci.tlv`)**  
   Generates Fibonacci sequences using TL-V logic.

4. **Recirculating Calculator (`recirc_calculator.tlv`)**  
   A recirculating calculator implemented in TL-V and SystemVerilog for comparison.

5. **RISC-V Core Modules**  
   - **`riscv_core.tlv`**: Top-level TL-V implementation of a simplified RISC-V core.  
   - **`riscv_core_imm_valid.tlv`**: Handles immediate validation logic.  
   - **`riscv_core_is_str.tlv`**: Focuses on instruction decoding.  
   - **`riscv_core_pc.tlv`**: Implements program counter logic.

6. **Sum Example (`Sum_1_to_9_RV32I`)**  
   Computes the sum of numbers from 1 to 9 using TL-V, tailored for RV32I architecture.
