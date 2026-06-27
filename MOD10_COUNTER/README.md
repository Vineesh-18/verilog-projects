# MOD-10 Counter with 7-Segment Display (Verilog)

## Project Overview

This project is a MOD-10 (decade) counter designed using Verilog HDL. It counts from 0 to 9 and then resets back to 0. The output is also displayed on a 7-segment display using a combinational decoder.

This project helped me understand how sequential counters work along with combinational decoding logic used in display systems.

## Features

* 4-bit MOD-10 counter (0 to 9)
* Automatic reset after reaching 9
* 7-segment display decoder integrated
* Fully simulated using Verilog testbench
* Clear separation of sequential and combinational logic

## Working Principle

* The counter increments on every clock cycle
* When the count reaches 9 (1001), it resets back to 0
* The 4-bit count value is given to a 7-segment decoder
* The decoder converts binary input into segment signals

## Project Files

* **mod_10_counter.v** = Main counter design
* **seven_segment.v** = Converts binary to 7-segment output
* **tb_mod10.v** = Testbench for simulation
* **output.txt** = Simulation results
* **mod_10_display.v**  = Top Module

```text id="mod10readme1"
Time=0   | count=0 | seg=1111110
Time=25  | count=1 | seg=0110000
Time=65  | count=2 | seg=1101101
Time=105 | count=3 | seg=1111001
Time=145 | count=4 | seg=0110011
Time=185 | count=5 | seg=1011011
Time=225 | count=6 | seg=1011111
Time=265 | count=7 | seg=1110000
Time=305 | count=8 | seg=1111111
Time=345 | count=9 | seg=1111011
```

## Key Learning

While working on this project, I learned:

* How MOD counters are designed using sequential logic
* How reset conditions are implemented in counters
* How combinational circuits (decoder) work with sequential outputs
* How 7-segment displays represent binary numbers
* How to verify digital designs using testbenches

## Conclusion

This project helped strengthen my understanding of digital design fundamentals, especially counters and display interfacing using Verilog HDL. It is a good example of combining sequential and combinational logic in a single system.

## Author

Vineesh Khichar
