# 4-Bit ALU using Verilog

## Project Description

This project is a simple 4-bit ALU (Arithmetic Logic Unit) designed using Verilog HDL. The ALU performs basic logical and arithmetic operations based on a 2-bit selection input.

It helped me understand how combinational circuits work and how different operations can be controlled using a select signal.

## Operations

The ALU performs the following operations based on `S`:

| S  | Operation |
| -- | --------- |
| 00 | AND       |
| 01 | OR        |
| 10 | ADD       |
| 11 | SUB       |

## Inputs and Outputs

* **A (4-bit):** First operand
* **B (4-bit):** Second operand
* **S (2-bit):** Select signal
* **Y (4-bit):** Result
* **carry:** Carry out for ADD and borrow flag for SUB

## Sample Output

For input:

* A = 4'b1011 (11)
* B = 4'b0110 (6)

```
A = 1011, B = 0110, S = 00, Y = 0010, carry = 0
A = 1011, B = 0110, S = 01, Y = 1111, carry = 0
A = 1011, B = 0110, S = 10, Y = 0001, carry = 1
A = 1011, B = 0110, S = 11, Y = 0101, carry = 0
```

## Files Included

* alu_4bit.v → ALU design
* tb_alu.v → Testbench
* outputALU.txt → Simulation results

## What I Learned

* Basics of ALU design in Verilog
* Combinational logic using case statements
* Arithmetic and logical operations in hardware
* Testbench simulation and verification

## Author

Vineesh Khichar
