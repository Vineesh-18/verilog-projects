# Traffic Light Controller using Verilog

## Project Description

This project is a Traffic Light Controller designed using Verilog HDL. It controls the traffic lights for two roads by changing the signals in a fixed sequence. A clock divider is used to slow down the clock so that the light changes can be observed easily during simulation.

This project helped me understand how finite state machines (FSMs), sequential circuits, and clock division are used in digital design.

## Features

* Designed using Verilog HDL
* FSM-based traffic light control
* Separate clock divider module
* Testbench for simulation
* Simple and modular code

## Project Files

* **traffic_light_controller.v** – Main traffic light controller
* **clock_divider.v** – Generates a slower clock
* **tb.v** – Testbench for simulation
* **output** – Sample simulation results

## Traffic Light Sequence

| Road A | Road B |
| ------ | ------ |
| Green  | Red    |
| Yellow | Red    |
| Red    | Green  |
| Red    | Yellow |

The sequence repeats continuously.

## How to Run

1. Compile all the Verilog files.
2. Run the testbench using a Verilog simulator.
3. Check the simulation output in `output`.

## What I Learned

While working on this project, I learned:

* How to design a finite state machine (FSM)
* How a clock divider works
* How to write and test Verilog modules
* How to verify a design using a testbench

## Author

**Vineesh Khichar**

