# Combinational Logic Circuits — FPGA Implementation
### Digilent Basys 3 | Xilinx Artix-7 | Verilog HDL | Vivado 2023.x

> Designed, simulated, synthesized, and verified combinational logic circuits on a physical FPGA board.  
> Every circuit was tested against its full truth table using slide switches and LEDs on the Basys 3.

---

## 📋 Circuits Implemented

| # | Circuit | Verilog Style | LUTs Used |
|---|---------|--------------|-----------|
| 1 | Full Adder (using Half Adders) | Structural | 2× LUT3 |
| 2 | 2x1 Multiplexer | Behavioral | 1× LUT3 |
| 3 | 4x1 Multiplexer | Gate-level | 1× LUT6 |
| 4 | 8x1 Multiplexer (using 2x1 MUX) | Structural | 7× LUT |
| 5 | 4:2 Priority Encoder | Structural | 2× LUT2 |

---

## 🗂️ Repository Structure

```
FPGA-Combinational-Logic/
│
├── README.md
│
├── Report/
│   └── Combinational_Logic_Vivado_Report.pdf
│
├── src/                         # RTL Design Files
│   ├── half_adder.v
│   ├── fullAdder.v
│   ├── mux.v                    # 2x1 MUX
│   ├── mux4x1.v                 # 4x1 MUX
│   ├── mux_2x1.v                # 2x1 MUX submodule for 8x1
│   ├── mux_8x1.v                # 8x1 MUX
│   ├── encoder4x2.v             # 4:2 Encoder
│   └── or_gate.v                # OR gate submodule
│
├── tb/                          # Testbench Files
│   ├── tb_fullAdder.v
│   ├── mux_tb.v
│   ├── tb_mux4x1.v
│   ├── tb_mux_8x1.v
│   └── tb_encoder4x2.v
│
└── constraints/
    └── constraints.xdc          # Pin assignments for Basys 3
```

---

## 🛠️ Tools & Hardware

| Component | Details |
|-----------|---------|
| FPGA Board | Digilent Basys 3 |
| FPGA Chip | Xilinx Artix-7 XC7A35T-1CPG236C |
| EDA Tool | Xilinx Vivado Design Suite 2023.x |
| HDL | Verilog |
| Simulator | XSim (built into Vivado) |
| I/O Standard | LVCMOS33 (3.3V) |
| Inputs | Slide Switches SW0–SW7 |
| Outputs | LEDs LD0–LD4 |

---

## 🔁 Vivado Design Flow

```
Write RTL (.v)
     ↓
Write Testbench (_tb.v)
     ↓
Behavioral Simulation (XSim) — verify truth table
     ↓
Synthesis — map to LUTs
     ↓
Add Constraints (.xdc) — pin assignments
     ↓
Implementation — Place & Route on Artix-7
     ↓
Generate Bitstream (.bit)
     ↓
Program Basys 3 via USB
     ↓
Hardware Verification — switches & LEDs
```

---

## ✅ Simulation & Hardware Results

All circuits passed 100% of simulation test cases in XSim and were verified on physical hardware.

| Circuit | Sim Test Cases | Result |
|---------|---------------|--------|
| Full Adder | 8/8 | ✅ PASS |
| 2x1 MUX | 4/4 | ✅ PASS |
| 4x1 MUX | 4/4 | ✅ PASS |
| 8x1 MUX | 8/8 | ✅ PASS |
| 4:2 Encoder | 4/4 | ✅ PASS |

---

## ▶️ How to Run in Vivado

1. Clone this repository
```bash
git clone https://github.com/yourusername/FPGA-Combinational-Logic.git
```
2. Open **Xilinx Vivado** → Create New RTL Project
3. Add source files from `/src` and testbench files from `/tb`
4. Set target device: `xc7a35tcpg236-1`
5. Run **Behavioral Simulation** to verify logic
6. Add `/constraints/constraints.xdc` for pin assignments
7. Run **Synthesis → Implementation → Generate Bitstream**
8. Connect Basys 3 via USB → **Program Device**

---

## 👩‍💻 Author

**Kukkala Bhavya Sree**  
Under the guidance of **Ms. Harika**

---

## 📄 License

This project is for academic purposes.
