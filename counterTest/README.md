# 🧪 Counter Simulation — ModelSim

This folder contains a simple digital **counter** implemented in Verilog and tested using a corresponding **testbench** in **ModelSim**.

## 📄 Files

- `counter.vhd` / `counter.v` — The source file implementing the counter logic.
- `counter_tb.vhd` / `counter_tb.v` — The testbench that simulates the counter behavior.
- `README.md` — This file.

## ⚙️ Description

The counter is designed to increment on each clock cycle and optionally reset when a control signal is asserted. The testbench provides stimulus such as clock pulses and resets to verify the functionality.
![image](https://github.com/user-attachments/assets/bb8df466-fc46-4f20-bee2-0fb4aa476960)

### Features:
- Synchronous clock input
- Simple counting logic (up counter and 4 bit)

## ▶️ Testing with ModelSim

### 1. Compile the Design and Testbench
```tcl
vlog counter.vhd
vlog counter_tb.vhd
vsim tb_coutner.v
add wave tb_counter/clk
add wave tb_counter/reset
add wave tb_counter/count
run 300ms

