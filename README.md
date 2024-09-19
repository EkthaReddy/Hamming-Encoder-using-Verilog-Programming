## Hamming Encoder using Verilog Programming


This project implements a **Hamming Encoder** that encodes a 4-bit data input into a 7-bit output. It utilizes the **(7, 4) Hamming code**, which adds 3 parity bits to the 4 data bits, allowing for single-bit error detection and correction during transmission. The design is developed in **Verilog** and simulated using **Xilinx Vivado**.

#### Hamming Code Overview

The **(7, 4) Hamming Code** is a method of error detection and correction that encodes 4 bits of data into a 7-bit codeword. The first 4 bits are the original data bits, and the last 3 bits are parity bits used to detect and correct single-bit errors.

In this encoder:
- Data bits are placed in positions 3, 5, 6, and 7 of the output.
- Parity bits are placed in positions 1, 2, and 4 of the output.

#### Parity Bit Calculation

The parity bits are calculated using the following equations:

- **P1** (bit 0 of the output): `P1 = D1 ⊕ D2 ⊕ D4`
  - Checks data bits 1, 2, and 4.
- **P2** (bit 1 of the output): `P2 = D1 ⊕ D3 ⊕ D4`
  - Checks data bits 1, 3, and 4.
- **P4** (bit 3 of the output): `P4 = D2 ⊕ D3 ⊕ D4`
  - Checks data bits 2, 3, and 4.

#### Output Format

- **Data Input (`data_in`)**: 4-bit data (D1, D2, D3, D4).
- **Data Output (`data_out`)**: 7-bit encoded data, where:
  - `data_out[6] = D4`
  - `data_out[5] = D3`
  - `data_out[4] = D2`
  - `data_out[3] = P4`
  - `data_out[2] = D1`
  - `data_out[1] = P2`
  - `data_out[0] = P1`

#### Example Calculation

Let's say the input data is `1011` (D1 = 1, D2 = 0, D3 = 1, D4 = 1).

1. **Calculate P1**: `P1 = D1 ⊕ D2 ⊕ D4 = 1 ⊕ 0 ⊕ 1 = 0`
2. **Calculate P2**: `P2 = D1 ⊕ D3 ⊕ D4 = 1 ⊕ 1 ⊕ 1 = 1`
3. **Calculate P4**: `P4 = D2 ⊕ D3 ⊕ D4 = 0 ⊕ 1 ⊕ 1 = 0`

So the 7-bit encoded output will be:  
**P1 P2 D1 P4 D2 D3 D4** = **0 1 1 0 0 1 1**  
Therefore, the encoded output (`data_out`) is `0110011`.

#### Example of Error Correction

When a single-bit error occurs during transmission, the parity bits can be used to detect and correct it.

For example, if `0110011` is transmitted and received as `0110111`, the parity check will reveal that a bit is flipped in position 5. The receiver can then correct this and recover the original data.

#### Applications

- **Error Detection and Correction**: Hamming codes are widely used in data transmission systems where reliability is critical, such as memory systems, telecommunications, and storage devices.

#### Tools Used:
- **Xilinx Vivado** for design and simulation.
- **Verilog HDL** for coding the Hamming Encoder logic.

This project serves as a basic implementation of the Hamming code in hardware and can be expanded for more complex error-correcting schemes.

---

Let me know if you'd like to modify or add more details!
