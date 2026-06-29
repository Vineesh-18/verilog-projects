# UART Design in Verilog

## Overview
This project implements a **UART (Universal Asynchronous Receiver Transmitter)** using Verilog HDL. It supports asynchronous serial communication between two digital systems using a configurable baud rate.

## Features
- 8-bit serial communication (TX and RX)
- Start and stop bit framing
- Baud rate generator for timing control
- Modular design (Transmitter, Receiver, Top module)
- Verified using testbench simulation

## Working
- **UART TX** converts parallel 8-bit data into serial form with start/stop bits.
- **UART RX** samples incoming serial data and reconstructs the original byte.
- **Baud Generator** ensures correct timing for transmission and reception.

## Tools Used
- Verilog HDL  
- Icarus Verilog  
  
## Example
Input: 8-bit data (e.g., 0xA5)  
Output: Received same 8-bit data after transmission

## 🛠️ Tools Used
- Verilog HDL
- Icarus Verilog (Simulation)


