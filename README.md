# Parameterized Sequence Generator in Verilog

A configurable sequence generator designed in Verilog that outputs a user-defined binary sequence repeatedly. The design is fully parameterized, allowing different sequence lengths and patterns without modifying the RTL code.

## Features

- Parameterized sequence length
- Configurable sequence pattern
- Continuous sequence generation
- Asynchronous reset
- Synthesizable RTL design
- Simple and scalable architecture
- Testbench included for verification

## Parameters

| Parameter |    Description     | Default Value |
|-----------|--------------------|---------------|
| LENGTH    | Length of sequence |       8       |
| SEQUENCE  | Sequence pattern   |  8'b10110110  |


## Project Structure

```text
Parameterized_Sequence_Generator/
│
├── sequence_generator.v
├── sequence_generator_tb.v
├── README.md
└── .gitignore
```

## Applications

- Digital communication systems
- Control sequence generation
- FPGA prototyping
- ASIC design projects
- Verification environments

## Learning Outcomes

Through this project, I practiced:

- Parameterized Verilog design
- Sequential logic design
- Counter-based control logic
- RTL coding best practices
- Functional verification using testbenches

## Author

**Karan Kumar**  
B.E. Electronics & Communication Engineering  
GEC Surat

GitHub: https://github.com/Engineer-Karan-Mahato/Parameterized_Sequence_Generator

---

⭐ Feel free to fork, use, and improve this project.
