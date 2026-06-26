# decoder2x4
Verilog implementation and functional verification of 2:4 decoder using a testbench and simulation waveform
## Overview

This project implements a **2-to-4 Decoder** in Verilog HDL along with a testbench for functional verification. The testbench generates a **VCD (Value Change Dump)** file, which can be viewed using **GTKWave**.

**Inputs**
- en : Enable signal
- a[1:0] : 2-bit input

**Output**
- y[3:0] : 4-bit decoded output

When en = 1, one output bit is asserted based on the input value.

When en = 0, all outputs remain LOW.
## Truth Table

| Enable | A1 | A0 | Y3 Y2 Y1 Y0 |
|--------|----|----|-------------|
| 0 | X | X | 0000 |
| 1 | 0 | 0 | 0001 |
| 1 | 0 | 1 | 0010 |
| 1 | 1 | 0 | 0100 |
| 1 | 1 | 1 | 1000 |

---

##Author
- Apoorva B A
- ECE Student
